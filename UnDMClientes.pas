unit UnDMClientes;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Datasnap.DBClient,
  Datasnap.Provider;

type
  TDMClientes = class(TDataModule)
    QrCliente: TFDQuery;
    DSPCliente: TDataSetProvider;
    CDSCliente: TClientDataSet;
    CDSClienteCLI_ID: TIntegerField;
    CDSClienteCLI_NOME: TStringField;
    CDSClienteCLI_CPF: TStringField;
    CDSClienteCLI_CEP_ID: TIntegerField;
    CDSClienteCLI_TELEFONE: TStringField;
    CDSClienteCLI_OBSERVACAO: TMemoField;
    QrAux: TFDQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMClientes: TDMClientes;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UnDmConexao;

{$R *.dfm}

procedure TDMClientes.DataModuleCreate(Sender: TObject);
begin
  // comando sql de abertura de tabela
  QrCliente.SQL.Clear;
  QrCliente.SQL.ADD('SELECT * FROM CLIENTE');

  //ligações dos componentes
  QrCliente.Connection:= DMConexao.fdconnection;
  DSPCliente.DataSet := QrCliente;
  CDSCliente.ProviderName := 'DSPCliente';
end;

end.
