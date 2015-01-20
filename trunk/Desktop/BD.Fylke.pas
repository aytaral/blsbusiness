unit BD.Fylke;

interface

uses System.SysUtils, System.Classes, Data.DB, OXmlPDOM,
  Generics.Collections, System.TypInfo, BD.Utils, Spring.Collections;

type

  TFylke = class(TObject)
  private
    FFylkenr: String;
    FFylke: String;
  published
    property Fylkenr: String read FFylkenr write FFylkenr;
    property Fylke: String read FFylke write FFylke;
  end;

  TFylkeListe = IList<TFylke>;

  TFylkeHandler = class(TObject)
    class function LoadFromXMLNode(FylkeNode: PXMLNode;
      const Mapping: TMapList): TFylke;
    class function SetDatabaseFields(AFylke: TFylke; ADataSet: TDataSet;
      const Mapping: TMapList): Boolean;
  end;

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
