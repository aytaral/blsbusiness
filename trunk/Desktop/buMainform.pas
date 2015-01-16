unit buMainform;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid;

type
  TfrmMainform = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
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

uses buData, buSettings, buDataSync;

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
