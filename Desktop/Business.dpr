program Business;

uses
  Vcl.Forms,
  BD.frmMain in 'BD.frmMain.pas' {frmMainform},
  BD.dmData in 'BD.dmData.pas' {dmData: TDataModule},
  BD.Settings in 'BD.Settings.pas',
  BD.frmSync in 'BD.frmSync.pas' {frmDataSync},
  BD.Fylke in 'BD.Fylke.pas',
  BD.Utils in 'BD.Utils.pas',
  BD.dmMain in 'BD.dmMain.pas' {dmMain: TDataModule};

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
