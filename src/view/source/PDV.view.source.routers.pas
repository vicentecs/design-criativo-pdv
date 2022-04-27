unit PDV.view.source.Routers;

interface

uses
  Router4D, PDV.view.pages.app;

type
  TRouters = class
  private
  public
    constructor Create;
    destructor Destroy; override;
  end;

var
  Routers: TRouters;

implementation

  { TRouter }

constructor TRouters.Create;
begin
  TRouter4D.Switch.Router('App', TPageApp);
end;

destructor TRouters.Destroy;
begin

  inherited;
end;

initialization

Routers := TRouters.Create;

finalization

Routers.Free

end.
