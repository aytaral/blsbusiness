unit BD.dmData;

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
    fdFylke: TFDQuery;
    fdKommune: TFDQuery;
    fdPostnr: TFDQuery;
    fdPrintType: TFDQuery;
    dsPrintType: TDataSource;
    fdLand: TFDQuery;
    dsLand: TDataSource;
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

uses BD.Settings;

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
