unit BD.dmMain;

interface

uses
  System.SysUtils, System.Classes;

type
  TdmMain = class(TDataModule)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmMain: TdmMain;

implementation

uses BD.dmData;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
