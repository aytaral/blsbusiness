unit BD.Kontakt;

interface

uses System.Classes, System.SysUtils, BD.Adresse, BD.Land;

type
  IKontakt = interface
    ['{E8AE44F1-EC6E-466A-A378-E7437DFC9523}']

  end;

  TKontakt = class
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
    function GetPostAdresse: IAdresse;
  public
    constructor Create;
  published
    property Navn: String read GetNavn write SetNavn;
    property KlientID: Integer read GetKlientID write SetKlientID;
    property Kontaktnr: Integer read GetKontaktnr write SetKontaktnr;
    property PostAdresse: IAdresse read GetPostAdresse;
    property BesokAdresse: TAdresse read GetBesokAdresse;
  end;

implementation

{ Kontakt }

constructor TKontakt.Create;
begin
  FPAdresse := TAdresse.Create;
  FBAdresse := TAdresse.Create;
end;

function TKontakt.GetBesokAdresse: TAdresse;
begin
  Result := FBAdresse;
end;

function TKontakt.GetKlientID: Integer;
begin
  Result := FKlientID;
end;

function TKontakt.GetKontaktnr: Integer;
begin
  Result := FKontaktnr;
end;

function TKontakt.GetNavn: String;
begin
  Result := FNavn;
end;

function TKontakt.GetPostAdresse: IAdresse;
begin
  Result := FPAdresse;
end;

procedure TKontakt.SetKlientID(const Value: Integer);
begin
  FKlientID := Value;
end;

procedure TKontakt.SetKontaktnr(const Value: Integer);
begin
  FKontaktnr := Value;
end;

procedure TKontakt.SetNavn(const Value: String);
begin
  FNavn := Value;
end;

end.
