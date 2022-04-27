unit PDV.view.index;

interface

uses
  System.SysUtils,
  System.Types,
  System.UITypes,
  System.Classes,
  System.Variants,
  System.Math.Vectors,
  FMX.Types,
  FMX.Controls,
  FMX.Forms,
  FMX.Graphics,
  FMX.Dialogs,
  FMX.Controls3D,
  FMX.Layers3D,
  FMX.Layouts,
  Router4D,
  PDV.view.pages.app;

type
  TPageIndex = class(TForm)
    LayoutContainer: TLayout;
    procedure FormCreate(Sender: TObject);
  private
      { Private declarations }
  public
      { Public declarations }
  end;

var
  PageIndex: TPageIndex;

implementation

{$R *.fmx}

procedure TPageIndex.FormCreate(Sender: TObject);
begin
  Trouter4D.Render<TPageApp>.SetElement(LayoutContainer, LayoutContainer)
end;

end.
