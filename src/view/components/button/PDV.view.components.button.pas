unit PDV.view.components.button;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts, FMX.Controls.Presentation, FMX.StdCtrls,
  FMX.Objects, PDV.view.source.utils;

type
  TComponentButton = class(TForm)
    LayoutContainer: TLayout;
    Image1: TImage;
    btnCmpButton: TSpeedButton;
    procedure btnCmpButtonClick(Sender: TObject);
  private
    { Private declarations }
    FClick: TProc<TObject>;
  public
    { Public declarations }
    function Build: TFmxObject;
    function Imagem(Value: string): TComponentButton;
    function Click(Value: TProc<TObject>):TComponentButton;
    function Align(Value: TAlignLayout):TComponentButton;
  end;

var
  ComponentButton: TComponentButton;

implementation

{$R *.fmx}

{ TComponentButton }

function TComponentButton.Align(Value: TAlignLayout): TComponentButton;
begin
  Result := Self;
  LayoutContainer.Align := TAlignLayout.None;
  LayoutContainer.Align := Value;
end;

procedure TComponentButton.btnCmpButtonClick(Sender: TObject);
begin
  if Assigned(FClick) then
    FClick(Sender);
end;

function TComponentButton.Build: TFmxObject;
begin
  Result := LayoutContainer;
end;

function TComponentButton.Click(Value: TProc<TObject>): TComponentButton;
begin
  Result := Self;
  FClick := Value;
end;

function TComponentButton.Imagem(Value: string): TComponentButton;
begin
  Result := Self;
  TUtils.ResorceImage(Value, Image1);
end;

end.
