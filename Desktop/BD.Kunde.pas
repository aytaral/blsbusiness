unit BD.Kunde;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Mask, ActnList, TB2Dock,
  TB2Toolbar, TBX, TB2Item, DBActns, DB, DBClient, Provider, ADODB,
  DBClientActns, Grids, DBGrids, JvExDBGrids, JvDBGrid, System.Actions,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid;

type
  TfrmKunde = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Pc: TPageControl;
    tsKunde: TTabSheet;
    tsMerknader: TTabSheet;
    tsKontakt: TTabSheet;
    tsOkonomi: TTabSheet;
    btnAvbryt: TButton;
    btnOK: TButton;
    GroupBox1: TGroupBox;
    dbeNavn: TDBEdit;
    Label1: TLabel;
    GroupBox2: TGroupBox;
    DBMemo1: TDBMemo;
    ActionList: TActionList;
    acFirst: TDataSetFirst;
    acPrior: TDataSetPrior;
    acNext: TDataSetNext;
    acLast: TDataSetLast;
    dspKunde: TDataSetProvider;
    cdsKunde: TClientDataSet;
    dsKunde: TDataSource;
    GroupBox3: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    GroupBox4: TGroupBox;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    GroupBox5: TGroupBox;
    DBLookupComboBox1: TDBLookupComboBox;
    Label9: TLabel;
    Label10: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label11: TLabel;
    dbeOrgnr: TDBEdit;
    Label13: TLabel;
    DBEdit10: TDBEdit;
    Label14: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    btnPostnr: TButton;
    btnBesokPostnr: TButton;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label12: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    adoGruppe: TADODataSet;
    dsGruppe: TDataSource;
    adoKundeType: TADODataSet;
    dsKundeType: TDataSource;
    dsMasterKunde: TDataSource;
    Label15: TLabel;
    Label16: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    GroupBox6: TGroupBox;
    GroupBox8: TGroupBox;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    DataSetCancel1: TDataSetCancel;
    DataSetPost1: TDataSetPost;
    acNy: TAction;
    GroupBox7: TGroupBox;
    Label20: TLabel;
    DBEdit1: TDBEdit;
    GroupBox9: TGroupBox;
    GroupBox10: TGroupBox;
    dblUtsendelse: TDBLookupComboBox;
    Label21: TLabel;
    acWebInfo: TAction;
    acSettings: TAction;
    DBCheckBox1: TDBCheckBox;
    dbgFordring: TJvDBGrid;
    dsFordringer: TDataSource;
    dspPerson: TDataSetProvider;
    cdsPerson: TClientDataSet;
    dsPerson: TDataSource;
    cdsPersonIDPERSON: TIntegerField;
    cdsPersonIDKLIENT: TIntegerField;
    cdsPersonKONTAKTNR: TIntegerField;
    cdsPersonNAVN: TStringField;
    cdsPersonEPOST: TStringField;
    cdsPersonTELEFON: TStringField;
    cdsPersonMOBIL: TStringField;
    cdsPersonINFO: TStringField;
    fdKunde: TFDQuery;
    fdFordringer: TFDQuery;
    fdPerson: TFDQuery;
    tvPerson: TcxGridDBTableView;
    dbgPersonLevel: TcxGridLevel;
    dbgPerson: TcxGrid;
    tvPersonIDPERSON: TcxGridDBColumn;
    tvPersonIDKLIENT: TcxGridDBColumn;
    tvPersonKONTAKTNR: TcxGridDBColumn;
    tvPersonNAVN: TcxGridDBColumn;
    tvPersonEPOST: TcxGridDBColumn;
    tvPersonTELEFON: TcxGridDBColumn;
    tvPersonMOBIL: TcxGridDBColumn;
    tvPersonINFO: TcxGridDBColumn;
    fdKundeKlientID: TIntegerField;
    fdKundeKontaktnr: TIntegerField;
    fdKundeNavn: TStringField;
    fdKundePostAdr1: TStringField;
    fdKundePostAdr2: TStringField;
    fdKundePostnr: TStringField;
    fdKundeBesokAdr1: TStringField;
    fdKundeBesokAdr2: TStringField;
    fdKundeBesokPostnr: TStringField;
    fdKundeLandKode: TStringField;
    fdKundeOrgnr: TStringField;
    fdKundeTelefon: TStringField;
    fdKundeFaks: TStringField;
    fdKundeMobil: TStringField;
    fdKundeEpost: TStringField;
    fdKundeWeb: TStringField;
    fdKundeBankkonto: TStringField;
    fdKundeKontakt: TStringField;
    fdKundeForfallsdager: TSmallintField;
    fdKundeKreditt: TIntegerField;
    fdKundeRabatt: TBCDField;
    fdKundeInfo: TMemoField;
    fdKundeSerieID: TStringField;
    fdKundeKontaktTypeID: TSmallintField;
    fdKundePrintID: TStringField;
    fdKundeSektorKode: TSmallintField;
    fdKundeBransjeKode: TStringField;
    fdKundeRegDato: TSQLTimeStampField;
    fdKundeEndretDato: TSQLTimeStampField;
    fdKundeAktiv: TSmallintField;
    fdKundeBrukerID: TStringField;
    cdsKundeKlientID: TIntegerField;
    cdsKundeKontaktnr: TIntegerField;
    cdsKundeNavn: TStringField;
    cdsKundePostAdr1: TStringField;
    cdsKundePostAdr2: TStringField;
    cdsKundePostnr: TStringField;
    cdsKundeBesokAdr1: TStringField;
    cdsKundeBesokAdr2: TStringField;
    cdsKundeBesokPostnr: TStringField;
    cdsKundeLandKode: TStringField;
    cdsKundeOrgnr: TStringField;
    cdsKundeTelefon: TStringField;
    cdsKundeFaks: TStringField;
    cdsKundeMobil: TStringField;
    cdsKundeEpost: TStringField;
    cdsKundeWeb: TStringField;
    cdsKundeBankkonto: TStringField;
    cdsKundeKontakt: TStringField;
    cdsKundeForfallsdager: TSmallintField;
    cdsKundeKreditt: TIntegerField;
    cdsKundeRabatt: TBCDField;
    cdsKundeInfo: TMemoField;
    cdsKundeSerieID: TStringField;
    cdsKundeKontaktTypeID: TSmallintField;
    cdsKundePrintID: TStringField;
    cdsKundeSektorKode: TSmallintField;
    cdsKundeBransjeKode: TStringField;
    cdsKundeRegDato: TSQLTimeStampField;
    cdsKundeEndretDato: TSQLTimeStampField;
    cdsKundeAktiv: TSmallintField;
    cdsKundeBrukerID: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dsMasterKundeDataChange(Sender: TObject; Field: TField);
    procedure dsKundeDataChange(Sender: TObject; Field: TField);
    procedure btnPostnrClick(Sender: TObject);
    procedure btnBesokPostnrClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure acNyExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure acWebInfoExecute(Sender: TObject);
    procedure dbeOrgnrChange(Sender: TObject);
    procedure acSettingsExecute(Sender: TObject);
    procedure cdsKundePOSTNRSetText(Sender: TField; const Text: string);
    procedure cdsKundeBESOKPOSTNRSetText(Sender: TField; const Text: string);
    procedure PcChange(Sender: TObject);
    procedure dbgFordringTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure cdsPersonNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    FKundenr: Integer;
    procedure VisNavButtons(Vis: Boolean);
    procedure OppdaterFraWeb(Data: String);
  public
    { Public declarations }
    NyKunde: Boolean;
    property Kundenr: Integer read FKundenr write FKundenr;
  end;

var
  frmKunde: TfrmKunde;

implementation

uses BD.dmMain, BD.dmData, BD.Vars; //rsData, rsPostnr, blsFileUtil, rsKundeBrReg, rsFunction, rsKontaktGruppe;

{$R *.dfm}

procedure TfrmKunde.FormCreate(Sender: TObject);
begin
  NyKunde := False;
//  adoKundeType.Open;
//  adoLand.Open;
//  adoUtsendelse.Open;
//  adoGruppe.Parameters.ParamValues['IdKlient'] := Global.KlientID;
//  adoGruppe.Open;

  fdKunde.Params.ParamValues['KlientId'] := Global.KlientID;
  fdKunde.Params.ParamValues['Kontaktnr'] := Kundenr;
  cdsKunde.Open;

  Pc.ActivePageIndex := 0;
end;

procedure TfrmKunde.FormDestroy(Sender: TObject);
begin
//  adoKundeType.Close;
//  adoGruppe.Close;
//  cdsKunde.Close;
//  adoLand.Close;
//  adoUtsendelse.Close;
//  adoFordringer.Close;
  cdsPerson.Close;
end;

procedure TfrmKunde.dsMasterKundeDataChange(Sender: TObject;
  Field: TField);
begin
  if cdsKunde.Active and (Field = nil) then begin
    cdsKunde.ApplyUpdates(-1);
    fdKunde.Params.ParamValues['Knr'] := dmMain.fqKunde.FieldValues['Kontaktnr'];  //Dm.cdsKundeKONTAKTNR.Value;
    cdsKunde.Refresh;
  end;
end;

procedure TfrmKunde.dsKundeDataChange(Sender: TObject; Field: TField);
begin
  if cdsKundeINFO.IsNull = False then
    tsMerknader.ImageIndex := 0
  else
    tsMerknader.ImageIndex := -1;

  if Field = nil then begin
    Caption := 'Registrering Kunde - ' + cdsKundeNAVN.Value;
  end;

  acNy.Enabled := cdsKundeNAVN.Value <> '';
  btnOK.Enabled := acNy.Enabled;
  acWebInfo.Enabled := cdsKundeOrgnr.IsNull = False;
end;

procedure TfrmKunde.btnPostnrClick(Sender: TObject);
begin
//  frmPostnr := TfrmPostnr.Create(Application);
//  if frmPostnr.ShowModal = mrOK then begin
//    cdsKunde.Edit;
//    cdsKundePOSTNR.Value := frmPostnr.cdsPostnrPOSTNR.Value;
//    cdsKunde.Post;
//  end;
//  frmPostnr.Release;
end;

procedure TfrmKunde.btnBesokPostnrClick(Sender: TObject);
begin
//  frmPostnr := TfrmPostnr.Create(Application);
//  if frmPostnr.ShowModal = mrOK then begin
//    cdsKunde.Edit;
//    cdsKundeBESOKPOSTNR.Value := frmPostnr.cdsPostnrPOSTNR.Value;
//    cdsKunde.Post;
//  end;
//  frmPostnr.Release;
end;

procedure TfrmKunde.cdsKundeBESOKPOSTNRSetText(Sender: TField;
  const Text: string);
begin
  if Text = '' then
    cdsKundeBESOKPOSTNR.Clear
  else
    cdsKundeBESOKPOSTNR.Value := Text;
end;

procedure TfrmKunde.cdsKundePOSTNRSetText(Sender: TField; const Text: string);
begin
  if Text = '' then
    cdsKundePOSTNR.Clear
  else
    cdsKundePOSTNR.Value := Text;
end;

procedure TfrmKunde.cdsPersonNewRecord(DataSet: TDataSet);
begin
//  Dm.spPersonID.Open;
//  cdsPersonIDPERSON.Value := Dm.spPersonIDIDPERSON.Value;
//  Dm.spPersonID.Close;
//  cdsPersonIDKLIENT.Value := Dm.g_KlientID;
//  cdsPersonKONTAKTNR.Value := cdsKundeKONTAKTNR.Value;
end;

procedure TfrmKunde.btnOKClick(Sender: TObject);
begin
  if cdsKunde.State in [dsEdit, dsInsert] then
    cdsKunde.Post;
  cdsKunde.ApplyUpdates(-1);

  if cdsPerson.Active then begin
    if cdsPerson.State in [dsEdit, dsInsert] then
      cdsPerson.Post;
    cdsPerson.ApplyUpdates(-1);
  end;

  ModalResult := mrOK;
end;

procedure TfrmKunde.acNyExecute(Sender: TObject);
begin
//  if cdsKunde.State in [dsEdit, dsInsert] then begin
//    cdsKunde.Post;
//  end;
//  cdsKunde.ApplyUpdates(-1);
//  Dm.cdsKunde.RefreshRecord;
//
//  NyKunde := True;
//  VisNavButtons(False);
//  Dm.cdsKunde.Append;
//  Dm.cdsKunde.Post;
//  Dm.cdsKunde.ApplyUpdates(-1);
//  Dm.cdsKunde.RefreshRecord;
//  dbeNavn.SetFocus;
end;

procedure TfrmKunde.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (ModalResult <> mrOK) and cdsKunde.Active then
    cdsKunde.CancelUpdates;
end;

procedure TfrmKunde.VisNavButtons(Vis: Boolean);
begin
  acFirst.Visible := Vis;
  acNext.Visible := Vis;
  acLast.Visible := Vis;
  acPrior.Visible := Vis;
end;

procedure TfrmKunde.FormShow(Sender: TObject);
begin
  VisNavButtons(not NyKunde);
  dbeNavn.SetFocus;
end;

procedure TfrmKunde.dbgFordringTitleBtnClick(Sender: TObject; ACol: Integer;
  Field: TField);
begin
  dbgFordring.SortMarker := smNone;
  dbgFordring.SortedField := '';
end;

procedure TfrmKunde.acSettingsExecute(Sender: TObject);
begin
//  frmKontaktGruppe := TfrmKontaktGruppe.Create(Application);
//  frmKontaktGruppe.KontaktSerie := 'KS';
//  if frmKontaktGruppe.ShowModal = mrOK then begin
//    adoGruppe.Requery;
//  end;
//  frmKontaktGruppe.Release;
end;

procedure TfrmKunde.acWebInfoExecute(Sender: TObject);
begin
  dbeNavn.SetFocus;
  //OppdaterFraWeb(dmFunction.HentBrRegData(cdsKundeORGNR.Value));
end;

procedure TfrmKunde.OppdaterFraWeb(Data: String);
var
  S: String;
begin
(*  frmKundeBrReg := TfrmKundeBrReg.Create(Application);
  frmKundeBrReg.Data := Data;
  if frmKundeBrReg.ShowModal = mrOK then begin
    cdsKunde.Edit;

    S := frmKundeBrReg.edOrgnr.Text;
    if Trim(S) <> '' then
      cdsKundeORGNR.Value := S;

    S := frmKundeBrReg.edFirma.Text;
    if Trim(S) <> '' then
      cdsKundeNAVN.Value := S;

    if (Trim(frmKundeBrReg.edPAdresse.Text) <> '') or (Trim(frmKundeBrReg.edPPostnr.Text) <> '') then begin
      //Dersom Postadresse er gitt brukes denne
      cdsKundePOSTADR1.Value := Trim(frmKundeBrReg.edPAdresse.Text);
      cdsKundePOSTNR.Value := Trim(frmKundeBrReg.edPPostnr.Text);

      if (Trim(frmKundeBrReg.edBAdresse.Text) <> '') or (Trim(frmKundeBrReg.edBPostnr.Text) <> '') then begin
        cdsKundeBESOKADR1.Value := Trim(frmKundeBrReg.edBAdresse.Text);
        cdsKundeBESOKPOSTNR.Value := Trim(frmKundeBrReg.edBPostnr.Text);
      end;

    end
    else begin
      //Dersom Besøksadresse er gitt brukes denne
      if (Trim(frmKundeBrReg.edBAdresse.Text) <> '') or (Trim(frmKundeBrReg.edBPostnr.Text) <> '') then begin
        cdsKundePOSTADR1.Value := Trim(frmKundeBrReg.edBAdresse.Text);
        cdsKundePOSTNR.Value := Trim(frmKundeBrReg.edBPostnr.Text);
      end;
    end;

    S := frmKundeBrReg.edTelefon.Text;
    if Trim(S) <> '' then
      cdsKundeTELEFON.Value := S;

    S := frmKundeBrReg.edMobil.Text;
    if Trim(S) <> '' then
      cdsKundeMOBIL.Value := S;

    S := frmKundeBrReg.edTelefax.Text;
    if Trim(S) <> '' then
      cdsKundeFAKS.Value := S;

    S := frmKundeBrReg.edEpost.Text;
    if Trim(S) <> '' then
      cdsKundeEPOST.Value := S;

    S := frmKundeBrReg.edUrl.Text;
    if Trim(S) <> '' then
      cdsKundeWEB.Value := S;

  end;
  frmKundeBrReg.Release;
  *)
end;

procedure TfrmKunde.PcChange(Sender: TObject);
begin
  if Pc.ActivePage = tsOkonomi then begin
    fdFordringer.Params.ParamValues['IdKlient'] := Global.KlientID;
    fdFordringer.Params.ParamValues['Kontaktnr'] := cdsKundeKONTAKTNR.Value;
    fdFordringer.Open;
  end
  else if Pc.ActivePage = tsKontakt then begin
    fdPerson.Params.ParamValues['IdKlient'] := Global.KlientID;
    fdPerson.Params.ParamValues['Kontaktnr'] := cdsKundeKONTAKTNR.Value;
    cdsPerson.Open;
  end;
end;

procedure TfrmKunde.dbeOrgnrChange(Sender: TObject);
begin
  if Length(dbeOrgnr.Text) > 8 then
    acWebInfo.Enabled := True;
end;

end.
