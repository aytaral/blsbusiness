program Business;

uses
  Vcl.Forms,
  buMainform in 'buMainform.pas' {frmMainform},
  buData in 'buData.pas' {dmData: TDataModule},
  buSettings in 'buSettings.pas',
  buDataSync in 'buDataSync.pas' {frmDataSync},
  buPostnr in 'buPostnr.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMainform, frmMainform);
  Application.CreateForm(TdmData, dmData);
  Application.CreateForm(TfrmDataSync, frmDataSync);
  Application.Run;
end.
