unit buPostnr;

interface

uses System.SysUtils, System.Classes, Xml.XMLIntf, Data.DB, OXmlPDOM;

type

  TFylke = class(TObject)
  private
    FFylkenr: String;
    FFylke: String;
  public
    property Fylkenr: String read FFylkenr write FFylkenr;
    property Fylke: String read FFylke write FFylke;
  end;

  TFylkeHandler = class(TObject)
    class function LoadFromXMLNode(FylkeNode: PXMLNode): TFylke;
    class function SaveToDatabase(ADataSet: TDataSet; AFylke: TFylke): Boolean;
  end;

implementation

{ TFylkeHandler }

class function TFylkeHandler.LoadFromXMLNode(FylkeNode: PXMLNode): TFylke;
var
  ANode: PXMLNode;
  AFylke: TFylke;
begin
  Result := nil;

  AFylke := TFylke.Create;
  if FylkeNode.SelectNode('nummer', ANode) then
    AFylke.Fylkenr := ANode.Text;
  if FylkeNode.SelectNode('navn', ANode) then
    AFylke.Fylke := ANode.Text;

  if AFylke.Fylke <> '' then
    Result := AFylke;
end;

class function TFylkeHandler.SaveToDatabase(ADataSet: TDataSet;
  AFylke: TFylke): Boolean;
begin
  if ADataSet.Locate('Fylkenr', AFylke.Fylkenr, []) then begin
    ADataSet.Edit;
    ADataSet.FieldByName('Fylke').AsString := AFylke.Fylke;
    ADataSet.Post;
  end
  else begin
    ADataSet.Insert;
    ADataSet.FieldByName('Fylkenr').AsString := AFylke.Fylkenr;
    ADataSet.FieldByName('Fylke').AsString := AFylke.Fylke;
    ADataSet.Post;
  end;
end;

end.
