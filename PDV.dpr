program PDV;

{$R *.dres}

uses
  System.StartUpCopy,
  FMX.Forms,
  PDV.view.index in 'src\view\PDV.view.index.pas' {PageIndex},
  PDV.view.source.routers in 'src\view\source\PDV.view.source.routers.pas',
  PDV.view.pages.app in 'src\view\pages\PDV.view.pages.app.pas' {PageApp},
  PDV.view.components.navbar in 'src\view\components\navbar\PDV.view.components.navbar.pas' {CompomentsNavbar},
  PDV.view.source.utils in 'src\view\source\PDV.view.source.utils.pas',
  PDV.view.components.button in 'src\view\components\button\PDV.view.components.button.pas' {ComponentButton};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TPageIndex, PageIndex);
  Application.CreateForm(TPageApp, PageApp);
  Application.CreateForm(TCompomentsNavbar, CompomentsNavbar);
  Application.CreateForm(TComponentButton, ComponentButton);
  Application.Run;
end.
