unit unDmFornec;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Datasnap.Provider,
  Datasnap.DBClient, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  unDmConexao, Dialogs;

type
  TdmFornec = class(TDataModule)
    qrFornec: TFDQuery;
    cdsFornec: TClientDataSet;
    dspFornec: TDataSetProvider;
    qrAux: TFDQuery;
    cdsFornecFOR_ID: TIntegerField;
    cdsFornecFOR_NOME: TStringField;
    cdsFornecFOR_CPF: TStringField;
    cdsFornecFOR_CEP_ID: TIntegerField;
    cdsFornecFOR_TELEFONE: TStringField;
    cdsFornecFOR_OBSERVACAO: TMemoField;
    procedure cdsFornecReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
  private
    { Private declarations }

  public
    { Public declarations }
    procedure IncluirFornec;
    procedure AlterarFornec;
    procedure ExcluirFornec;
    procedure CancelarFornec;
    procedure SalvarFornec;
    function getNextCodigo: integer;
  end;

var
  dmFornec: TdmFornec;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDataModule2 }

procedure TdmFornec.AlterarFornec;
begin
  try
    cdsFornec.Edit;

  except
    on E: Exception do
      ShowMessage('Ocorreu o seguinte erro ao tentar Alterar o '+
                  'registro: ' + E.Message);
  end;
end;

procedure TdmFornec.CancelarFornec;
begin
  try
    cdsFornec.Cancel;

  except
    on E: Exception do
      ShowMessage('Ocorreu o seguinte erro ao tentar Cancelar o '+
                  'registro: ' + E.Message);
  end;
end;

procedure TdmFornec.cdsFornecReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  //chamada da tela de erros do sistema
  //Action := HandleReconcileError(DataSet, UpdateKind, E);
end;

procedure TdmFornec.ExcluirFornec;
begin
  try
    cdsFornec.Delete;
    if (cdsFornec.ChangeCount > 0) then
    cdsFornec.ApplyUpdates(-1);
  except
    on E: Exception do
      ShowMessage('Ocorreu o seguinte erro ao tentar Excluir o '+
                  'registro: ' + E.Message);
  end;
end;

function TdmFornec.getNextCodigo: integer;
begin
  Result := 0;
  //Busco o proximo registro
  qrAux.SQL.Clear;
  qrAux.SQL.Add('Select MAX(FOR_ID) as Codigo from FORNECEDOR');
  qrAux.Open;
  Result := qrAux.FieldByName('Codigo').AsInteger +1;
  qrAux.Close;
end;

procedure TdmFornec.IncluirFornec;
begin
  try
    cdsFornec.Append;

  except
    on E: Exception do
      ShowMessage('Ocorreu o seguinte erro ao tentar Incluir o '+
                  'registro: ' + E.Message);
  end;
end;

procedure TdmFornec.SalvarFornec;
begin
  try
    cdsFornec.Post;
    cdsFornec.ApplyUpdates(-1);

  except
    on E: Exception do
      ShowMessage('Ocorreu o seguinte erro ao tentar Salvar o '+
                  'registro: ' + E.Message);
  end;
end;

end.
