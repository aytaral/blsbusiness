program Business;

uses
  FastMM4,
  Vcl.Forms,
  BD.frmMain in 'BD.frmMain.pas' {frmMainform},
  BD.dmData in 'BD.dmData.pas' {dmData: TDataModule},
  BD.Settings in 'BD.Settings.pas',
  BD.frmSync in 'BD.frmSync.pas' {frmDataSync},
  BD.Fylke in 'BD.Fylke.pas',
  BD.Handler in 'BD.Handler.pas',
  BD.dmMain in 'BD.dmMain.pas' {dmMain: TDataModule},
  BD.Kommune in 'BD.Kommune.pas',
  BD.Postnr in 'BD.Postnr.pas',
  BD.frmKunde in 'BD.frmKunde.pas' {frmKunde},
  BD.Vars in 'BD.Vars.pas',
  BD.Kontakt in 'BD.Kontakt.pas',
  BD.Adresse in 'BD.Adresse.pas',
  BD.Land in 'BD.Land.pas',
  BD.KontaktListe in 'BD.KontaktListe.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMainform, frmMainform);
  Application.CreateForm(TdmData, dmData);
  Application.CreateForm(TdmMain, dmMain);
  Application.Run;
end.
