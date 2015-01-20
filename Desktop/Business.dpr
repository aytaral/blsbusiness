program Business;

uses
  Vcl.Forms,
  Business.frmMain in 'Business.frmMain.pas' {frmMainform},
  Business.dmData in 'Business.dmData.pas' {dmData: TDataModule},
  Business.Settings in 'Business.Settings.pas',
  Business.frmSync in 'Business.frmSync.pas' {frmDataSync},
  Business.Fylke in 'Business.Fylke.pas',
  Business.Utils in 'Business.Utils.pas',
  Business.dmMain in 'Business.dmMain.pas' {dmMain: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMainform, frmMainform);
  Application.CreateForm(TdmData, dmData);
  Application.CreateForm(TfrmDataSync, frmDataSync);
  Application.CreateForm(TdmMain, dmMain);
  Application.Run;
end.
