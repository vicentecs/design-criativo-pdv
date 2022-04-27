unit PDV.view.source.utils;

interface

uses
  FMX.Objects, System.Classes, System.Types;

type

  TUtils = class
  public
    class procedure ResorceImage(const Resorce: string; var Image: TImage);
  end;

implementation

{ TUtils }

class procedure TUtils.ResorceImage(const Resorce: string; var Image: TImage);
var
  lResource: TResourceStream;
begin
  lResource := TResourceStream.Create(HInstance, Resorce, RT_RCDATA);
  try
    Image.Bitmap.LoadFromStream(lResource);
  finally
    lResource.Free;
  end;
end;

end.
