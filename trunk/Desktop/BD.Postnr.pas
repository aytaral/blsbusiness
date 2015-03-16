unit BD.Postnr;

interface

uses System.SysUtils, System.Classes, Data.DB, OXmlPDOM, BD.Kommune, BD.Land,
  Generics.Collections, System.TypInfo, BD.Handler, Spring.Collections;

type

  IPostnr = interface(ILand)
    ['{DFD4303D-5509-4407-8E68-681410898768}']
    function GetPostnr: String;
    procedure SetPostnr(const Value: String);
    function GetPoststed: String;
    procedure SetPoststed(const Value: String);

    property Postnr: String read GetPostnr write SetPostnr;
    property Poststed: String read GetPoststed write SetPoststed;
  end;

  TBasePostnr = class
  private
    FPostnr: String;
    FPoststed: String;
  protected
    function GetPostnr: String;
    function GetPoststed: String;
    procedure SetPostnr(const Value: String);
    procedure SetPoststed(const Value: String);
  public
    property Postnr: String read GetPostnr write SetPostnr;
    property Poststed: String read GetPoststed write SetPoststed;
  end;


  TPostnr = class(TObject)
  private
    FPostnr: String;
    FPoststed: String;
    FLandKode: String;
    FKommunenr: String;
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
    class function Load(PostnrNode: PXMLNode;
      const Mapping: TMapList): TPostnr;
    class function NewPostnrListe: TPostnrListe;
  end;

implementation

{ TPostnrHandler }

class function TPostnrHandler.Load(PostnrNode: PXMLNode;
  const Mapping: TMapList): TPostnr;
begin
  LoadFromXML<TPostnr>(PostnrNode, Mapping);
end;

class function TPostnrHandler.NewPostnrListe: TPostnrListe;
begin
  Result := TCollections.CreateObjectList<TPostnr>;
end;

{ TBasePostnr }

function TBasePostnr.GetPostnr: String;
begin
  Result := FPostnr;
end;

function TBasePostnr.GetPoststed: String;
begin
  Result := FPoststed;
end;

procedure TBasePostnr.SetPostnr(const Value: String);
begin
  FPostnr := Value;
end;

procedure TBasePostnr.SetPoststed(const Value: String);
begin
  FPoststed := Value;
end;

end.
