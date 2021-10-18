; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!
; Use iscc to compile this (in your innosetup program directory)

; Autogenerated by versioninfo.sh: contains MyAppVersion
#include "version.iss"
; Autogenerated by versioninfo.sh: contains MyResourceVersion
#include "resource-version.iss"

; Windows-style path to the root of the source distribution
; You probably have to change this.
; Update: those are now in Makefile.win in the BUILD_ENVironments
; #define WindrbdSource "X:\windrbd"
; Where the WinDRBD utils (drbdadm, drbdsetup, drbdmeta and windrbd EXEs)
; can be found. Note: the utils are not built by this makefile, you
; have to build them seperately.
; #define WindrbdUtilsSource "X:\drbd-utils-windows"

#define MyAppName "WinDRBD"
#define MyAppPublisher "Linbit"
#define MyAppURL "http://www.linbit.com/"
#define MyAppURLDocumentation "https://www.linbit.com/user-guides/"
#define DriverPath "C:\Windows\system32\drivers\windrbd.sys"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{EB75FCBA-83D5-4DBF-9047-30F2B6C72DC9}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppCopyright=GPL
VersionInfoVersion={#MyResourceVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
ChangesEnvironment=yes
DefaultDirName={pf}\{#MyAppName}
DisableDirPage=auto
DefaultGroupName={#MyAppName}
LicenseFile={#WindrbdSource}\LICENSE.txt
InfoBeforeFile={#WindrbdSource}\inno-setup\about-windrbd.txt
OutputDir={#WindrbdSource}\inno-setup
OutputBaseFilename=install-{#MyAppVersion}
PrivilegesRequired=admin
Compression=lzma
SolidCompression=yes
ArchitecturesInstallIn64BitMode=x64
SetupIconFile=windrbd.ico

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"
Name: "catalan"; MessagesFile: "compiler:Languages\Catalan.isl"
Name: "corsican"; MessagesFile: "compiler:Languages\Corsican.isl"
Name: "czech"; MessagesFile: "compiler:Languages\Czech.isl"
Name: "danish"; MessagesFile: "compiler:Languages\Danish.isl"
Name: "dutch"; MessagesFile: "compiler:Languages\Dutch.isl"
Name: "finnish"; MessagesFile: "compiler:Languages\Finnish.isl"
Name: "french"; MessagesFile: "compiler:Languages\French.isl"
Name: "german"; MessagesFile: "compiler:Languages\German.isl"
Name: "greek"; MessagesFile: "compiler:Languages\Greek.isl"
Name: "hebrew"; MessagesFile: "compiler:Languages\Hebrew.isl"
Name: "hungarian"; MessagesFile: "compiler:Languages\Hungarian.isl"
Name: "italian"; MessagesFile: "compiler:Languages\Italian.isl"
Name: "japanese"; MessagesFile: "compiler:Languages\Japanese.isl"
Name: "norwegian"; MessagesFile: "compiler:Languages\Norwegian.isl"
Name: "polish"; MessagesFile: "compiler:Languages\Polish.isl"
Name: "portuguese"; MessagesFile: "compiler:Languages\Portuguese.isl"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"
Name: "scottishgaelic"; MessagesFile: "compiler:Languages\ScottishGaelic.isl"
Name: "serbiancyrillic"; MessagesFile: "compiler:Languages\SerbianCyrillic.isl"
Name: "serbianlatin"; MessagesFile: "compiler:Languages\SerbianLatin.isl"
Name: "slovenian"; MessagesFile: "compiler:Languages\Slovenian.isl"
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"
Name: "turkish"; MessagesFile: "compiler:Languages\Turkish.isl"
Name: "ukrainian"; MessagesFile: "compiler:Languages\Ukrainian.isl"

[Tasks]
; Name: modifypath; Description: &Add application directory to your environmental path;

[Dirs]
Name: "{code:WinDRBDRootDir}\bin"
Name: "{code:WinDRBDRootDir}\usr\sbin"
Name: "{code:WinDRBDRootDir}\var\run\drbd"
Name: "{code:WinDRBDRootDir}\var\lib\drbd"
Name: "{code:WinDRBDRootDir}\var\lock"

[Files]
Source: "{#WindrbdUtilsSource}\user\v9\drbdadm.exe"; DestDir: "{code:WinDRBDRootDir}\usr\sbin"; Flags: ignoreversion
Source: "{#WindrbdUtilsSource}\user\v9\drbdmeta.exe"; DestDir: "{code:WinDRBDRootDir}\usr\sbin"; Flags: ignoreversion
Source: "{#WindrbdUtilsSource}\user\v9\drbdsetup.exe"; DestDir: "{code:WinDRBDRootDir}\usr\sbin"; Flags: ignoreversion
Source: "{#WindrbdUtilsSource}\user\windrbd\windrbd.exe"; DestDir: "{code:WinDRBDRootDir}\usr\sbin"; Flags: ignoreversion
Source: "{#WindrbdSource}\inno-setup\sysroot\README-windrbd.txt"; DestDir: "{code:WinDRBDRootDir}"; Flags: ignoreversion
Source: "{#WindrbdSource}\inno-setup\sysroot\etc\drbd.conf"; DestDir: "{code:WinDRBDRootDir}\etc"; Flags: ignoreversion onlyifdoesntexist
Source: "{#WindrbdSource}\inno-setup\sysroot\etc\drbd.d\global_common.conf"; DestDir: "{code:WinDRBDRootDir}\etc\drbd.d"; Flags: ignoreversion onlyifdoesntexist
Source: "{#WindrbdSource}\inno-setup\sysroot\etc\drbd.d\windrbd-sample.res"; DestDir: "{code:WinDRBDRootDir}\etc\drbd.d"; Flags: ignoreversion
Source: "{#WindrbdSource}\inno-setup\uninstall-windrbd-beta4.cmd"; DestDir: "{app}"; Flags: ignoreversion deleteafterinstall
Source: "{#WindrbdSource}\inno-setup\install-windrbd.cmd"; DestDir: "{app}"; Flags: ignoreversion deleteafterinstall
Source: "{#WindrbdSource}\inno-setup\uninstall-windrbd.cmd"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#WindrbdSource}\inno-setup\cygwin-binaries\cygwin1.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#WindrbdSource}\inno-setup\cygwin-binaries\cygrunsrv.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#WindrbdSource}\inno-setup\cygwin-binaries\cygpath.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#WindrbdSource}\inno-setup\cygwin-binaries\cygattr-1.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#WindrbdSource}\inno-setup\cygwin-binaries\cygbz2-1.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#WindrbdSource}\inno-setup\cygwin-binaries\cygiconv-2.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#WindrbdSource}\inno-setup\cygwin-binaries\cygintl-8.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#WindrbdSource}\inno-setup\cygwin-binaries\cygncursesw-10.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#WindrbdSource}\inno-setup\cygwin-binaries\cygreadline7.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#WindrbdSource}\inno-setup\cygwin-binaries\bash.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#WindrbdSource}\inno-setup\cygwin-binaries\cat.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#WindrbdSource}\inno-setup\cygwin-binaries\chmod.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#WindrbdSource}\inno-setup\cygwin-binaries\cp.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#WindrbdSource}\inno-setup\cygwin-binaries\ls.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#WindrbdSource}\inno-setup\cygwin-binaries\mkdir.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#WindrbdSource}\inno-setup\cygwin-binaries\mv.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#WindrbdSource}\inno-setup\cygwin-binaries\sed.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#WindrbdSource}\inno-setup\cygwin-binaries\sync.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#WindrbdSource}\inno-setup\cygwin-binaries\unzip.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#WindrbdSource}\converted-sources\drbd\windrbd.sys"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#WindrbdSource}\inno-setup\msgbox.vbs"; DestDir: "{app}"; Flags: ignoreversion deleteafterinstall
; must be in same folder as the sysfile.
Source: "{#WindrbdSource}\converted-sources\drbd\windrbd.inf"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#WindrbdSource}\converted-sources\drbd\windrbd.cat"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#WindrbdSource}\misc\drbd.cgi"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#WindrbdSource}\misc\ipxe-windrbd.pxe"; DestDir: "{app}"; Flags: ignoreversion

; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{cm:ProgramOnTheWeb,{#MyAppName}}"; Filename: "{#MyAppURL}"
Name: "{group}\View {#MyAppName} Tech Guides"; Filename: "{#MyAppURLDocumentation}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{group}\Open {#MyAppName} configuration folder"; Filename: "{code:WinDRBDRootDir}\etc\drbd.d"
Name: "{group}\Open {#MyAppName} application folder"; Filename: "{app}"
                                                
[Run]
Filename: "{app}\uninstall-windrbd-beta4.cmd"; WorkingDir: "{app}"; Flags: runascurrentuser shellexec waituntilterminated runhidden
; TODO: System directory. Do not hardcode C:\Windows.
Filename: "C:\Windows\sysnative\cmd.exe"; Parameters: "/c install-windrbd.cmd"; WorkingDir: "{app}"; Flags: runascurrentuser waituntilterminated shellexec runhidden
Filename: "{app}\cygrunsrv"; Parameters: "-I windrbdlog -p {code:WinDRBDRootDirCygwin}/usr/sbin/windrbd.exe -a log-server -1 {code:WinDRBDRootDirCygwin}/windrbd-kernel.log -2 {code:WinDRBDRootDirCygwin}/windrbd-kernel.log -t manual"; WorkingDir: "{app}"; Flags: runascurrentuser waituntilterminated shellexec runhidden
Filename: "{app}\cygrunsrv"; Parameters: "-I windrbdumhelper -p {code:WinDRBDRootDirCygwin}/usr/sbin/windrbd.exe -a user-mode-helper-daemon -1 {code:WinDRBDRootDirCygwin}/windrbd-umhelper.log -2 {code:WinDRBDRootDirCygwin}/windrbd-umhelper.log -t manual"; WorkingDir: "{app}"; Flags: runascurrentuser waituntilterminated shellexec runhidden
Filename: "{#MyAppURLDocumentation}"; Description: "Download WinDRBD documentation"; Flags: postinstall shellexec skipifsilent

[UninstallRun]
Filename: "C:\Windows\sysnative\cmd.exe"; Parameters: "/c uninstall-windrbd.cmd"; WorkingDir: "{app}"; Flags: runascurrentuser waituntilterminated shellexec runhidden; RunOnceId: "UninstallWinDRBD"
; Filename: "{code:WinDRBDRootDir}\usr\sbin\windrbd.exe"; Parameters: "remove-bus-device windrbd.inf"; WorkingDir: "{app}"; Flags: runascurrentuser waituntilterminated shellexec runhidden; RunOnceId: "RemoveBusDeviceWinDRBD"

[Registry]

Root: HKLM; Subkey: "System\CurrentControlSet\services\eventlog\system\WinDRBD"; Flags: uninsdeletekey
Root: HKLM; Subkey: "System\CurrentControlSet\services\eventlog\system\WinDRBD"; ValueType: string; ValueName: "EventMessageFile"; ValueData: "{#DriverPath}"

[Code]

var WinDRBDRootDirPage: TInputDirWizardPage;

function WinDRBDRootDir(params: String) : String;
var root: string;
begin
	root := '';
	if not isUninstaller then
	begin
		root := WinDRBDRootDirPage.Values[0];
	end;
	if root = '' then begin
		if not RegQueryStringValue(HKEY_LOCAL_MACHINE, 'System\CurrentControlSet\Services\WinDRBD', 'WinDRBDRootWinPath', root) then
			root := 'C:\WinDRBD';
	end;
	Result := root;
end;

function cygpath(WindowsPath: String): String;
var
	TmpFileName, ExecStdout: string;
	ResultCode: integer;

begin
	TmpFileName := ExpandConstant('{tmp}') + '\cygpath_results.txt';
	Exec('cmd.exe', '/C cygpath "' + WindowsPath + '" > "' + TmpFileName + '"', '', SW_HIDE, ewWaitUntilTerminated, ResultCode);
	if not LoadStringFromFile(TmpFileName, ExecStdout) then begin
		ExecStdout := '';
	end;
	DeleteFile(TmpFileName);

	// Remove trailing newline. Filenames with newlines in them
	// are not supported.
	StringChangeEx(ExecStdout, #10, '', True);

	Result := ExecStdout;
end;

function WinDRBDRootDirCygwin(params: String): String;
begin
	result := cygpath(WinDRBDRootDir(params));
end;

const
	ModPathType = 'system';

function ModPathDir(): TArrayOfString;
var root_path: String;
begin
	root_path := WinDRBDRootDir('');
	setArrayLength(Result, 4);
	Result[0] := ExpandConstant('{app}');
	Result[1] := root_path + '\usr\sbin';
	Result[2] := root_path + '\usr\bin';
	Result[3] := root_path + '\bin';
end;

#include "modpath.iss"
#include "oldver.iss"
#include "services.iss"

var LoggerWasStarted: boolean;
var UmHelperWasStarted: boolean;

Procedure StopUserModeServices;
Begin
	LoggerWasStarted := MyStopService('windrbdlog');
	UmHelperWasStarted := MyStopService('windrbdumhelper');
End;

Procedure StartUserModeServices;
Begin
	if LoggerWasStarted then begin
		MyStartService('windrbdlog');
	End;
	if UmHelperWasStarted then begin
		MyStartService('windrbdumhelper');
	End;
End;

Procedure QuoteImagePath(reg_path: string);
var the_path: string;

Begin
	if RegQueryStringValue(HKEY_LOCAL_MACHINE, reg_path, 'ImagePath', the_path) then
	Begin
		if the_path[1] <> '"' then
		Begin
			the_path := '"' + the_path + '"';
			if not RegWriteStringValue(HKEY_LOCAL_MACHINE, reg_path, 'ImagePath', the_path) then
			Begin
				MsgBox('Could not write ImagePath value back in registry path '+reg_path, mbInformation, MB_OK);
			End;
		End;
	End
	Else
	Begin
		MsgBox('Could not find ImagePath value in registry path '+reg_path, mbInformation, MB_OK);
	End;
End;

Procedure PatchRegistry;
Begin
	QuoteImagePath('System\CurrentControlSet\Services\windrbdumhelper');
	QuoteImagePath('System\CurrentControlSet\Services\windrbdlog');
End;

procedure RemoveWinDRBDRootPath;
begin
	RegDeleteValue(HKEY_LOCAL_MACHINE, 'System\CurrentControlSet\Services\WinDRBD', 'WinDRBDRoot');
	RegDeleteValue(HKEY_LOCAL_MACHINE, 'System\CurrentControlSet\Services\WinDRBD', 'WinDRBDRootWinPath');
end;

procedure stopDriver;
var ResultCode: Integer;

begin
	if not Exec(ExpandConstant('{code:WinDRBDRootDir}\usr\sbin\drbdadm.exe'), 'down all', ExpandConstant('{app}'), SW_HIDE, ewWaitUntilTerminated, ResultCode) then
	begin
		MsgBox('Could not bring DRBD resources down', mbInformation, MB_OK);
	end;

	if not Exec(ExpandConstant('{code:WinDRBDRootDir}\usr\sbin\windrbd.exe'), 'remove-bus-device windrbd.inf', ExpandConstant('{app}'), SW_HIDE, ewWaitUntilTerminated, ResultCode) then
	begin
		MsgBox('Could not remove bus device', mbInformation, MB_OK);
	end;

	if not Exec(ExpandConstant('sc.exe'), 'stop windrbd', ExpandConstant('{app}'), SW_HIDE, ewWaitUntilTerminated, ResultCode) then
	begin
		MsgBox('Could not stop driver', mbInformation, MB_OK);
	end;

	driverWasUnloaded := ResultCode = 0;

if driverWasUnloaded then
MsgBox('driver was successfully unloaded', mbInformation, MB_OK)
else
MsgBox('driver was NOT successfully unloaded', mbInformation, MB_OK);

end;

procedure AddDriverToDriverStore;
var ResultCode: Integer;

begin
	if not Exec(ExpandConstant('pnputil.exe'), '/add-driver windrbd.inf', ExpandConstant('{app}'), SW_HIDE, ewWaitUntilTerminated, ResultCode) then
	begin
		MsgBox('Could not run pnputil', mbInformation, MB_OK);
	end;
end;

procedure InstallBusDevice;
var ResultCode: Integer;

begin
	if not Exec(ExpandConstant('{code:WinDRBDRootDir}\usr\sbin\windrbd.exe'), 'install-bus-device windrbd.inf', ExpandConstant('{app}'), SW_HIDE, ewWaitUntilTerminated, ResultCode) then
	begin
		MsgBox('Could not install bus device', mbInformation, MB_OK);
	end;
end;

function UninstallNeedRestart: Boolean;
begin
	Result:= not driverWasUnloaded;

if not driverWasUnloaded then
MsgBox('Need restart', mbInformation, MB_OK)
else
MsgBox('Do not need restart', mbInformation, MB_OK);

end;

procedure CurUninstallStepChanged(CurUninstallStep: TUninstallStep);
var root: string;

begin
	if CurUninstallStep = usAppMutexCheck then begin
		StopUserModeServices();
		StopDriver();
	end;
	// only run during actual uninstall
	if CurUninstallStep = usUninstall then begin
		ModPath();

		root:= WinDRBDRootDir('');
		RemoveWinDRBDRootPath();

		MsgBox('Uninstall does not remove files in the '+root+' directory that are created by you (for example .res files in /etc/drbd.d). If you do not need them any more, please remove the '+root+' directory manually.', mbInformation, MB_OK);
	end;
	// cmd script stops user mode helpers, no need to do that here
end;

procedure InitializeWizard;
begin
	WinDRBDRootDirPage := CreateInputDirPage(wpSelectDir, 'Select WinDRBD root directory', '',  '', True, 'WinDRBD');
	WinDRBDRootDirPage.Add('WinDRBD root directory:'+#13#10#13#10+'This is the system root for WinDRBD where the etc, bin, usr, ... directories'+#13#10+'for the userland utilities are located.'+#13#10);
	WinDRBDRootDirPage.Values[0] := WinDRBDRootDir(''); 
end;

function NextButtonClick(CurPageID: Integer): Boolean;
begin
	if CurPageID = WinDRBDRootDirPage.ID then
	begin
		if Pos(' ', WinDRBDRootDirPage.Values[0]) <> 0 then
		begin
			MsgBox('No whitespace allowed in WinDRBD root path', mbInformation, MB_OK);
			Result := false;
		end
		else
		begin
			Result := true;
		end;
	end
	else
	begin
		Result := true;
	end;
end;

function ShouldSkipPage(PageID: Integer): Boolean;
var unused: String;
begin
	if PageID = WinDRBDRootDirPage.ID then
		Result := RegQueryStringValue(HKEY_LOCAL_MACHINE, 'System\CurrentControlSet\Services\WinDRBD', 'WinDRBDRootWinPath', unused)
	else
		Result := false;
end;

procedure WriteWinDRBDRootPath;
var windrbd_root: String;

begin
	windrbd_root := cygpath(WinDRBDRootDir(''));
	if windrbd_root = '' then
	begin
		MsgBox('Could not convert Windows path to cygwin path, Windows path is '+WinDRBDRootDir(''), mbInformation, MB_OK);
	end
	else
	begin
		if not RegWriteStringValue(HKEY_LOCAL_MACHINE, 'System\CurrentControlSet\Services\WinDRBD', 'WinDRBDRoot', windrbd_root) then
		begin
			MsgBox('Could not write cygwin path to registry, cygwin path is '+windrbd_root, mbInformation, MB_OK);
		end;
		if not RegWriteStringValue(HKEY_LOCAL_MACHINE, 'System\CurrentControlSet\Services\WinDRBD', 'WinDRBDRootWinPath', WinDRBDRootDir('')) then
		begin
			MsgBox('Could not write windows path to registry, windows path is '+WinDRBDRootDir(''), mbInformation, MB_OK);
		end;
	end;
end;

procedure CurStepChanged(CurStep: TSetupStep);
begin
	if CurStep = ssPostInstall then begin
		ModPath();
	end;

	if CurStep = ssInstall then begin
		WriteWinDRBDRootPath();

		StopUserModeServices();
		if GetOldVersion <> '' then begin
			StopDriver();
		end;
	end;
	if CurStep = ssPostInstall then begin
		PatchRegistry();
		StartUserModeServices();
		AddDriverToDriverStore();
		InstallBusDevice();
	end;
end;

procedure CurPageChanged(CurPageID: Integer);
begin
	if CurPageID = wpReady then
	begin
		Wizardform.ReadyMemo.Lines.Add(''); { Empty string }
		Wizardform.ReadyMemo.Lines.Add('WinDRBD Sysroot folder');
		Wizardform.ReadyMemo.Lines.Add('      '+WinDRBDRootDir(''));
		Wizardform.ReadyMemo.Lines.Add(''); { Empty string }
	end;
end;
