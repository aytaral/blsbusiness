unit buData;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, Data.DB,
  FireDAC.Comp.Client, FireDAC.Phys.MSSQL, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.VCLUI.Wait, FireDAC.Comp.UI,
  FireDAC.Phys.ODBCBase, FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TdmData = class(TDataModule)
    FDConn: TFDConnection;
    FDCmd: TFDCommand;
    FDPhysMSSQLDriverLink: TFDPhysMSSQLDriverLink;
    FDGUIxWaitCursor: TFDGUIxWaitCursor;
    fdKontakt: TFDQuery;
    dsKontakt: TDataSource;
    fdKontaktKlientID: TIntegerField;
    fdKontaktKontaktnr: TIntegerField;
    fdKontaktNavn: TStringField;
    fdKontaktPostAdr1: TStringField;
    fdKontaktPostAdr2: TStringField;
    fdKontaktPostnr: TStringField;
    fdKontaktBesokAdr1: TStringField;
    fdKontaktBesokAdr2: TStringField;
    fdKontaktBesokPostnr: TStringField;
    fdKontaktLandKode: TStringField;
    fdKontaktOrgnr: TStringField;
    fdKontaktTelefon: TStringField;
    fdKontaktFaks: TStringField;
    fdKontaktMobil: TStringField;
    fdKontaktEpost: TStringField;
    fdKontaktWeb: TStringField;
    fdKontaktBankkonto: TStringField;
    fdKontaktKontakt: TStringField;
    fdKontaktForfallsdager: TSmallintField;
    fdKontaktKreditt: TIntegerField;
    fdKontaktRabatt: TBCDField;
    fdKontaktInfo: TMemoField;
    fdKontaktSerieID: TStringField;
    fdKontaktKontaktTypeID: TSmallintField;
    fdKontaktSektorKode: TSmallintField;
    fdKontaktBransjeKode: TStringField;
    fdKontaktRegDato: TSQLTimeStampField;
    fdKontaktEndretDato: TSQLTimeStampField;
    fdKontaktAktiv: TSmallintField;
    fdKontaktBrukerID: TStringField;
    procedure FDConnBeforeConnect(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
    procedure fdKontaktNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmData: TdmData;

implementation

uses buSettings;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdmData.DataModuleCreate(Sender: TObject);
begin
  FDConn.Open;
end;

procedure TdmData.FDConnBeforeConnect(Sender: TObject);
begin
  FDConn.Params.Values['User_Name'] := Settings.Username;
  FDConn.Params.Values['Database'] := Settings.Database;
  FDConn.Params.Values['Password'] := Settings.Password;
  if Settings.Port = 0 then
    FDConn.Params.Values['Server'] := Settings.Server
  else
    FDConn.Params.Values['Server'] := Settings.Server + ',' + Settings.Port.ToString;
end;

procedure TdmData.fdKontaktNewRecord(DataSet: TDataSet);
begin
  fdKontaktSerieID.AsString := 'KS';
end;

end.
