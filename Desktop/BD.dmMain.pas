unit BD.dmMain;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxStyles, cxClasses;

type
  TdmMain = class(TDataModule)
    fdKunde: TFDQuery;
    dsKunde: TDataSource;
    fdLeverandor: TFDQuery;
    dsLeverandor: TDataSource;
    cxStyleRepository: TcxStyleRepository;
    cxStyleInactive: TcxStyle;
    procedure fdKundeBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmMain: TdmMain;

implementation

uses BD.dmData, BD.Vars;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdmMain.fdKundeBeforeOpen(DataSet: TDataSet);
begin
  //fdKunde.MacroByName('FilterString').AsRaw := '';
  fdKunde.ParamByName('KlientID').AsInteger := Global.KlientID;
end;

end.
