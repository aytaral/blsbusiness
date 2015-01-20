unit BD.Postnr;

interface

uses System.SysUtils, System.Classes, Data.DB, OXmlPDOM, BD.Kommune,
  Generics.Collections, System.TypInfo, BD.Utils, Spring.Collections;

type

  TPostnr = class(TObject)
  private
    FKommunenr: String;
    FPostnr: String;
    FPoststed: String;
    FLandKode: String;
    FKommune: TKommune;
  published
    property Kommunenr: String read FKommunenr write FKommunenr;
    property Postnr: String read FPostnr write FPostnr;
    property Poststed: String read FPoststed write FPoststed;
    property LandKode: String read FLandKode write FLandKode;
    property Kommune: TKommune read FKommune write FKommune;
  end;

  TPostnrListe = IList<TPostnr>;

implementation

end.
