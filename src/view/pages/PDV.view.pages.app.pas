unit PDV.view.pages.app;

interface

uses
  System.SysUtils,
  System.Types,
  System.UITypes,
  System.Classes,
  System.Variants,
  FMX.Types,
  FMX.Controls,
  FMX.Forms,
  FMX.Graphics,
  FMX.Dialogs,
  FMX.Layouts,
  Router4D.Interfaces, PDV.view.components.navbar, FMX.Objects;

type
  TPageApp = class(TForm, iRouter4DComponent)
    LayoutContainer: TLayout;
    LayoutNavbar: TLayout;
    LayoutBody: TLayout;
    Rectangle1: TRectangle;
  private
      { Private declarations }
  public
    function Render : TFMXObject;
    procedure UnRender;
  end;

var
  PageApp: TPageApp;

implementation

{$R *.fmx}

{ TPageApp }

function TPageApp.Render: TFMXObject;
begin
  Result := LayoutContainer;

  LayoutNavbar.AddObject(TCompomentsNavbar.Create(Self).Build);
end;

procedure TPageApp.UnRender;
begin

end;

end.
