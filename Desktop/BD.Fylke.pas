unit BD.Fylke;

interface

uses System.SysUtils, System.Classes, Data.DB, OXmlPDOM,
  Generics.Collections, System.TypInfo, BD.Handler, Spring.Collections;

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
    class function Load(FylkeNode: PXMLNode; const Mapping: TMapList): TFylke;
    class function NewFylkeListe: TFylkeListe;
  end;

implementation

{ TFylkeHandler }

class function TFylkeHandler.Load(FylkeNode: PXMLNode;
  const Mapping: TMapList): TFylke;
begin
  Result := LoadFromXML<TFylke>(FylkeNode, Mapping);
end;

class function TFylkeHandler.NewFylkeListe: TFylkeListe;
begin
  Result := TCollections.CreateObjectList<TFylke>;
end;

end.
