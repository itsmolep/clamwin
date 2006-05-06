; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
AppName=ClamWin Free Antivirus
AppVerName=ClamWin Free Antivirus 0.88.2.3
AppPublisher=alch
AppPublisherURL=http://clamwin.sourceforge.net/
AppSupportURL=http://clamwin.sourceforge.net/
AppUpdatesURL=http://clamwin.sourceforge.net/
DefaultDirName={code:BaseDir}\ClamWin
DefaultGroupName=ClamWin Antivirus
LicenseFile=SetupFiles\License.rtf
AllowNoIcons=true
MinVersion=4.1.1998,5.0.2195

ShowLanguageDialog=no
LanguageDetectionMethod=none
OutputDir=Output
Compression=lzma/ultra
InternalCompressLevel=max

SolidCompression=true
WizardImageFile=Setupfiles\WizModernImage.bmp
WizardSmallImageFile=Setupfiles\WizModernSmallImage.bmp
[Files]
; NOTE: Don't use "Flags: ignoreversion" on any shared system files
;Source: cygwin\cygwin1.dll; DestDir: {app}\bin; Components: Cygwin; Flags: restartreplace uninsrestartdelete replacesameversion
;Source: cygwin\cygbz2-1.dll; DestDir: {app}\bin; Components: Cygwin; Flags: restartreplace uninsrestartdelete replacesameversion
;Source: cygwin\cyggmp-3.dll; DestDir: {app}\bin; Components: Cygwin; Flags: restartreplace uninsrestartdelete replacesameversion
;Source: cygwin\cygminires.dll; DestDir: {app}\bin; Components: Cygwin; Flags: restartreplace uninsrestartdelete replacesameversion
;Source: cygwin\cygz.dll; DestDir: {app}\bin; Components: Cygwin; Flags: restartreplace uninsrestartdelete replacesameversion
;Source: cygwin\cygcrypto-0.9.7.dll; DestDir: {app}\bin; Components: Cygwin; Flags: restartreplace uninsrestartdelete replacesameversion replacesameversion
;Source: cygwin\cygssl-0.9.7.dll; DestDir: {app}\bin; Components: Cygwin; Flags: restartreplace uninsrestartdelete replacesameversion replacesameversion
;Source: cygwin\cygcurl-2.dll; DestDir: {app}\bin; Components: Cygwin; Flags: restartreplace uninsrestartdelete replacesameversion replacesameversion
Source: py2exe\dist\bin\python23.dll; DestDir: {app}\bin; Components: ClamWin; Flags: restartreplace uninsrestartdelete
Source: py2exe\dist\bin\ClamTray.exe; DestDir: {app}\bin; Components: ClamWin; Flags: restartreplace uninsrestartdelete replacesameversion
Source: py2exe\dist\bin\ClamWin.exe; DestDir: {app}\bin; Components: ClamWin; Flags: restartreplace uninsrestartdelete replacesameversion
Source: ..\doc\HTML\clam.chm; DestDir: {app}\bin; Components: ClamWin; Flags: ignoreversion; DestName: manual.chm
Source: ..\doc\l10n\RussianManual.chm; DestDir: {app}\bin; Components: InternationalHelp\Russian; Flags: ignoreversion
;Source: ..\doc\l10n\ItalianManual.chm; DestDir: {app}\bin; Components: InternationalHelp\Italian; Flags: replacesameversion
Source: ..\doc\manual.pdf; DestDir: {app}\bin; Components: ClamWin; Flags: ignoreversion
Source: ..\doc\l10n\FrenchManual.pdf; DestDir: {app}\bin; Components: InternationalHelp\French; Flags: ignoreversion
Source: py2exe\dist\bin\img\Clam.png; DestDir: {app}\bin\img; Components: ClamWin; Flags: ignoreversion
Source: py2exe\dist\bin\img\ClamAV.png; DestDir: {app}\bin\img; Components: ClamWin; Flags: ignoreversion
Source: py2exe\dist\bin\img\Control.png; DestDir: {app}\bin\img; Components: ClamWin; Flags: ignoreversion
Source: py2exe\dist\bin\img\Scan.png; DestDir: {app}\bin\img; Components: ClamWin; Flags: ignoreversion
Source: py2exe\dist\bin\img\FrameIcon.ico; DestDir: {app}\bin\img; Components: ClamWin; Flags: ignoreversion
Source: py2exe\dist\bin\img\TrayIcon.ico; DestDir: {app}\bin\img; Components: ClamWin; Flags: ignoreversion
Source: py2exe\dist\bin\img\Title.png; DestDir: {app}\bin\img; Components: ClamWin; Flags: ignoreversion
Source: py2exe\dist\bin\img\FD-logo.png; DestDir: {app}\bin\img; Components: ClamWin; Flags: ignoreversion
Source: py2exe\dist\bin\img\PythonPowered.gif; DestDir: {app}\bin\img; Components: ClamWin; Flags: ignoreversion
Source: py2exe\dist\bin\img\World.png; DestDir: {app}\bin\img; Components: ClamWin; Flags: ignoreversion
Source: py2exe\dist\bin\img\Support.png; DestDir: {app}\bin\img; Components: ClamWin; Flags: ignoreversion
Source: py2exe\dist\bin\img\ListScan.png; DestDir: {app}\bin\img; Components: ClamWin; Flags: ignoreversion
Source: py2exe\dist\bin\img\Splash.bmp; DestDir: {app}\bin\img; Components: ClamWin; Flags: ignoreversion
Source: ..\..\clamav-release\contrib\msvc\Release\clamscan.exe; DestDir: {app}\bin; Components: ClamAV; Flags: restartreplace uninsrestartdelete replacesameversion
Source: ..\..\clamav-release\contrib\msvc\Release\freshclam.exe; DestDir: {app}\bin; Components: ClamAV; Flags: restartreplace uninsrestartdelete replacesameversion
Source: ..\..\clamav-release\contrib\msvc\Release\sigtool.exe; DestDir: {app}\bin; Components: ClamAV; Flags: restartreplace uninsrestartdelete replacesameversion
Source: ..\..\clamav-release\contrib\msvc\Release\libclamav.dll; DestDir: {app}\bin; Components: ClamAV; Flags: restartreplace uninsrestartdelete replacesameversion

; on xp and greater VC80 CRT needs to be installed in Microsoft.VC80.CRT
Source: Microsoft.VC80.CRT\Microsoft.VC80.CRT.manifest; DestDir: {app}\bin\Microsoft.VC80.CRT; Components: ClamAV; Check: IsXPOrLater
Source: Microsoft.VC80.CRT\msvcm80.dll; DestDir: {app}\bin\Microsoft.VC80.CRT; Components: ClamAV; Flags: restartreplace uninsrestartdelete; Check: IsXPOrLater
Source: Microsoft.VC80.CRT\msvcr80.dll; DestDir: {app}\bin\Microsoft.VC80.CRT; Components: ClamAV; Flags: restartreplace uninsrestartdelete; Check: IsXPOrLater
Source: Microsoft.VC80.CRT\msvcp80.dll; DestDir: {app}\bin\Microsoft.VC80.CRT; Components: ClamAV; Flags: restartreplace uninsrestartdelete; Check: IsXPOrLater
; on 2000 and 98 VC80 CRT needs to be installed in the same dir; no manifest
Source: Microsoft.VC80.CRT\msvcm80.dll; DestDir: {app}\bin; Components: ClamAV; Flags: restartreplace uninsrestartdelete; Check: NotIsXPOrLater
Source: Microsoft.VC80.CRT\msvcr80.dll; DestDir: {app}\bin; Components: ClamAV; Flags: restartreplace uninsrestartdelete; Check: NotIsXPOrLater
Source: Microsoft.VC80.CRT\msvcp80.dll; DestDir: {app}\bin; Components: ClamAV; Flags: restartreplace uninsrestartdelete; Check: NotIsXPOrLater


;Source: ..\clamav-stable\sigtool\sigtool.exe; DestDir: {app}\bin; Components: ClamAV; Flags: restartreplace uninsrestartdelete replacesameversion
; Copy Unicode build in NT and ANSI in 9x
Source: ..\cpp\Release\ExpShell.dll; DestDir: {app}\bin; Components: ExplorerShell; Flags: restartreplace uninsrestartdelete; Check: IsWin9x
Source: ..\cpp\Release_Unicode\ExpShell.dll; DestDir: {app}\bin; Components: ExplorerShell; Flags: restartreplace uninsrestartdelete; Check: UsingWinNT

Source: py2exe\dist\bin\WClose.exe; DestDir: {app}\bin; Components: ClamWin; Flags: restartreplace uninsrestartdelete replacesameversion
Source: py2exe\dist\lib\w9xpopen.exe; DestDir: {app}\bin; Components: ClamWin; Flags: restartreplace uninsrestartdelete replacesameversion
Source: py2exe\dist\bin\OlAddin.exe; DestDir: {app}\bin; Components: OutlookAddin; Flags: restartreplace uninsrestartdelete replacesameversion
Source: {%TEMP|{localappdata}}\clamwin-src.zip; DestDir: {app}\src; Components: Sources; Flags: external ignoreversion
Source: {%TEMP|{localappdata}}\clamav-src.tar.gz; DestDir: {app}\src; Components: Sources; Flags: external ignoreversion
;Source: {%TEMP|{localappdata}}\cygwin-src.tar.bz2; DestDir: {app}\src; Components: Sources; Flags: external replacesameversion

Source: py2exe\dist\lib\_socket.pyd; DestDir: {app}\lib; Components: ClamWin; Flags: restartreplace uninsrestartdelete
Source: py2exe\dist\lib\_sre.pyd; DestDir: {app}\lib; Components: ClamWin; Flags: restartreplace uninsrestartdelete
Source: py2exe\dist\lib\_ssl.pyd; DestDir: {app}\lib; Components: ClamWin; Flags: restartreplace uninsrestartdelete
Source: py2exe\dist\lib\_bsddb.pyd; DestDir: {app}\lib; Components: ClamWin; Flags: restartreplace uninsrestartdelete
Source: py2exe\dist\lib\_winreg.pyd; DestDir: {app}\lib; Components: ClamWin; Flags: restartreplace uninsrestartdelete
Source: py2exe\dist\lib\clamwin.zip; DestDir: {app}\lib; Components: ClamWin; Flags: restartreplace uninsrestartdelete
Source: py2exe\dist\lib\datetime.pyd; DestDir: {app}\lib; Components: ClamWin; Flags: restartreplace uninsrestartdelete
Source: py2exe\dist\lib\mxDateTime.pyd; DestDir: {app}\lib; Components: ClamWin; Flags: restartreplace uninsrestartdelete
Source: py2exe\dist\lib\exchange.pyd; DestDir: {app}\lib; Components: ClamWin; Flags: restartreplace uninsrestartdelete
Source: py2exe\dist\lib\exchdapi.pyd; DestDir: {app}\lib; Components: ClamWin; Flags: restartreplace uninsrestartdelete
Source: py2exe\dist\lib\shell.pyd; DestDir: {app}\lib; Components: ClamWin; Flags: restartreplace uninsrestartdelete
Source: py2exe\dist\lib\htmlc.pyd; DestDir: {app}\lib; Components: ClamWin; Flags: restartreplace uninsrestartdelete
Source: py2exe\dist\lib\gizmosc.pyd; DestDir: {app}\lib; Components: ClamWin; Flags: restartreplace uninsrestartdelete
Source: py2exe\dist\lib\mapi.pyd; DestDir: {app}\lib; Components: ClamWin; Flags: restartreplace uninsrestartdelete
Source: py2exe\dist\lib\pythoncom23.dll; DestDir: {app}\lib; Components: ClamWin; Flags: restartreplace uninsrestartdelete
Source: py2exe\dist\lib\pywintypes23.dll; DestDir: {app}\lib; Components: ClamWin; Flags: restartreplace uninsrestartdelete
Source: py2exe\dist\lib\unicodedata.pyd; DestDir: {app}\lib; Components: ClamWin; Flags: restartreplace uninsrestartdelete
Source: py2exe\dist\lib\w9xpopen.exe; DestDir: {app}\lib; Components: ClamWin; Flags: restartreplace uninsrestartdelete
Source: py2exe\dist\lib\win32api.pyd; DestDir: {app}\lib; Components: ClamWin; Flags: restartreplace uninsrestartdelete
Source: py2exe\dist\lib\win32clipboard.pyd; DestDir: {app}\lib; Components: ClamWin; Flags: restartreplace uninsrestartdelete
Source: py2exe\dist\lib\win32event.pyd; DestDir: {app}\lib; Components: ClamWin; Flags: restartreplace uninsrestartdelete
Source: py2exe\dist\lib\win32file.pyd; DestDir: {app}\lib; Components: ClamWin; Flags: restartreplace uninsrestartdelete
Source: py2exe\dist\lib\win32gui.pyd; DestDir: {app}\lib; Components: ClamWin; Flags: restartreplace uninsrestartdelete
Source: py2exe\dist\lib\win32pipe.pyd; DestDir: {app}\lib; Components: ClamWin; Flags: restartreplace uninsrestartdelete
Source: py2exe\dist\lib\win32process.pyd; DestDir: {app}\lib; Components: ClamWin; Flags: restartreplace uninsrestartdelete
Source: py2exe\dist\lib\win32trace.pyd; DestDir: {app}\lib; Components: ClamWin; Flags: restartreplace uninsrestartdelete
Source: py2exe\dist\lib\win32security.pyd; DestDir: {app}\lib; Components: ClamWin; Flags: restartreplace uninsrestartdelete
Source: py2exe\dist\lib\wxc.pyd; DestDir: {app}\lib; Components: ClamWin; Flags: restartreplace uninsrestartdelete
Source: py2exe\dist\lib\wxmsw24h.dll; DestDir: {app}\lib; Components: ClamWin; Flags: restartreplace uninsrestartdelete
Source: py2exe\dist\lib\zlib.pyd; DestDir: {app}\lib; Components: ClamWin; Flags: restartreplace uninsrestartdelete
Source: py2exe\dist\lib\BalloonTip.pyd; DestDir: {app}\lib; Components: ClamWin; Check: IsWin9x; Flags: restartreplace uninsrestartdelete
[Icons]
Name: {group}\Virus Scanner; Filename: {app}\bin\ClamWin.exe; WorkingDir: {app}\bin; Comment: ClamWin Antivirus; Components: ClamWin
Name: {code:DesktopDir}\ClamWin Antivirus; Filename: {app}\bin\ClamWin.exe; WorkingDir: {app}\bin; Comment: ClamWin Antivirus; Components: ClamWin; Tasks: desktopicon
Name: {group}\Help\Printable Manual; Filename: {app}\bin\manual.pdf; Components: ; WorkingDir: {app}\bin
Name: {group}\Help\Online Help; Filename: {app}\bin\manual.chm; WorkingDir: {app}\bin; Comment: ClamWin Antivirus; Components: ClamWin
Name: {group}\Help\International\Russian Help; Filename: {app}\bin\RussianManual.chm; WorkingDir: {app}\bin; Comment: ClamWin Antivirus; Components: InternationalHelp\Russian
Name: {group}\Help\International\French Help; Filename: {app}\bin\FrenchManual.pdf; WorkingDir: {app}\bin; Comment: ClamWin Antivirus; Components: InternationalHelp\French
;Name: {group}\Help\International\Italian Help; Filename: {app}\bin\ItalianManual.chm; WorkingDir: {app}\bin; Comment: ClamWin Antivirus; Components: InternationalHelp\Italian

[Run]
; NOTE: The following entry contains an English phrase ("Launch"). You are free to translate it into another language if required.
Filename: {app}\bin\ClamWin.exe; Parameters: --mode=update --close; WorkingDir: {app}\bin; StatusMsg: Downloading Virus Database Files.; Components: ClamWin; Tasks: DownloadDB
Filename: {app}\bin\ClamTray.exe; WorkingDir: {app}\bin; Flags: nowait; Components: ClamWin
[Dirs]
; create clamwin folders in common profiles dir if all users is selected and set permissions so that other users can modify
Name: {code:CommonProfileDir}\.clamwin\db; Components: ClamAV; Permissions: authusers-full; Check: IsAllUsers
Name: {code:CommonProfileDir}\.clamwin\log; Components: ClamAV; Permissions: authusers-full; Check: IsAllUsers
Name: {code:CommonProfileDir}\.clamwin\quarantine; Components: ClamAV; Permissions: authusers-full; Check: IsAllUsers
;for non-admin user create tese folders in user's profile dir, don't modify security
Name: {code:CommonProfileDir}\.clamwin\db; Components: ClamAV; Check: NotIsAllUsers
Name: {code:CommonProfileDir}\.clamwin\log; Components: ClamAV; Check: NotIsAllUsers
Name: {code:CommonProfileDir}\.clamwin\quarantine; Components: ClamAV; Check: NotIsAllUsers
Name: {app}\bin; Components: ExplorerShell ClamWin
Name: {app}\lib; Components: ClamWin
Name: {app}\bin\img; Components: ClamWin

Name: {app}\src; Components: Sources
[_ISTool]
OutputExeFilename=L:\Projects\ClamWin\Setup\Output\setup.exe
[Components]
;Name: Cygwin; Description: Cygwin Files; Flags: fixed; Types: full custom typical
Name: ClamAV; Description: ClamAV Files; Flags: fixed; Types: full custom typical
Name: ClamWin; Description: ClamWin Files; Flags: fixed; Types: full custom typical
Name: ExplorerShell; Description: Integration with Windows Explorer; Types: full custom typical
Name: OutlookAddin; Description: Integration with Microsoft Outlook; Types: full custom typical; Check: IsOutlookInstalled
Name: InternationalHelp; Description: International Help Files; Types: full
Name: InternationalHelp\Russian; Description: Russian Help Files; Types: full
Name: InternationalHelp\French; Description: French Help Files; Types: full
;Name: InternationalHelp\Italian; Description: Italian Help Files; Types: full
Name: Sources; Description: Download Source Code; ExtraDiskSpaceRequired: 9437184; Types: full
[INI]
Filename: {app}\bin\ClamWin.conf; Section: ClamAV; Key: clamscan; String: {app}\bin\clamscan.exe; Check: IsIniValueEmpty(ExpandConstant('ClamAV*clamscan*{app}\bin\ClamWin.conf'))
Filename: {app}\bin\ClamWin.conf; Section: ClamAV; Key: freshclam; String: {app}\bin\freshclam.exe; Check: IsIniValueEmpty(ExpandConstant('ClamAV*freshclam*{app}\bin\ClamWin.conf'))
Filename: {app}\bin\ClamWin.conf; Section: ClamAV; Key: database; String: {code:CommonProfileDir}\.clamwin\db; Check: IsIniValueEmpty(ExpandConstant('ClamAV*database*{app}\bin\ClamWin.conf'))
Filename: {app}\bin\ClamWin.conf; Section: ClamAV; Key: quarantinedir; String: {code:CommonProfileDir}\.clamwin\quarantine; Check: IsIniValueEmpty(ExpandConstant('ClamAV*quarantinedir*{app}\bin\ClamWin.conf'))
Filename: {app}\bin\ClamWin.conf; Section: ClamAV; Key: logfile; String: {code:CommonProfileDir}\.clamwin\log\ClamScanLog.txt; Check: IsIniValueEmpty(ExpandConstant('ClamAV*logfile*{app}\bin\ClamWin.conf'))
Filename: {app}\bin\ClamWin.conf; Section: Updates; Key: dbupdatelogfile; String: {code:CommonProfileDir}\.clamwin\log\ClamUpdateLog.txt; Check: IsIniValueEmpty(ExpandConstant('Updates*dbupdatelogfile*{app}\bin\ClamWin.conf'))
Filename: {app}\bin\ClamWin.conf; Section: Updates; Key: time; String: {code:CurTime}; Check: IsIniValueEmpty(ExpandConstant('Updates*time*{app}\bin\ClamWin.conf'))

[_ISToolDownload]
Name: Sources_ClamWin; Description: ClamWin Source Code; GroupDescription: Source Code; Flags: unchecked; Source: http://osdn.dl.sourceforge.net/sourceforge/clamwin/clamwin-0.88.2.3-src.zip; DestDir: {%TEMP|{localappdata}}; DestName: clamwin-src.zip; Components: Sources
Name: Sources_ClamAV; Description: ClamAV Source Code; GroupDescription: Source Code; Flags: unchecked; Source: http://osdn.dl.sourceforge.net/sourceforge/clamav/clamav-0.88.2.tar.gz; DestDir: {%TEMP|{localappdata}}; DestName: clamav-src.tar.gz; Components: Sources
;Name: Sources_Cygwin; Description: Cygwin Source Code; GroupDescription: Source Codes; Flags: unchecked; Source: http://mirrors.kernel.org/sources.redhat.com/cygwin/release/cygwin/cygwin-1.5.18-1-src.tar.bz2; DestDir: {%TEMP|{localappdata}}; DestName: cygwin-src.tar.bz2; Components: Sources

[Types]
Name: typical; Description: Typical Installation
Name: custom; Description: Custom Installation; Flags: iscustom
Name: full; Description: Full Installation
[UninstallDelete]
Name: {tmp}\ClamWin_Scheduler_Info; Type: files; Components: ClamWin
Name: {tmp}\ClamWin_Upadte_Time; Type: files; Components: ClamWin
Name: {app}\bin\ClamWin.conf; Type: files
Name: {userappdata}\.clamwin; Type: filesandordirs
Name: {code:CommonProfileDir}\.clamwin; Type: filesandordirs

[Registry]
; write to HKLM and HKCR when user is admin
; and to HKCU when not

; ClamWin entries
Root: HKLM; Subkey: Software\Microsoft\Windows\CurrentVersion\Run; ValueType: string; ValueName: ClamWin; ValueData: """{app}\bin\ClamTray.exe"" --logon"; Flags: uninsdeletevalue; Components: ClamWin; Check: IsAllUsers
Root: HKLM; Subkey: Software\ClamWin; ValueType: string; ValueName: Path; ValueData: {app}\bin; Flags: uninsdeletekey deletevalue; Components: ClamWin; Check: IsAllUsers
Root: HKLM; Subkey: Software\ClamWin; ValueType: dword; ValueName: Version; ValueData: 882; Flags: uninsdeletekey deletevalue; Components: ClamWin; Check: IsAllUsers
Root: HKCU; Subkey: Software\Microsoft\Windows\CurrentVersion\Run; ValueType: string; ValueName: ClamWin; ValueData: """{app}\bin\ClamTray.exe"" --logon"; Flags: uninsdeletevalue; Components: ClamWin; Check: NotIsAllUsers
Root: HKCU; Subkey: Software\ClamWin; ValueType: string; ValueName: Path; ValueData: {app}\bin; Flags: uninsdeletekey deletevalue; Components: ClamWin; Check: NotIsAllUsers
Root: HKCU; Subkey: Software\ClamWin; ValueType: dword; ValueName: Version; ValueData: 374; Flags: uninsdeletekey deletevalue; Components: ClamWin; Check: NotIsAllUsers

; ExplorerShell entries
Root: HKCR; Subkey: CLSID\{{65713842-C410-4f44-8383-BFE01A398C90}\InProcServer32; ValueType: string; ValueData: {app}\bin\ExpShell.dll; Flags: uninsdeletekey; Components: ExplorerShell; Check: IsAllUsers
Root: HKCR; Subkey: CLSID\{{65713842-C410-4f44-8383-BFE01A398C90}\InProcServer32; ValueType: string; ValueData: Apartment; Flags: uninsdeletekey; ValueName: ThreadingModel; Components: ExplorerShell; Check: IsAllUsers
Root: HKCR; Subkey: *\shellex\ContextMenuHandlers\ClamWin; ValueType: string; ValueData: {{65713842-C410-4f44-8383-BFE01A398C90}; Flags: uninsdeletekey; Components: ExplorerShell; Check: IsAllUsers
Root: HKCR; Subkey: Folder\shellex\ContextMenuHandlers\ClamWin; ValueType: string; ValueData: {{65713842-C410-4f44-8383-BFE01A398C90}; Flags: uninsdeletekey; Components: ExplorerShell; Check: IsAllUsers
Root: HKCU; Subkey: Software\Classes\CLSID\{{65713842-C410-4f44-8383-BFE01A398C90}\InProcServer32; ValueType: string; ValueData: {app}\bin\ExpShell.dll; Flags: uninsdeletekey; Components: ExplorerShell; Check: NotIsAllUsers
Root: HKCU; Subkey: Software\Classes\CLSID\{{65713842-C410-4f44-8383-BFE01A398C90}\InProcServer32; ValueType: string; ValueData: Apartment; Flags: uninsdeletekey; ValueName: ThreadingModel; Components: ExplorerShell; Check: NotIsAllUsers
Root: HKCU; Subkey: Software\Classes\*\shellex\ContextMenuHandlers\ClamWin; ValueType: string; ValueData: {{65713842-C410-4f44-8383-BFE01A398C90}; Flags: uninsdeletekey; Components: ExplorerShell; Check: NotIsAllUsers
Root: HKCU; Subkey: Software\Classes\Folder\shellex\ContextMenuHandlers\ClamWin; ValueType: string; ValueData: {{65713842-C410-4f44-8383-BFE01A398C90}; Flags: uninsdeletekey; Components: ExplorerShell; Check: NotIsAllUsers

; Cygwin entries
;Root: HKLM; Subkey: Software\Cygnus Solutions; Flags: uninsdeletekeyifempty; Check: NoCygWinAllUsers
;Root: HKLM; Subkey: Software\Cygnus Solutions\Cygwin; Flags: uninsdeletekeyifempty; Check: NoCygWinAllUsers
;Root: HKLM; Subkey: Software\Cygnus Solutions\Cygwin\Program Options; Flags: uninsdeletekeyifempty; Check: NoCygWinAllUsers
;Root: HKLM; Subkey: Software\Cygnus Solutions\Cygwin\mounts v2; Flags: uninsdeletekeyifempty; Check: NoCygWinAllUsers
;Root: HKLM; Subkey: Software\Cygnus Solutions\Cygwin\mounts v2\/tmp; ValueType: string; ValueName: native; ValueData: {code:TempDir}; Flags: uninsdeletekeyifempty uninsdeletevalue; Check: NoCygWinAllUsers
;Root: HKLM; Subkey: Software\Cygnus Solutions\Cygwin\mounts v2\/tmp; ValueType: dword; ValueName: flags; ValueData: 10; Flags: uninsdeletekeyifempty uninsdeletevalue; Check: NoCygWinAllUsers
;Root: HKCU; Subkey: Software\Cygnus Solutions; Flags: uninsdeletekeyifempty; Check: NoCygWinNotAllUsers
;Root: HKCU; Subkey: Software\Cygnus Solutions\Cygwin; Flags: uninsdeletekeyifempty; Check: NoCygWinNotAllUsers
;Root: HKCU; Subkey: Software\Cygnus Solutions\Cygwin\Program Options; Flags: uninsdeletekeyifempty; Check: NoCygWinNotAllUsers
;Root: HKCU; Subkey: Software\Cygnus Solutions\Cygwin\mounts v2; Flags: uninsdeletekeyifempty; Check: NoCygWinNotAllUsers
;Root: HKCU; Subkey: Software\Cygnus Solutions\Cygwin\mounts v2\/tmp; ValueType: string; ValueName: native; ValueData: {code:TempDir}; Flags: uninsdeletekeyifempty uninsdeletevalue; Check: NoCygWinNotAllUsers
;Root: HKCU; Subkey: Software\Cygnus Solutions\Cygwin\mounts v2\/tmp; ValueType: dword; ValueName: flags; ValueData: 10; Flags: uninsdeletekeyifempty uninsdeletevalue; Check: NoCygWinNotAllUsers
;Root: HKLM; Subkey: Software\Cygnus Solutions\Cygwin\Program Options; Flags: uninsdeletekeyifempty; Check: NoCygWinAllUsers

; OutlookAddin entries for all users
;delete COM InprocServer32 key if present (we moved to EXE COM server)
Root: HKCR; Subkey: CLSID\{{E77FA584-1433-4af3-800D-AEC49BCCCB11}\InprocServer32; Components: OutlookAddin; Check: IsAllUsers; Flags: deletekey noerror dontcreatekey
;install new EXE COM server
Root: HKCR; Subkey: AppID\{{E77FA584-1433-4af3-800D-AEC49BCCCB11}; ValueType: string; ValueData: ClamWin.OutlookAddin; Flags: uninsdeletekey; Components: OutlookAddin; Check: IsAllUsers
Root: HKCR; Subkey: CLSID\{{E77FA584-1433-4af3-800D-AEC49BCCCB11}; ValueType: string; ValueData: ClamWin.OutlookAddin; Flags: uninsdeletekey; Components: OutlookAddin; Check: IsAllUsers
Root: HKCR; Subkey: CLSID\{{E77FA584-1433-4af3-800D-AEC49BCCCB11}\LocalServer32; ValueType: string; ValueData: {app}\bin\OlAddin.exe /Automate; Flags: uninsdeletekey; Components: OutlookAddin; Check: IsAllUsers
Root: HKCR; Subkey: CLSID\{{E77FA584-1433-4af3-800D-AEC49BCCCB11}\PythonCOM; ValueType: string; ValueData: OlAddin.OutlookAddin; Flags: uninsdeletekey; Components: OutlookAddin; Check: IsAllUsers
Root: HKCR; Subkey: CLSID\{{E77FA584-1433-4af3-800D-AEC49BCCCB11}\PythonCOMPolicy; ValueType: string; ValueData: win32com.server.policy.EventHandlerPolicy; Flags: uninsdeletekey; Components: OutlookAddin; Check: IsAllUsers
Root: HKCR; Subkey: CLSID\{{E77FA584-1433-4af3-800D-AEC49BCCCB11}\PythonCOMPath; ValueType: string; ValueData: {app}\bin; Flags: uninsdeletekey; Components: OutlookAddin; Check: IsAllUsers
Root: HKCR; Subkey: CLSID\{{E77FA584-1433-4af3-800D-AEC49BCCCB11}\Implemented Categories\{{B3EF80D0-68E2-11D0-A689-00C04FD658FF}; Flags: uninsdeletekey; Components: OutlookAddin; Check: IsAllUsers
Root: HKCR; Subkey: CLSID\{{E77FA584-1433-4af3-800D-AEC49BCCCB11}\Debugging; ValueType: string; ValueData: 0; Flags: uninsdeletekey; Components: OutlookAddin; Check: IsAllUsers
Root: HKCR; Subkey: CLSID\{{E77FA584-1433-4af3-800D-AEC49BCCCB11}\ProgID; ValueType: string; ValueData: ClamWin.OutlookAddin; Flags: uninsdeletekey; Components: OutlookAddin; Check: IsAllUsers
Root: HKCR; Subkey: ClamWin.OutlookAddin; ValueType: string; ValueData: ClamWin.OutlookAddin; Flags: uninsdeletekey; Components: OutlookAddin; Check: IsAllUsers
Root: HKCR; Subkey: ClamWin.OutlookAddin\CLSID; ValueType: string; ValueData: {{E77FA584-1433-4af3-800D-AEC49BCCCB11}; Flags: uninsdeletekey; Components: OutlookAddin; Check: IsAllUsers

Root: HKLM; Subkey: Software\Microsoft\Office\Outlook\Addins\ClamWin.OutlookAddin; ValueType: dword; ValueName: CommandLineSafe; ValueData: 0; Flags: uninsdeletekey; Components: OutlookAddin; Check: IsAllUsers
Root: HKLM; Subkey: Software\Microsoft\Office\Outlook\Addins\ClamWin.OutlookAddin; ValueType: dword; ValueName: LoadBehavior; ValueData: 3; Flags: uninsdeletekey; Components: OutlookAddin; Check: IsAllUsers
Root: HKLM; Subkey: Software\Microsoft\Office\Outlook\Addins\ClamWin.OutlookAddin; ValueType: string; ValueName: Description; ValueData: ClamWin Antivirus; Flags: uninsdeletekey; Components: OutlookAddin; Check: IsAllUsers
Root: HKLM; Subkey: Software\Microsoft\Office\Outlook\Addins\ClamWin.OutlookAddin; ValueType: string; ValueName: FriendlyName; ValueData: ClamWin Antivirus; Flags: uninsdeletekey; Components: OutlookAddin; Check: IsAllUsers

; OutlookAddin entries for current user
;delete COM InprocServer32 key if present (we moved to EXE COM server)
Root: HKCU; Subkey: Software\Classes\CLSID\{{E77FA584-1433-4af3-800D-AEC49BCCCB11}\InprocServer32; Components: OutlookAddin; Check: NotIsAllUsers; Flags: deletekey dontcreatekey noerror
;install new COM EXE server
Root: HKCU; Subkey: Software\Classes\AppID\{{E77FA584-1433-4af3-800D-AEC49BCCCB11}; ValueType: string; ValueData: ClamWin.OutlookAddin; Flags: uninsdeletekey; Components: OutlookAddin; Check: NotIsAllUsers
Root: HKCU; Subkey: Software\Classes\CLSID\{{E77FA584-1433-4af3-800D-AEC49BCCCB11}; ValueType: string; ValueData: ClamWin.OutlookAddin; Flags: uninsdeletekey; Components: OutlookAddin; Check: NotIsAllUsers
Root: HKCU; Subkey: Software\Classes\CLSID\{{E77FA584-1433-4af3-800D-AEC49BCCCB11}\LocalServer32; ValueType: string; ValueData: {app}\bin\OlAddin.exe /Automate; Flags: uninsdeletekey; Components: OutlookAddin; Check: NotIsAllUsers
Root: HKCU; Subkey: Software\Classes\CLSID\{{E77FA584-1433-4af3-800D-AEC49BCCCB11}\PythonCOM; ValueType: string; ValueData: OlAddin.OutlookAddin; Flags: uninsdeletekey; Components: OutlookAddin; Check: NotIsAllUsers
Root: HKCU; Subkey: Software\Classes\CLSID\{{E77FA584-1433-4af3-800D-AEC49BCCCB11}\PythonCOMPolicy; ValueType: string; ValueData: win32com.server.policy.EventHandlerPolicy; Flags: uninsdeletekey; Components: OutlookAddin; Check: NotIsAllUsers
Root: HKCU; Subkey: Software\Classes\CLSID\{{E77FA584-1433-4af3-800D-AEC49BCCCB11}\PythonCOMPath; ValueType: string; ValueData: {app}\bin; Flags: uninsdeletekey; Components: OutlookAddin; Check: NotIsAllUsers
Root: HKCU; Subkey: Software\Classes\CLSID\{{E77FA584-1433-4af3-800D-AEC49BCCCB11}\Implemented Categories\{{B3EF80D0-68E2-11D0-A689-00C04FD658FF}; Flags: uninsdeletekey; Components: OutlookAddin; Check: NotIsAllUsers
Root: HKCU; Subkey: Software\Classes\CLSID\{{E77FA584-1433-4af3-800D-AEC49BCCCB11}\Debugging; ValueType: string; ValueData: 0; Flags: uninsdeletekey; Components: OutlookAddin; Check: NotIsAllUsers
Root: HKCU; Subkey: Software\Classes\CLSID\{{E77FA584-1433-4af3-800D-AEC49BCCCB11}\ProgID; ValueType: string; ValueData: ClamWin.OutlookAddin; Flags: uninsdeletekey; Components: OutlookAddin; Check: NotIsAllUsers
Root: HKCU; Subkey: Software\Classes\ClamWin.OutlookAddin; ValueType: string; ValueData: ClamWin.OutlookAddin; Flags: uninsdeletekey; Components: OutlookAddin; Check: NotIsAllUsers
Root: HKCU; Subkey: Software\Classes\ClamWin.OutlookAddin\CLSID; ValueType: string; ValueData: {{E77FA584-1433-4af3-800D-AEC49BCCCB11}; Flags: uninsdeletekey; Components: OutlookAddin; Check: NotIsAllUsers

Root: HKCU; Subkey: Software\Microsoft\Office\Outlook\Addins\ClamWin.OutlookAddin; ValueType: dword; ValueName: CommandLineSafe; ValueData: 0; Flags: uninsdeletekey; Components: OutlookAddin; Check: NotIsAllUsers
Root: HKCU; Subkey: Software\Microsoft\Office\Outlook\Addins\ClamWin.OutlookAddin; ValueType: dword; ValueName: LoadBehavior; ValueData: 3; Flags: uninsdeletekey; Components: OutlookAddin; Check: NotIsAllUsers
Root: HKCU; Subkey: Software\Microsoft\Office\Outlook\Addins\ClamWin.OutlookAddin; ValueType: string; ValueName: Description; ValueData: ClamWin Antivirus; Flags: uninsdeletekey; Components: OutlookAddin; Check: NotIsAllUsers
Root: HKCU; Subkey: Software\Microsoft\Office\Outlook\Addins\ClamWin.OutlookAddin; ValueType: string; ValueName: FriendlyName; ValueData: ClamWin Antivirus; Flags: uninsdeletekey; Components: OutlookAddin; Check: NotIsAllUsers

[Tasks]
Name: DownloadDB; Description: Download Virus Database Files. (Do Not Select if you connect via a Proxy Server); GroupDescription: Download; Components: ClamAV
; NOTE: The following entry contains English phrases ("Create a desktop icon" and "Additional icons"). You are free to translate them into another language if required.
Name: desktopicon; Description: Create a &desktop icon; GroupDescription: Additional icons:; Flags: unchecked
[UninstallRun]
Filename: {app}\bin\WClose.exe; WorkingDir: {app}\bin

[Code]
var
  //CygwinChecked, CygwinFound: Boolean;
  AllUsers: Boolean;
  SetupCompleted: Boolean;
  Time: String;
  PreviousVersion, ThisVersion: Integer;
  AllUsersPage: TInputOptionWizardPage;

procedure InitializeWizard;
begin
  // Create the pages
  AllUsersPage := CreateInputOptionPage(wpLicense,
    'Select Installation Options', 'Who should this application be installed for?',
    'Please select whether you wish to make this software available to all users or just yourself.',
    True, False);
  AllUsersPage.Add('&Anyone who uses this computer (all users)');
  AllUsersPage.Add('Only for &me (' + GetUserNameString() + ')');


  // Set default values, using settings that were stored last time if possible
  case GetPreviousData('AllUsersMode', '') of
    'anyone': AllUsers := True;
    'onlyme': AllUsers := False;
  end;
  if (AllUsers) then
    AllUsersPage.SelectedValueIndex := 0
  else
    AllUsersPage.SelectedValueIndex := 1;
end;

procedure RegisterPreviousData(PreviousDataKey: Integer);
var
  AllUsersModeStr: String;
begin
  // Store the settings so we can restore them next time
  case AllUsersPage.SelectedValueIndex of
    0: AllUsersModeStr := 'anyone';
    1: AllUsersModeStr := 'onlyme';
  end;
  SetPreviousData(PreviousDataKey, 'AllUsersMode', AllUsersModeStr);
end;

function RemoveSetup(keyname: String): Boolean;
var
	uninstall: String;
	resultcode: Integer;
begin
	if not RegKeyExists(HKEY_LOCAL_MACHINE, keyname) then begin
		Result := True;
		exit;
	end;
	if not RegQueryStringValue(HKEY_LOCAL_MACHINE, keyname, 'UninstallString',  uninstall) then begin
		Result := True;
		exit;
	end;
	if SuppressibleMsgBox('The Setup detected previous version of the software is already installed on this computer. Cick Yes to uninstall it now.',
	              mbConfirmation, MB_YESNO, IDYES) = idYes then begin
		Result := Exec(RemoveQuotes(uninstall), ' /SILENT', '', SW_SHOWNORMAL, ewWaitUntilTerminated, resultcode);
	end else begin
		Result := False;
	end;
end;

function ShouldSkipPage(PageID: Integer): Boolean;
begin
  // Skip pages that shouldn't be shown
  // in win 98/me we don't ask for all users nor we do if an admin is not logged on
  if (PageID = AllUsersPage.ID) then begin
    if (not UsingWinNT()) then
	  Result := True
	else if (not IsAdminLoggedOn()) then begin
	  Result := True;
	end;
  end else
    Result := False;
end;

function NextButtonClick(CurPage: Integer): Boolean;
begin
	Result := istool_download(CurPage);
	if CurPage = wpFinished then
		SetupCompleted := True
	else if CurPage = AllUsersPage.ID then begin
		case AllUsersPage.SelectedValueIndex of
			0: AllUsers := True;
			1: AllUsers := False;
		end;
		if ((not IsAdminLoggedOn()) and (not AllUsers)) then
			RemoveSetup('SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\ClamWin Antivirus_is1');
	end;
end;


function IsOutlookInstalled() : Boolean;
begin
    Result := RegKeyExists( HKCU, 'Software\Microsoft\Office\Outlook') or
			RegKeyExists( HKLM, 'Software\Microsoft\Office\Outlook') or
			RegKeyExists( HKLM, 'Software\Microsoft\Office\9.0\Outlook') or
			RegKeyExists( HKLM, 'Software\Microsoft\Office\10.0\Outlook') or
			RegKeyExists( HKLM, 'Software\Microsoft\Office\11.0\Outlook');
end;



function CheckNoAppMutex( mutexName: String; closeMsg: String) : Boolean;
begin
    Result := true;
    if Pos('/SUPPRESSMSGBOXES', Uppercase(GetCmdTail())) = 0 then begin
		while Result do begin
			if not CheckForMutexes(mutexName) then
				break;
			Result := MsgBox(closeMsg, mbConfirmation, MB_RETRYCANCEL) = idRetry;
		end;
	end;
end;

function NoOutlookRunning(): Boolean;
var
  closeit: String;
begin
    // Check if Outlook is running.
    closeit:= 'You must close Outlook before ClamWin can be installed.' + #13 + #13 +
              'Please close all Outlook Windows (using "File->Exit and Log off"' + #13 +
              'if available) and click Retry, or click Cancel to exit the installation.'+ #13 + #13 +
              'If this message persists after closing all Outlook windows, you may' + #13 +
              'need to log off from Windows, and try again.'
    Result := CheckNoAppMutex('_outlook_mutex_', closeit);
    // Check if MAPISP32.EXE is running - if it is, it implies something is screwey
    // with Outlook.
    if Result then begin
      closeit := 'The Outlook mail delivery agent is still running.' + #13 + #13 +
                 'If you only recently closed Outlook, wait a few seconds and click Retry.' + #13 + #13 +
                 'If this message persists, you may need to log off from Windows, and try again.'
      Result := CheckNoAppMutex('InternetMailTransport', closeit);
    end;
end;

function IsWin9x(): Boolean;
begin
	Result := not UsingWinNT();
end;

function IsXPOrLater(): Boolean;
begin
	Result:= (GetWindowsVersion() >= $05010000);
end;

function NotIsXPOrLater(): Boolean;
begin
	Result := not IsXPOrLater();
end;


function IsAllUsers(): Boolean;
begin
	if not UsingWinNT() then
		Result := True
	else
		Result := AllUsers;
end;

function NotIsAllUsers(): Boolean;
begin
	Result := not IsAllUsers();
end;

procedure CloseClamWin();
var
	path, keyname: String;
	resultcode: Integer;
begin
	keyname := 'SOFTWARE\ClamWin';
	path := ''
	if not RegQueryStringValue(HKEY_CURRENT_USER, keyname, 'path',  path) then begin
		RegQueryStringValue(HKEY_LOCAL_MACHINE, keyname, 'path',  path)
	end;
	if path = '' then begin
		exit;
	end;
	if not CheckForMutexes('ClamWinTrayMutex01') then
        exit;
	if SuppressibleMsgBox('The Setup detected previous version of the software is installed.' + #13 +
				 'Would you like to close the program now? (Recommended)',
	              mbConfirmation, MB_YESNO, IDYES) = idYes then begin
	    path := RemoveQuotes(path)+'\WClose.exe';
		Exec(path, '', '', SW_SHOWNORMAL, ewWaitUntilTerminated, resultcode);
	end;
end;


function InitializeSetup(): Boolean;
var
	value: Cardinal;
begin
	if (not UsingWinNT()) then
		AllUsers := True
	else
		AllUsers := IsAdminLoggedOn();

	ThisVersion := 882;
	value := 0;
	if not RegQueryDWordValue(HKEY_CURRENT_USER, 'SOFTWARE\Clamwin', 'Version',  value) then begin
		value := 0;
		RegQueryDWordValue(HKEY_LOCAL_MACHINE, 'SOFTWARE\Clamwin', 'Version',  value)
	end;
	PreviousVersion := value;
	if PreviousVersion > ThisVersion then begin
		SuppressibleMsgBox('Setup detected that newer version of the software is already installed.' + #13 +
				 'Setup will terminate now.', mbError, MB_OK, IDOK);
		Result := False;
		exit;
	end;


	SetupCompleted := False;
	Time := GetDateTimeString('hh:nn', #0, ':') + ':00';
	Result := NoOutlookRunning();
	if Result then CloseClamWin();
end;

procedure DeInitializeSetup();
var
	filename: String;
begin
	DeleteFile(ExpandConstant('{%TEMP|{localappdata}}\clamwin-src.zip'));
	DeleteFile(ExpandConstant('{%TEMP|{localappdata}}\clamav-src.tar.gz'));
	//DeleteFile(ExpandConstant('{%TEMP|{localappdata}}\cygwin-src.tar.bz2'));
	if (SetupCompleted) and (PreviousVersion < 35) then begin
		filename := ExpandConstant('{app}\bin\Tray.exe');
		if (FileExists(filename)) then begin
			DeleteFile(filename);
		end;
		filename := ExpandConstant('{app}\bin\OutlookAddin.exe');
		if (FileExists(filename)) then begin
			DeleteFile(filename);
		end;
		filename := ExpandConstant('{app}\bin\ExplorerShell.dll');
		if (FileExists(filename)) then begin
			RestartReplace(filename, '');
			SuppressibleMsgBox('Please restart your computer in order to complete the installation of ClamWin Antivirus.',
				mbInformation, MB_OK, IDOK);
		end;
	end;
end;


//function NoCygwin(): Boolean;
//begin
//	if not CygWinChecked then begin
//		CygwinFound := RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\Cygnus Solutions\Cygwin\mounts v2\/');
//		CygwinChecked := True;
//		Result := not CygwinFound;
//	end
//	else begin
//		Result := not CygwinFound;
//	end
//end;

//function NoCygwinAllUsers(): Boolean;
//begin
//	Result := NoCygWin() and IsAllUsers();
//end;

//function NoCygwinNotAllUsers(): Boolean;
//begin
//	Result := NoCygWin() and not IsAllUsers();
//end;

function
BaseDir(Default: String): String;
begin
	if IsAllUsers() then begin
		Result := ExpandConstant('{pf}');
	end else begin
		Result := ExpandConstant('{userappdata}');
	end;
end;

function CurTime(Default: String): String;
begin
	Result := Time;
end;

function TempDir(Default: String): String;
begin
	Result := GetTempDir();
end;

function CommonProfileDir(Default: String): String;
var
	AppData, Tmp: String;
	i, position: Integer;
begin
	if IsAllUsers() then begin
		AppData := RemoveBackslash(ExpandConstant('{commonappdata}'));
	end else begin
		AppData := ExpandConstant('{userappdata}');
	end;
	// remove last directory from the path (Ususally Application Data)
	Tmp := AppData;
	While True do begin
		i := Pos('\', Tmp);
		if i <> 0 then begin
			Tmp := Copy(Tmp, i + 1, Length(Tmp) - i);
		end else begin
			Break;
		end;
	end;
	position := Length(AppData) - Length(Tmp);
	if position > 0 then begin
		Result := RemoveBackslash(Copy(AppData, 0, position));
	end else begin
		Result := AppData;
	end;
end;


function DesktopDir(Default: String): String;
begin
	if IsAllUsers() then begin
		Result := ExpandConstant('{commondesktop}');
	end else begin
		Result := ExpandConstant('{userdesktop}');
	end;
end;



function IsIniValueEmpty(Param : String): Boolean;
var
	Section, Key, Filename, Val, TempStr, Default : String;
	EndPos: Integer;
begin
	Default := '';
	TempStr := Param;

	EndPos := Pos('*', TempStr);
	Section := Copy(TempStr, 0, EndPos - 1);
	TempStr := Copy(TempStr, EndPos + 1, Length(TempStr) - EndPos)

	EndPos := Pos('*', TempStr);
	Key := Copy(TempStr, 0, EndPos - 1);
	TempStr := Copy(TempStr, EndPos + 1, Length(TempStr) - EndPos)

	Filename := TempStr;

	Val:= Trim(GetIniString(Section, Key, Default, Filename));
	Result := (Val = '')

end;

function IsTemplateConfig(Filename: String): Boolean;
begin
	Result := (not IsWin9x()) and (not FileExists(Filename));
end;
