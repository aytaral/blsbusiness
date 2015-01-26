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
  cxPC;

type
  TfrmMainform = class(TdxRibbonForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    dxBarManager1: TdxBarManager;
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab2: TdxRibbonTab;
    dxRibbon1Tab3: TdxRibbonTab;
    dxRibbon1Tab4: TdxRibbonTab;
    dxRibbonMiniToolbar1: TdxRibbonMiniToolbar;
    dxBarManager1Bar1: TdxBar;
    dxRibbonPopupMenu1: TdxRibbonPopupMenu;
    dxBarApplicationMenu1: TdxBarApplicationMenu;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton1: TdxBarButton;
    dxRibbonDropDownGallery1: TdxRibbonDropDownGallery;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxRibbonQuickAccessGroupButton1: TdxRibbonQuickAccessGroupButton;
    dxBarManager1Bar2: TdxBar;
    dxBarManager1Bar3: TdxBar;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    cxImageList1: TcxImageList;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxSkinController1: TdxSkinController;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
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

procedure TfrmMainform.Button1Click(Sender: TObject);
begin
  dmData.fdKontakt.Open();
end;

procedure TfrmMainform.Button2Click(Sender: TObject);
begin
  dmData.fdKontakt.ApplyUpdates(0);
  dmData.fdKontakt.CommitUpdates;
end;

procedure TfrmMainform.Button3Click(Sender: TObject);
begin
  frmDataSync.ShowModal;
end;

end.