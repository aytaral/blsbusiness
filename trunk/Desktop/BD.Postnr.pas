unit BD.Postnr;

interface

uses System.SysUtils, System.Classes, Data.DB, OXmlPDOM, BD.Kommune,
  Generics.Collections, System.TypInfo, BD.Handler, Spring.Collections;

type

  TPostnr = class(TObject)
  private
    FKommunenr: String;
    FPostnr: String;
    FPoststed: String;
    FLandKode: String;
    FKommune: TKommune;
  published
    property Postnr: String read FPostnr write FPostnr;
    property Poststed: String read FPoststed write FPoststed;
    property LandKode: String read FLandKode write FLandKode;
    property Kommunenr: String read FKommunenr write FKommunenr;
    property Kommune: TKommune read FKommune write FKommune;
  end;

  TPostnrListe = IList<TPostnr>;

  TPostnrHandler = class(THandler)
    class function LoadFromXMLNode(PostnrNode: PXMLNode;
      const Mapping: TMapList): TPostnr;
    class function LinkToKommune(APostnr: TPostnr;
      KommuneListe: TKommuneListe): Boolean;
    class function NewPostnrListe: TPostnrListe;
  end;



implementation

{ TPostnrHandler }

class function TPostnrHandler.LinkToKommune(APostnr: TPostnr;
  KommuneListe: TKommuneListe): Boolean;
begin

end;

class function TPostnrHandler.LoadFromXMLNode(PostnrNode: PXMLNode;
  const Mapping: TMapList): TPostnr;
var
  ANode: PXMLNode;
  APostnr: TPostnr;
  Key: String;
begin
  Result := nil;

  APostnr := TPostnr.Create;
  for Key in Mapping.Keys do
    if PostnrNode.SelectNode(Mapping.Items[Key], ANode) then
      SetPropValue(APostnr, Key, ANode.Text);

  if APostnr.Postnr <> '' then
    Result := APostnr;
end;

class function TPostnrHandler.NewPostnrListe: TPostnrListe;
begin
  Result := NewObjectList<TPostnr>;
end;


end.
