unit PDV.view.components.navbar;

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
  FMX.Objects,
  FMX.Layouts,
  FMX.Effects, PDV.view.components.button;

type
  TCompomentsNavbar = class(TForm)
    LayoutContainer: TLayout;
    Rectangle1: TRectangle;
    ShadowEffect1: TShadowEffect;
    LayoutBotoes: TLayout;
    LayoutBotoes1: TLayout;
    LayoutMenu: TLayout;
    procedure FormCreate(Sender: TObject);
  private
      { Private declarations }
    procedure ClicarMenu(Sender: TObject);
  public
      { Public declarations }
    function Build: TFmxObject;
  end;

var
  CompomentsNavbar: TCompomentsNavbar;

implementation

{$R *.fmx}
  { TCompomentsNavbar }

function TCompomentsNavbar.Build: TFmxObject;
begin
  Result := LayoutContainer;
end;

procedure TCompomentsNavbar.ClicarMenu(Sender: TObject);
begin
  ShowMessage('Click do menu');
end;

procedure TCompomentsNavbar.FormCreate(Sender: TObject);
begin
  LayoutMenu.AddObject(TComponentButton.Create(Self).Imagem('img_menu').Click(ClicarMenu).Build);
  LayoutBotoes1.AddObject(TComponentButton.Create(Self).Imagem('img_loja').Click(ClicarMenu)
    .Align(TAlignLayout.Right).Build);
  LayoutBotoes1.AddObject(TComponentButton.Create(Self).Imagem('img_card').Click(ClicarMenu)
    .Align(TAlignLayout.Right).Build);
end;

end.
