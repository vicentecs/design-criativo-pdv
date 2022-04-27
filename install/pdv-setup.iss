; Script generated by the Inno Script Studio Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define PDVName "PDV"
#define PDVVersion "1.0.1"
#define PDVPublisher "VicenteCS"
#define PDVURL "https://github.com/vicentecs/design-criativo-pdv"
#define PDVExeName "PDV.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{68E3B9A4-430C-4342-A73A-7B4379BE3361}
AppName={#PDVName}
AppVersion={#PDVVersion}
;AppVerName={#PDVName} {#PDVVersion}
AppPublisher={#PDVPublisher}
AppPublisherURL={#PDVURL}
AppSupportURL={#PDVURL}
AppUpdatesURL={#PDVURL}
DefaultDirName={pf}\PDV-VCS
DefaultGroupName={#PDVName}
OutputDir=C:\Delphi\design-criativo-pdv\install\setup
OutputBaseFilename=pdv-setup
Compression=lzma
SolidCompression=yes

[Languages]
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 0,6.1

[Files]
Source: "C:\Delphi\design-criativo-pdv\Win32\Release\PDV.exe"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#PDVName}"; Filename: "{app}\{#PDVExeName}"
Name: "{group}\{cm:UninstallProgram,{#PDVName}}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\{#PDVName}"; Filename: "{app}\{#PDVExeName}"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#PDVName}"; Filename: "{app}\{#PDVExeName}"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\{#PDVExeName}"; Description: "{cm:LaunchProgram,{#StringChange(PDVName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent
