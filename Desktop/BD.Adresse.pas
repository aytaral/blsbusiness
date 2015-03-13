unit BD.Adresse;

interface

uses System.Classes, System.SysUtils, BD.Postnr, BD.Land;

type
  IAdresse = interface
    ['{88446A75-3C46-4F83-8B03-FFC7F238839C}']
    function GetAdresse: TStrings;
    function GetFullAdresse: TStrings;
    function GetLine(Index: Integer): String;
    procedure SetLine(Index: Integer; const Value: string);

    property Line[Index: Integer]: String read GetLine write SetLine;
  end;

  TAdresse = class(TInterfacedObject, IAdresse, IPostnr, ILand)
  private
    FAdresse: TStrings;
    FLine: array [0..1] of String;
    FPostnr: String;
    FPoststed: String;
    FLandkode: String;
    FLand: String;
  protected
    function GetLand: String;
    function GetLandkode: String;
    procedure SetLand(const Value: String);
    procedure SetLandkode(const Value: String);
    function GetPostnr: String;
    procedure SetPostnr(const Value: String);
    function GetPoststed: String;
    procedure SetPoststed(const Value: String);
    function GetLine(Index: Integer): String;
    procedure SetLine(Index: Integer; const Value: string);
  public
    constructor Create;
    destructor Destroy; override;
    function GetAdresse: TStrings;
    function GetFullAdresse: TStrings;
    property Line[Index: Integer]: String read GetLine write SetLine;
    property Postnr: String read GetPostnr write SetPostnr;
    property Poststed: String read GetPoststed write SetPoststed;
    property Landkode: String read GetLandkode write SetLandkode;
    property Land: String read GetLand write SetLand;
  end;

implementation

{ TAdresse }

constructor TAdresse.Create;
begin
  FAdresse := TStringList.Create;
end;

destructor TAdresse.Destroy;
begin
  FAdresse.Free;
  inherited;
end;

function TAdresse.GetAdresse: TStrings;
var
  I: Integer;
begin
  FAdresse.Clear;
  //Generer full adresse
  for I := Low(FLine) to High(FLine) do
    FAdresse.Add(FLine[I]);
  FAdresse.Add(FLandkode +  '-' + FPostnr + ' ' + FPostSted);
  Result := FAdresse;
end;

function TAdresse.GetFullAdresse: TStrings;
begin
  GetAdresse;
  FAdresse.Add(FLand);
  Result := FAdresse;
end;

function TAdresse.GetLand: String;
begin
  Result := FLand;
end;

function TAdresse.GetLandkode: String;
begin
  Result := FLandkode;
end;

function TAdresse.GetLine(Index: Integer): String;
begin
  if (Index > High(FLine)) or (Index < Low(FLine)) then Exit;
  Result := FLine[Index];
end;

function TAdresse.GetPostnr: String;
begin
  Result := FPostnr;
end;

function TAdresse.GetPoststed: String;
begin
  Result := FPoststed;
end;

procedure TAdresse.SetLand(const Value: String);
begin
  FLand := Value;
end;

procedure TAdresse.SetLandkode(const Value: String);
begin
  FLandkode := Value;
end;

procedure TAdresse.SetLine(Index: Integer; const Value: string);
begin
  if (Index > High(FLine)) or (Index < Low(FLine)) then Exit;
  FLine[Index] := Value;
end;

procedure TAdresse.SetPostnr(const Value: String);
begin
  FPostnr := Value;
end;

procedure TAdresse.SetPoststed(const Value: String);
begin
  FPoststed := Value;
end;

end.
