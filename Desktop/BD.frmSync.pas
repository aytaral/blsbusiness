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
  FireDAC.Comp.Client;

type
  TIterator = procedure (ANode: PXMLNode) of Object;

  TfrmDataSync = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    FDQuery1: TFDQuery;
    procedure Button1Click(Sender: TObject);
  private
    procedure GetPage(Url: String; const Lines: TStrings);
    procedure IterateXml(Url, StartPath: String; Iterator: TIterator);
    procedure IterateFylker(AFylke: PXMLNode);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDataSync: TfrmDataSync;

implementation

uses BD.Settings, BD.Fylke, BD.Utils;

{$R *.dfm}

procedure TfrmDataSync.IterateFylker(AFylke: PXMLNode);
var
  S: String;
  MyFylke: TFylke;
  Map: TMapList;
begin
  Map := TDictionary<String, String>.Create;
  Map.Add('Fylkenr', 'nummer');
  Map.Add('Fylke', 'navn');

  MyFylke := TFylkeHandler.LoadFromXMLNode(AFylke, Map);
  if MyFylke <> nil then
    ShowMessage(MyFylke.Fylke);

  Map.Free;
end;

procedure TfrmDataSync.Button1Click(Sender: TObject);
var
  I: Integer;
  S: String;
  L: TList;

begin
  IterateXml(Settings.DataURL + 'xml/difi/geo/fylke', 'entries', IterateFylker);
//  IterateXml(Settings.DataURL + 'xml/difi/geo/kommune', 'entries', IterateFylker);
//  IterateXml(Settings.DataURL + 'xml/brreg/organisasjonsform', 'entries', IterateFylker);
//  IterateXml(Settings.DataURL + 'xml/brreg/sektorkode', 'entries', IterateFylker);
//  IterateXml(Settings.DataURL + 'xml/brreg/naeringskode', 'entries', IterateFylker);
//
//  for I := 0 to 9 do
//    IterateXml('http://adressesok.posten.no/api/v1/postal_codes.xml?postal_code=' + IntToStr(I) + '*', 'entries', IterateFylker);
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

  Xml.DocumentElement.SelectNode(StartPath, INode);
  if INode <> nil then
    for I := 0 to INode.ChildNodes.Count -1 do
      Iterator(INode.ChildNodes[I]);
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
