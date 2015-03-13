unit BD.Kontakt;

interface

uses System.Classes, System.SysUtils, BD.Adresse, BD.Land;

type
  Kontakt = class
  private
    FNavn: String;
    FKlientID: Integer;
    FKontaktnr: Integer;
    FPAdresse: TAdresse;
    FBAdresse: TAdresse;
  protected
    function GetKlientID: Integer;
    function GetKontaktnr: Integer;
    function GetNavn: String;
    procedure SetKlientID(const Value: Integer);
    procedure SetKontaktnr(const Value: Integer);
    procedure SetNavn(const Value: String);
    function GetBesokAdresse: TAdresse;
    function GetPostAdresse: TAdresse;
  public
    constructor Create;
  published
    property Navn: String read GetNavn write SetNavn;
    property KlientID: Integer read GetKlientID write SetKlientID;
    property Kontaktnr: Integer read GetKontaktnr write SetKontaktnr;
    property PostAdresse: TAdresse read GetPostAdresse;
    property BesokAdresse: TAdresse read GetBesokAdresse;
  end;

implementation

{ Kontakt }

constructor Kontakt.Create;
begin
  FPAdresse := TAdresse.Create;
  FBAdresse := TAdresse.Create;
end;

function Kontakt.GetBesokAdresse: TAdresse;
begin
  Result := FBAdresse;
end;

function Kontakt.GetKlientID: Integer;
begin
  Result := FKlientID;
end;

function Kontakt.GetKontaktnr: Integer;
begin
  Result := FKontaktnr;
end;

function Kontakt.GetNavn: String;
begin
  Result := FNavn;
end;

function Kontakt.GetPostAdresse: TAdresse;
begin
  Result := FPAdresse;
end;

procedure Kontakt.SetKlientID(const Value: Integer);
begin
  FKlientID := Value;
end;

procedure Kontakt.SetKontaktnr(const Value: Integer);
begin
  FKontaktnr := Value;
end;

procedure Kontakt.SetNavn(const Value: String);
begin
  FNavn := Value;
end;

end.
