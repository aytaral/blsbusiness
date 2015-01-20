unit Business.Fylke;

interface

uses System.SysUtils, System.Classes, Xml.XMLIntf, Data.DB, OXmlPDOM,
  Generics.Collections, System.TypInfo, Business.Utils;

type

  TFylke = class(TObject)
  private
    FFylkenr: String;
    FFylke: String;
  published
    property Fylkenr: String read FFylkenr write FFylkenr;
    property Fylke: String read FFylke write FFylke;
  end;

  TFylkeListe = TObjectList<TFylke>;

  TFylkeHandler = class(TObject)
    class function LoadFromXMLNode(FylkeNode: PXMLNode;
      const Mapping: TMapList): TFylke;
    class function SetDatabaseFields(AFylke: TFylke; ADataSet: TDataSet;
      const Mapping: TMapList): Boolean;
  end;

  TKommune = class(TObject)
  private
    FKommunenr: String;
    FKommune: String;
    FFylke: TFylke;
  published
    property Kommunenr: String read FKommunenr write FKommunenr;
    property Kommune: String read FKommune write FKommune;
    property Fylke: TFylke read FFylke write FFylke;
  end;

  TKommuneListe = TObjectList<TKommune>;

implementation

{ TFylkeHandler }

class function TFylkeHandler.LoadFromXMLNode(FylkeNode: PXMLNode;
  const Mapping: TMapList): TFylke;
var
  ANode: PXMLNode;
  AFylke: TFylke;
  Key: String;
begin
  Result := nil;

  AFylke := TFylke.Create;
  for Key in Mapping.Keys do
    if FylkeNode.SelectNode(Mapping.Items[Key], ANode) then
      SetPropValue(AFylke, Key, ANode.Text);

  if AFylke.Fylke <> '' then
    Result := AFylke;
end;

class function TFylkeHandler.SetDatabaseFields(AFylke: TFylke;
  ADataSet: TDataSet; const Mapping: TMapList): Boolean;
var
  Key: String;
begin
  for Key in Mapping.Keys do
    ADataSet.FieldByName(Mapping.Items[Key]).AsVariant :=
      GetPropValue(AFylke, Key);
end;

end.
