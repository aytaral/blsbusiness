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
  cxPC, System.Actions, Vcl.ActnList, Vcl.ExtCtrls;

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
    procedure acSalgExecute(Sender: TObject);
    procedure acKontaktExecute(Sender: TObject);
    procedure acProduktExecute(Sender: TObject);
    procedure acRegnskapExecute(Sender: TObject);
    procedure acExitExecute(Sender: TObject);
    procedure acSyncDataExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMainform: TfrmMainform;

implementation

uses BD.dmData, BD.Settings, BD.frmSync;

{$R *.dfm}

procedure TfrmMainform.acExitExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmMainform.acSyncDataExecute(Sender: TObject);
begin
  frmDataSync := TfrmDataSync.Create(Application);
  frmDataSync.ShowModal;
  frmDataSync.Release;
end;

procedure TfrmMainform.acSalgExecute(Sender: TObject);
begin
  //
end;

procedure TfrmMainform.acKontaktExecute(Sender: TObject);
begin
  //

end;

procedure TfrmMainform.acProduktExecute(Sender: TObject);
begin
  //

end;

procedure TfrmMainform.acRegnskapExecute(Sender: TObject);
begin
  //

end;

end.
