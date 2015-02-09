unit BD.Kommune;

interface

uses System.SysUtils, System.Classes, Data.DB, OXmlPDOM, BD.Fylke,
  Generics.Collections, System.TypInfo, BD.Handler, Spring.Collections;

type

  TKommune = class(TObject)
  private
    FKommunenr: String;
    FKommune: String;
    FFylkenr: String;
    FFylke: TFylke;
  public
    function GetFylkeNavn: String;
  published
    property Kommunenr: String read FKommunenr write FKommunenr;
    property Kommune: String read FKommune write FKommune;
    property Fylkenr: String read FFylkenr write FFylkenr;
    property Fylke: TFylke read FFylke write FFylke;
  end;

  TKommuneListe = IList<TKommune>;

  TKommuneHandler = class(THandler)
    class function LoadFromXMLNode(KommuneNode: PXMLNode;
      const Mapping: TMapList): TKommune;
    class function LinkToFylke(AKommune: TKommune;
      FylkeListe: TFylkeListe): Boolean;
    class function NewKommuneListe: TKommuneListe;
  end;


implementation

{ TKommuneHandler }

class function TKommuneHandler.LinkToFylke(AKommune: TKommune;
  FylkeListe: TFylkeListe): Boolean;
var
  F: TFylke;
begin
  if FylkeListe.TryGetSingle(F,
      function(const AFylke: TFylke): Boolean begin
        Result := (AFylke.Fylkenr = AKommune.Fylkenr);
      end
    ) then AKommune.Fylke := F;
end;

class function TKommuneHandler.LoadFromXMLNode(KommuneNode: PXMLNode;
  const Mapping: TMapList): TKommune;
var
  ANode: PXMLNode;
  AKommune: TKommune;
  Key: String;
begin
  Result := nil;

  AKommune := TKommune.Create;
  for Key in Mapping.Keys do
    if KommuneNode.SelectNode(Mapping.Items[Key], ANode) then
      SetPropValue(AKommune, Key, ANode.Text);

  if AKommune.Kommune <> '' then
    Result := AKommune;
end;

class function TKommuneHandler.NewKommuneListe: TKommuneListe;
begin
  Result := NewObjectList<TKommune>;
end;

{ TKommune }

function TKommune.GetFylkeNavn: String;
begin
  Result := '';
  if Fylke <> nil then
    Result := Fylke.Fylke;
end;

end.
