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

  TFylkeHandler = class(THandler)
    class function LoadFromXMLNode(FylkeNode: PXMLNode;
      const Mapping: TMapList): TFylke;
    class function NewFylkeListe: TFylkeListe;
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

class function TFylkeHandler.NewFylkeListe: TFylkeListe;
begin
  Result := NewObjectList<TFylke>;
end;

end.
