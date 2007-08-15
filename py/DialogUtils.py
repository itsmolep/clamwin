#-----------------------------------------------------------------------------
# Name:        wxDialogUtils.py
# Product:     ClamWin Free Antivirus
#
# Author:      alch [alch at users dot sourceforge dot net]
#
# Created:     2004/08/05
# Copyright:   Copyright alch (c) 2004
# Licence:
#   This program is free software; you can redistribute it and/or modify
#   it under the terms of the GNU General Public License as published by
#   the Free Software Foundation; either version 2 of the License, or
#   (at your option) any later version.
#
#   This program is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU General Public License for more details.
#
#   You should have received a copy of the GNU General Public License
#   along with this program; if not, write to the Free Software
#   Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.

#-----------------------------------------------------------------------------

import os, sys, tempfile, time, re
import wx
#import DialogStatus, wxDialogPreferences, DialogAbout, wxDialogCheckUpdate
import DialogStatus
import DialogPreferences
import DialogAbout
import DialogCheckUpdate
import LogViewer
#from wxPython.wx import wxBitmap, wxTextCtrl
#from wxPython.lib.dialogs import wxScrolledMessageDialog
import EmailAlert
import Utils
import version
#from I18N import getClamString as _


def UpdateVirDB(parent, config, autoClose = False):
    exit_code = -1
    freshclam_conf = Utils.SaveFreshClamConf(config)
    if not len(freshclam_conf):
        wx.MessageBox(_('Unable to create freshclam configuration file. Please check there is enough space on the disk'),_('Error'),wx.OK|wx.ICON_ERROR)
        return
    updatelog = tempfile.mktemp()
    dbdir = config.Get('ClamAV', 'Database')
    # create database folder before downloading
    if not os.path.exists(dbdir):
        try:
            os.makedirs(dbdir)
        except:
            pass
    cmd = '--stdout --datadir="' + dbdir + '"' + \
          ' --config-file="%s" --log="%s"' % (freshclam_conf, updatelog)
    if config.Get('ClamAV', 'Debug') == '1':
        cmd += ' --debug'
    cmd = '"%s" %s' % (config.Get('ClamAV', 'FreshClam'), cmd)
    if sys.platform.startswith('win') and config.Get('UI', 'TrayNotify') == '1':
        import win32gui
        tray_notify_params = ((_('Virus Database has been updated.'), 0, 
                           win32gui.NIIF_INFO, 10000),
                           (_('An error occurred during Virus Database Update. Please review the update report.'), 1, 
                           win32gui.NIIF_WARNING, 30000)
                           )
    else:
        tray_notify_params = None

    # kleankoder: the following line changed argument 3 to accept updatelog instead of None
    dlg = DialogStatus.create(parent, cmd, updatelog, 'n', 'update', tray_notify_params)
    dlg.SetTitle(_('ClamWin Free Antivirus: Downloading Update...'))
    dlg.SetAutoClose(autoClose)
    try:
        dlg.ShowModal()
        exit_code = dlg.GetExitCode()
        maxsize = int(config.Get('ClamAV', 'MaxLogSize'))*1048576
        logfile = config.Get('Updates', 'DBUpdateLogFile')
        Utils.AppendLogFile(logfile, updatelog, maxsize)
    finally:
        try:
            print updatelog
            os.remove(updatelog)
            
        except Exception, e:
            print _('Unable to remove file %s. Error: %s') % (updatelog, str(e))
        dlg.Destroy()
        try:
            os.remove(freshclam_conf)
        except Exception, e:
            print _("Couldn't remove file %s. Error: %s") % (freshclam_conf, str(e))
                    
        # @@@ Alch 20070723
        # remove .inc folder if .cvd is already there
        # happens sometimes if users presses cancel 
        # and causes 2 copies of the db being loaded
        try:
            dirname = os.path.join(os.path.join(dbdir, 'main.inc'))
            if os.path.isdir(dirname) and \
               os.path.isfile(os.path.join(dbdir, 'main.cvd')):
               for root, dirs, files in os.walk(dirname, topdown=False):
                   for name in files:
                       os.remove(os.path.join(root, name))
               os.rmdir(dirname)
               
            dirname = os.path.join(os.path.join(dbdir, 'daily.inc'))
            if os.path.isdir(dirname) and \
               os.path.isfile(os.path.join(dbdir, 'daily.cvd')):
               for root, dirs, files in os.walk(dirname, topdown=False):
                   for name in files:
        	       os.remove(os.path.join(root, name))
               os.rmdir(dirname)
        except Exception, e:
            print "couldn't remove .inc folder. Error: %s" % str(e)                       

        if exit_code == 1:
            try:
                f = file(os.path.join(tempfile.gettempdir(), 'ClamWin_Upadte_Time'), 'w')
                f.write(str(time.time()))
                f.close()
            except IOError:
                pass
        return exit_code

def Scan(parent, config, path, autoClose = False):
    exit_code = -1
    scanlog = tempfile.mktemp()
    cmd = Utils.GetScanCmd(config, path, scanlog)
    try:
        priority = config.Get('ClamAV', 'Priority')[:1].lower()
    except:
        priority = 'n'

    #check if we have downloaded the virus database and bail out if not
    hasdb = Utils.CheckDatabase(config)
    if not hasdb:
        if config.Get('UI', 'TrayNotify') == '1':
            import win32gui
            tray_notify_params = ((_('Virus Definitions Database Not Found! Please download it now.'), -1, 
                    win32gui.NIIF_ERROR, 30000), None)
            # show balloon
            Utils.ShowBalloon(-1, tray_notify_params)

            #add to logfile
            logfile = config.Get('ClamAV', 'LogFile')
            if logfile != '':
                file(scanlog, 'wt').write(_('\n-----------------------------\n') +
                    _('Scan Started %s\nERROR: Virus Definitions Database Not Found! Please download it now.\n') +
                    _('-----------------------------') % time.asctime())
                maxsize = int(config.Get('ClamAV', 'MaxLogSize'))*1048576
                Utils.AppendLogFile(logfile, scanlog, maxsize)
                os.remove(scanlog)
            return


    if config.Get('UI', 'TrayNotify') == '1':
        import win32gui
        tray_notify_params = ((_('Virus has been detected during scan! Please review the scan report.'), 1, 
                        win32gui.NIIF_ERROR, 30000),
                        (_('An error occurred during virus scan. Please review the scan report.'), 0, 
                        win32gui.NIIF_WARNING, 30000))
    else:
        tray_notify_params = None
    dlg = DialogStatus.create(parent, cmd, scanlog, priority, "scanprogress", tray_notify_params)
    dlg.SetTitle(_("ClamWin Free Antivirus: Scanning..."))
    dlg.SetAutoClose(autoClose, 0)
    try:
        dlg.ShowModal()
        exit_code = dlg.GetExitCode()
        maxsize = int(config.Get('ClamAV', 'MaxLogSize'))*1048576
        logfile = config.Get('ClamAV', 'LogFile')
        Utils.AppendLogFile(logfile, scanlog, maxsize)
        # send email alert
        if config.Get('EmailAlerts', 'Enable') == '1':
            try:
                # unix version returns 256 on virus detection
                # strange but maybe it is cygwin the culprit?
                if exit_code == 1 or exit_code == 256:
                    msg = EmailAlert.ConfigVirusAlertMsg(config, (scanlog,))
                    msg.Send()
            except Exception, e:
                print _('Could not send email alert. Error: %s') % str(e)

    finally:
        if os.path.exists(scanlog):
             try:
                 os.remove(scanlog)
             except IOError, e:
                 print _('Could not delete logfile : %s. Error: %s') % (scanlog, str(e))                 
        dlg.Destroy()
        return exit_code


def Configure(parent, config, switchToSchedule = False):
    dlg = DialogPreferences.create(parent, config, switchToSchedule)
    try:
        dlg.ShowModal()
    finally:
        dlg.Destroy()

def About(parent, config):
    dlg = DialogAbout.AboutDlg(parent, config)
    try:
        dlg.ShowModal()
    finally:
        dlg.Destroy()

def ShowLog(parent, logfile):
        maxlogsize = 524288 #512 KB
        if not len(logfile):
            wx.MessageBox(_('Log files are not properly configured. Please review ClamWin configuration'),_('Error'),wx.OK|wx.ICON_ERROR)        
        try:
            if not os.path.isfile(logfile):
                text = ''
            else:
                if os.stat(logfile).st_size > maxlogsize:
                    # read last 512 kbytes from the file
                    f = file(logfile, 'rt')
                    f.seek(-maxlogsize, 2)
                    text = f.read()
                else:
                    text = file(logfile, 'rt').read()
        except Exception, e:
            wx.MessageBox(_('Unable to read from the log file. Error: %s') % str(e),_('Error'),wx.OK|wx.ICON_ERROR)

        dlg = LogViewer.create(parent, text, True)
        try:
            # change window title to include the file we are viewing
            dlg.SetTitle(dlg.GetTitle() + ' - ' + os.path.split(logfile)[1])
            dlg.ShowModal()
        finally:
            dlg.Destroy()

def GoToInternetUrl(url):
    try:
        import webbrowser
    except ImportError:
        wx.MessageBox(_('Please point your browser at: %s') % url)
    else:
        webbrowser.open(url)

def CheckUpdate(parent, config):
    if not config.Get('Updates', 'CheckVersion'):
        return
    # if we have a window with such name don't show a second one
    try:
        import win32gui
        hwnd = win32gui.FindWindow('#32770', 'ClamWin Update')
        if hwnd:
            return
    except:
        pass

    try:
        ver, url, changelog = Utils.GetOnlineVersion(config)
        englishUrl = 'http://www.clamwin.com/content/view/18/46/'
        localUrl = _('http://www.clamwin.com/content/view/18/46/')
        if url == englishUrl:
            # AB: check that the url is still current, if this changes
            # we will need to come up with a better plan
            url = localUrl
            
        if ver <= version.clamwin_version:
            return
    except Exception, e:
        if config.Get('UI', 'TrayNotify') == '1':
            import win32gui
            tray_notify_params = ((_('Unable to get online version. Most likely it\'s a temporary connectivity error and you don\'t have to do anything.\nIf you see this error often then allow clamwin.exe in your firewall and check proxy settings.\n(%s)') % str(e) , 0, 
                        win32gui.NIIF_WARNING, 30000), None)
            Utils.ShowBalloon(0, tray_notify_params, None, True)
            return

    try:
        dlg = wxDialogCheckUpdate.create(parent, config, ver, url, changelog)
        dlg.ShowModal()
    finally:
        dlg.Destroy()


if __name__ == '__main__':
    import Config
    config_file = os.path.join(Utils.GetProfileDir(True),'ClamWin.conf')
    config = Config.Settings(config_file)
    b = config.Read()
    app = wx.App()
    #wxScan(None, config, 'c:/1Test')
    CheckUpdate(None, config)
    app.MainLoop()