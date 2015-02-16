unit BD.Vars;

interface

uses System.SysUtils, System.Classes;

type

  TGlobalVars = class(TObject)
  private
    FKlientID: Integer;
  public
    property KlientID: Integer read FKlientID write FKlientID;
  end;


var
  Global: TGlobalVars;

implementation

initialization
  Global := TGlobalVars.Create;

finalization
  Global.Free;

end.
