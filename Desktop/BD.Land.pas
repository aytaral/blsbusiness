unit BD.Land;

interface

uses System.Classes;

type

  ILand = interface
    ['{ABEEBA05-A6B9-4B80-84CF-C2CE12327CEF}']
    function GetLandkode: String;
    procedure SetLandkode(const Value: String);
    function GetLand: String;
    procedure SetLand(const Value: String);

    property Landkode: String read GetLandkode write SetLandkode;
    property Land: String read GetLand write SetLand;
  end;

  TLand = class(TInterfacedObject, ILand)
  private
    FLandKode: String;
    FLand: String;
  protected
    function GetLand: String;
    function GetLandkode: String;
    procedure SetLand(const Value: String);
    procedure SetLandkode(const Value: String);
  published
    property Landkode: String read GetLandkode write SetLandkode;
    property Land: String read GetLand write SetLand;
  end;

implementation

{ TLand }

function TLand.GetLand: String;
begin
  Result := FLand;
end;

function TLand.GetLandKode: String;
begin
  Result := FLandKode;
end;

procedure TLand.SetLand(const Value: String);
begin
  FLand := Value;
end;

procedure TLand.SetLandKode(const Value: String);
begin
  FLandKode := Value;
end;

end.
