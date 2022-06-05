unit UnDMCEP;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Datasnap.DBClient,
  Datasnap.Provider;

type
  TDMCEP = class(TDataModule)
    qrCEP: TFDQuery;
    DSPCEP: TDataSetProvider;
    CDSCEP: TClientDataSet;
    CEP_UF: TStringField;
    CEP_ID: TIntegerField;
    CEP_CEP: TStringField;
    CEP_RUA: TStringField;
    CEP_CIDADE: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMCEP: TDMCEP;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
  uses UnDMconexao;

{$R *.dfm}

procedure TDMCEP.DataModuleCreate(Sender: TObject);
begin
  //comando sql de abertura de tabela
  qrCEP.SQL.Clear;
  qrCEP.SQL.Add('SELECT * FROM CEP');

  // ligações dos componentes
  qrCEP.Connection:= dmconexao.FDConnection;
  DSPCEP.DataSet:= qrCEP;
  CDSCEP.ProviderName:= 'DSPCEP';

end;

end.
