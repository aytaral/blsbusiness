unit BD.frmSync;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP,
  Vcl.StdCtrls, OXmlPDOM, Generics.Collections,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, BD.Fylke, BD.Kommune, BD.Postnr, BD.Utils, Vcl.ComCtrls;

type
  TIterator = procedure (ANode: PXMLNode) of Object;

  TfrmDataSync = class(TForm)
    btnSync: TButton;
    pbSync: TProgressBar;
    Label1: TLabel;
    lblOperation: TLabel;
    procedure btnSyncClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    Map: TMapList;
    FylkeListe: TFylkeListe;
    KommuneListe: TKommuneListe;
    PostnrListe: TPostnrListe;
    procedure GetPage(Url: String; const Lines: TStrings);
    procedure IterateXml(Url, StartPath: String; Iterator: TIterator);
    procedure IterateFylke(AFylke: PXMLNode);
    procedure IterateKommune(AKommune: PXMLNode);
    procedure SyncFylker;
    procedure SyncKommuner;
    procedure SyncPostnr;
    procedure IteratePostnr(APostnr: PXMLNode);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDataSync: TfrmDataSync;

implementation

uses BD.Settings, Spring.Collections, BD.dmData;

{$R *.dfm}

procedure TfrmDataSync.IterateFylke(AFylke: PXMLNode);
var
  MyFylke: TFylke;
begin
  MyFylke := TFylkeHandler.LoadFromXMLNode(AFylke, Map);
  if MyFylke <> nil then
    FylkeListe.Add(MyFylke);
end;

procedure TfrmDataSync.IterateKommune(AKommune: PXMLNode);
var
  MyKommune: TKommune;
begin
  MyKommune := TKommuneHandler.LoadFromXMLNode(AKommune, Map);
  if MyKommune <> nil then begin
    TKommuneHandler.LinkToFylke(MyKommune, FylkeListe);
    KommuneListe.Add(MyKommune);
  end;
end;

procedure TfrmDataSync.IteratePostnr(APostnr: PXMLNode);
var
  MyPostnr: TPostnr;
  KNavn, FNavn: String;
  FKommune: TKommune;
  KNode: PXMLNode;
begin
  MyPostnr := TPostnrHandler.LoadFromXMLNode(APostnr, Map);
  if MyPostnr <> nil then begin

    //Linker til kommune
    if APostnr.SelectNode('primary_municipality', KNode) then begin
      KNavn := KNode.Text;

      //Henter ut fylke
      if APostnr.SelectNode('primary_county', KNode) then begin
        FNavn := KNode.Text;

        if KommuneListe.TryGetSingle(FKommune,
          function(const AKommune: TKommune): Boolean
          begin
            Result := ((AnsiUpperCase(AKommune.Kommune) = KNavn) and
                       (AnsiUpperCase(AKommune.GetFylkeNavn) = FNavn));
          end) then
          MyPostnr.Kommune := FKommune
        else
          MyPostnr.Kommune := nil;

      end;
    end;

    PostnrListe.Add(MyPostnr);
  end;
end;

procedure TfrmDataSync.SyncFylker;
var
  MyFylke: TFylke;
begin
  //Mapping av XML mot object-properties (Dest.Field = Src.Field)
  Map.Clear;
  Map.Add('Fylkenr', 'nummer');
  Map.Add('Fylke', 'navn');
  IterateXml(Settings.DataURL + 'xml/difi/geo/fylke', 'entries', IterateFylke);

  //Mapping av XML mot database (Dest.Field = Src.Field)
  Map.Clear;
  Map.Add('Fylkenr', 'Fylkenr');
  Map.Add('Fylke', 'Fylke');
  dmData.fdFylke.Open;
  for MyFylke in FylkeListe do
    TFylkeHandler.MergeIntoDatabase(MyFylke, dmData.fdFylke, Map, 'Fylkenr');
  dmData.fdFylke.ApplyUpdates();
  dmData.fdFylke.CommitUpdates;
  dmData.fdFylke.Close;
end;

procedure TfrmDataSync.SyncKommuner;
var
  MyKommune: TKommune;
  I: Integer;
begin
  //Mapping av XML mot object-properties (Dest.Field = Src.Field)
  Map.Clear;
  Map.Add('Fylkenr', 'fylke');
  Map.Add('Kommune', 'navn');
  Map.Add('Kommunenr', 'kommune');

  for I := 0 to 9 do
    IterateXml(Settings.DataURL + 'xml/difi/geo/kommune?page=' + IntToStr(I),
      'entries', IterateKommune);

  //Mapping av XML mot database (Dest.Field = Src.Field)
  Map.Clear;
  Map.Add('Kommunenr', 'Kommunenr');
  Map.Add('Kommune', 'Kommune');
  dmData.fdKommune.Open;
  for MyKommune in KommuneListe do
    TKommuneHandler.MergeIntoDatabase(MyKommune, dmData.fdKommune, Map, 'Kommunenr');
  dmData.fdKommune.ApplyUpdates();
  dmData.fdKommune.CommitUpdates;
  dmData.fdKommune.Close;
end;

procedure TfrmDataSync.SyncPostnr;
var
  I: Integer;
  MyPostnr: TPostnr;
begin
  //Mapping av XML mot object-properties (Dest.Field = Src.Field)
  Map.Clear;
  Map.Add('Postnr', 'postal_code');
  Map.Add('Poststed', 'city');
  //Map.Add('Kommune', 'primary_municipality');

  for I := 0 to 9 do
    IterateXml('http://adressesok.posten.no/api/v1/postal_codes.xml?postal_code=' +
      IntToStr(I) + '*', '', IteratePostnr);

  //Mapping av XML mot database (Dest.Field = Src.Field)
  Map.Clear;
  Map.Add('Postnr', 'Postnr');
  Map.Add('Poststed', 'Poststed');
  Map.Add('Kommunenr', 'Kommune.Kommunenr');
  Map.Add('LandKode', 'LandKode');
  dmData.fdPostnr.Open;
  for MyPostnr in PostnrListe do begin
    MyPostnr.LandKode := 'NO';
    TPostnrHandler.MergeIntoDatabase(MyPostnr, dmData.fdPostnr, Map, 'Postnr');
  end;
  dmData.fdPostnr.ApplyUpdates();
  dmData.fdPostnr.CommitUpdates;
  dmData.fdPostnr.Close;
end;

procedure TfrmDataSync.btnSyncClick(Sender: TObject);
begin
  pbSync.State := pbsNormal;
  pbSync.Update;

  lblOperation.Caption := 'Behandler fylker ...';
  lblOperation.Update;
  SyncFylker;

  lblOperation.Caption := 'Behandler kommuner ...';
  lblOperation.Update;
  SyncKommuner;

  lblOperation.Caption := 'Behandler postnummer ...';
  lblOperation.Update;
  SyncPostnr;

  pbSync.State := pbsPaused;

  //IterateXml(Settings.DataURL + 'xml/brreg/organisasjonsform', 'entries', IterateFylker);
  //IterateXml(Settings.DataURL + 'xml/brreg/sektorkode', 'entries', IterateFylker);
  //IterateXml(Settings.DataURL + 'xml/brreg/naeringskode', 'entries', IterateFylker);
  //http://hotell.difi.no/api/xml/brreg/enhetsregisteret
end;

procedure TfrmDataSync.IterateXml(Url, StartPath: String; Iterator: TIterator);
var
  Xml: IXMLDocument;
  Sl: TStringList;
  INode: PXMLNode;
  I: Integer;
begin
  Xml := CreateXMLDoc;
  Sl := TStringList.Create;
  try
    GetPage(Url, Sl);
    Xml.LoadFromXML(Sl.Text);
  finally
    Sl.Free;
  end;

  if StartPath <> '' then
    Xml.DocumentElement.SelectNode(StartPath, INode)
  else
    INode := Xml.DocumentElement;

  if INode <> nil then
    for I := 0 to INode.ChildNodes.Count -1 do
      Iterator(INode.ChildNodes[I]);
end;

procedure TfrmDataSync.FormCreate(Sender: TObject);
begin
  //Felles lister
  Map := TMapList.Create;
  FylkeListe := TFylkeHandler.NewObjectList<TFylke>;
  KommuneListe := TKommuneHandler.NewKommuneListe;
  PostnrListe := TPostnrHandler.NewPostnrListe;
end;

procedure TfrmDataSync.FormDestroy(Sender: TObject);
begin
  Map.Free;
end;

procedure TfrmDataSync.GetPage(Url: String; const Lines: TStrings);
var Ms: TMemoryStream;
    IdHttp: TIdHttp;
begin
  IdHttp := TIdHttp.Create(nil);
  IdHttp.HandleRedirects := True;
  Ms := TMemoryStream.Create;
  try
    IdHTTP.Get(Url, Ms);
    Ms.Position := 0;

    Lines.LoadFromStream(Ms, TEncoding.UTF8);
  finally
    Ms.Free;
    IdHttp.Free;
  end;
end;


end.
