unit BD.frmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, dxRibbonSkins, dxBar, dxBarApplicationMenu,
  dxRibbon, dxRibbonMiniToolbar, dxStatusBar, dxRibbonStatusBar,
  dxRibbonGallery, dxRibbonBackstageView, dxRibbonForm, Vcl.ImgList,
  dxSkinsCore, dxSkinOffice2010Black, dxSkinscxPCPainter,
  dxSkinsdxRibbonPainter, dxSkinsdxBarPainter, dxSkinsForm, cxPCdxBarPopupMenu,
  cxPC, System.Actions, Vcl.ActnList, Vcl.ExtCtrls, dxSkinsdxNavBarPainter,
  dxNavBarCollns, dxNavBarBase, dxNavBar, JvAppStorage, JvAppRegistryStorage,
  JvComponentBase, JvFormPlacement, cxContainer, cxGroupBox, cxCheckGroup,
  cxSplitter, dxSkinOffice2010Blue, Vcl.AppEvnts;

type
  TfrmMainform = class(TdxRibbonForm)
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    dxBarManager: TdxBarManager;
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbon: TdxRibbon;
    dxRibbon1Tab2: TdxRibbonTab;
    barQick: TdxBar;
    dxBarSubItem1: TdxBarSubItem;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxRibbonQuickAccessGroupButton1: TdxRibbonQuickAccessGroupButton;
    barMain: TdxBar;
    barModul: TdxBar;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    ilLarge: TcxImageList;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxSkinController: TdxSkinController;
    pcPages: TcxPageControl;
    tsAbonnement: TcxTabSheet;
    tsOrdre: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    alLarge: TActionList;
    acSalg: TAction;
    acKontakt: TAction;
    acProdukt: TAction;
    acRegnskap: TAction;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    tsFaktura: TcxTabSheet;
    tsPurring: TcxTabSheet;
    tsKunde: TcxTabSheet;
    tsLeverandør: TcxTabSheet;
    dxRibbon1Tab3: TdxRibbonTab;
    tsPerson: TcxTabSheet;
    tsProdukt: TcxTabSheet;
    tsBilag: TcxTabSheet;
    tsKonto: TcxTabSheet;
    ActionList: TActionList;
    acExit: TAction;
    acLoggut: TAction;
    bbExit: TdxBarButton;
    bbLogout: TdxBarButton;
    dxBarButton1: TdxBarButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton8: TdxBarButton;
    dxRibbonBackstageView1: TdxRibbonBackstageView;
    dxRibbonBackstageViewTabSheet1: TdxRibbonBackstageViewTabSheet;
    dxRibbonBackstageViewTabSheet2: TdxRibbonBackstageViewTabSheet;
    pnlKunde: TPanel;
    tvKunde: TcxGridDBTableView;
    dbgKundeLevel: TcxGridLevel;
    dbgKunde: TcxGrid;
    barTools: TdxBar;
    acSyncData: TAction;
    dxBarLargeButton6: TdxBarLargeButton;
    acNew: TAction;
    dxBarLargeButton7: TdxBarLargeButton;
    ilSmall: TcxImageList;
    acEdit: TAction;
    dxBarButton9: TdxBarButton;
    acDelete: TAction;
    dxBarButton10: TdxBarButton;
    JvFormStorage: TJvFormStorage;
    JvAppRegistryStorage: TJvAppRegistryStorage;
    splKunde: TcxSplitter;
    cxGroupBox1: TcxGroupBox;
    cbKundeInaktiv: TCheckBox;
    ApplicationEvents: TApplicationEvents;
    tvKundeKlientID: TcxGridDBColumn;
    tvKundeKontaktnr: TcxGridDBColumn;
    tvKundeNavn: TcxGridDBColumn;
    tvKundePostAdr1: TcxGridDBColumn;
    tvKundePostAdr2: TcxGridDBColumn;
    tvKundePostnr: TcxGridDBColumn;
    tvKundeLandKode: TcxGridDBColumn;
    tvKundeOrgnr: TcxGridDBColumn;
    tvKundeTelefon: TcxGridDBColumn;
    tvKundeFaks: TcxGridDBColumn;
    tvKundeMobil: TcxGridDBColumn;
    tvKundeEpost: TcxGridDBColumn;
    tvKundeWeb: TcxGridDBColumn;
    tvKundeKontakt: TcxGridDBColumn;
    tvKundeKontaktTypeID: TcxGridDBColumn;
    tvKundeAktiv: TcxGridDBColumn;
    tvKundeRegDato: TcxGridDBColumn;
    tvKundeEndretDato: TcxGridDBColumn;
    Panel1: TPanel;
    cxSplitter1: TcxSplitter;
    edKundeSok: TEdit;
    Label1: TLabel;
    Button1: TButton;
    tvKundePoststed: TcxGridDBColumn;
    tvKundeBesokAdr1: TcxGridDBColumn;
    tvKundeBesokAdr2: TcxGridDBColumn;
    tvKundeBesokPostnr: TcxGridDBColumn;
    tvKundeBankkonto: TcxGridDBColumn;
    tvKundeForfallsdager: TcxGridDBColumn;
    tvKundeKreditt: TcxGridDBColumn;
    tvKundeRabatt: TcxGridDBColumn;
    tvKundeBesokPoststed: TcxGridDBColumn;
    cxGroupBox2: TcxGroupBox;
    Label2: TLabel;
    CheckBox1: TCheckBox;
    Edit1: TEdit;
    Button2: TButton;
    dbgLeverandor: TcxGrid;
    tvLeverandor: TcxGridDBTableView;
    dbgLeverandorLevel: TcxGridLevel;
    tvLeverandorKlientID: TcxGridDBColumn;
    tvLeverandorKontaktnr: TcxGridDBColumn;
    tvLeverandorNavn: TcxGridDBColumn;
    tvLeverandorPostAdr1: TcxGridDBColumn;
    tvLeverandorPostAdr2: TcxGridDBColumn;
    tvLeverandorPostnr: TcxGridDBColumn;
    tvLeverandorBesokAdr1: TcxGridDBColumn;
    tvLeverandorBesokAdr2: TcxGridDBColumn;
    tvLeverandorBesokPostnr: TcxGridDBColumn;
    tvLeverandorLandKode: TcxGridDBColumn;
    tvLeverandorOrgnr: TcxGridDBColumn;
    tvLeverandorTelefon: TcxGridDBColumn;
    tvLeverandorFaks: TcxGridDBColumn;
    tvLeverandorMobil: TcxGridDBColumn;
    tvLeverandorEpost: TcxGridDBColumn;
    tvLeverandorWeb: TcxGridDBColumn;
    tvLeverandorBankkonto: TcxGridDBColumn;
    tvLeverandorKontakt: TcxGridDBColumn;
    tvLeverandorForfallsdager: TcxGridDBColumn;
    tvLeverandorKreditt: TcxGridDBColumn;
    tvLeverandorRabatt: TcxGridDBColumn;
    tvLeverandorInfo: TcxGridDBColumn;
    tvLeverandorSerieID: TcxGridDBColumn;
    tvLeverandorTypeID: TcxGridDBColumn;
    tvLeverandorPrintID: TcxGridDBColumn;
    tvLeverandorGruppeID: TcxGridDBColumn;
    tvLeverandorSektorKode: TcxGridDBColumn;
    tvLeverandorBransjeKode: TcxGridDBColumn;
    tvLeverandorRegDato: TcxGridDBColumn;
    tvLeverandorEndretDato: TcxGridDBColumn;
    tvLeverandorAktiv: TcxGridDBColumn;
    tvLeverandorBrukerID: TcxGridDBColumn;
    tvLeverandorPoststed: TcxGridDBColumn;
    tvLeverandorBesokPoststed: TcxGridDBColumn;
    Button3: TButton;
    procedure acExitExecute(Sender: TObject);
    procedure acSyncDataExecute(Sender: TObject);
    procedure acSalgExecute(Sender: TObject);
    procedure acNewExecute(Sender: TObject);
    procedure tsKundeShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tvKundeStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure edKundeSokChange(Sender: TObject);
  private
    procedure ShowTabs(GroupIndex: Integer);
    procedure DoLogin;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMainform: TfrmMainform;

implementation

uses BD.dmData, BD.dmMain, BD.Settings, BD.frmSync, BD.frmKunde, BD.Vars;

{$R *.dfm}

procedure TfrmMainform.acExitExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmMainform.DoLogin;
begin
  Global.KlientID := 1;

end;

procedure TfrmMainform.edKundeSokChange(Sender: TObject);
var
  Sql: String;
begin
  Sql := '';
  if (edKundeSok.Text <> '') then
    Sql := Sql + ' and (Navn like ''%' + edKundeSok.Text + '%'')';

  dmMain.fdKunde.MacroByName('ShowInactive').AsRaw := IntToStr(Ord(cbKundeInaktiv.Checked));
  dmMain.fdKunde.MacroByName('FilterString').AsRaw := Sql;
  dmMain.fdKunde.Open();
end;

procedure TfrmMainform.FormCreate(Sender: TObject);
begin
  DoLogin;
end;

procedure TfrmMainform.acNewExecute(Sender: TObject);
begin
  frmKunde := TfrmKunde.Create(Application);
  frmKunde.ShowModal;
  frmKunde.Release;
end;

procedure TfrmMainform.acSalgExecute(Sender: TObject);
begin
  with Sender as TAction do
    ShowTabs(TAction(Sender).Tag); //Viser kun tabs med tag = Action.tag
end;

procedure TfrmMainform.acSyncDataExecute(Sender: TObject);
begin
  frmDataSync := TfrmDataSync.Create(Application);
  frmDataSync.ShowModal;
  frmDataSync.Release;
end;

procedure TfrmMainform.ShowTabs(GroupIndex: Integer);
var
  I: Integer;
begin
  for I := 0 to pcPages.PageCount -1 do
    pcPages.Pages[I].TabVisible := (pcPages.Pages[I].Tag = GroupIndex);

  if pcPages.Pages[0].TabVisible then
    pcPages.ActivePage := pcPages.Pages[0]
  else
    pcPages.ActivePage := pcPages.FindNextPage(pcPages.Pages[0], True, True);
end;


procedure TfrmMainform.tsKundeShow(Sender: TObject);
begin
  dmMain.fdKunde.Open();
end;

procedure TfrmMainform.tvKundeStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
  if ARecord.Values[tvKundeAKTIV.Index] = 0 then
    AStyle := dmMain.cxStyleInactive;
end;

end.
