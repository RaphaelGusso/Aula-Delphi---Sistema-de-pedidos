unit UnDMUsu;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Datasnap.DBClient,
  Datasnap.Provider, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, dialogs,
  Data.FMTBcd, Data.SqlExpr;

type
  TDMUsu = class(TDataModule)
    QrUsuario: TFDQuery;
    DSPUsuario: TDataSetProvider;
    CDSUsuario: TClientDataSet;
    CDSUsuarioUSU_ID: TStringField;
    CDSUsuarioUSU_NOME: TStringField;
    CDSUsuarioUSU_EMAIL: TStringField;
    CDSUsuarioUSU_END: TStringField;
    CDSUsuarioUSU_TELEFONE: TStringField;
    CDSUsuarioUSU_CPF: TStringField;
    CDSUsuarioUSU_SENHA: TStringField;
    QrUsuarioAux: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure IncluirUsuario;
    procedure AlterarUsuario;
    procedure ExcluirUsuario;
    procedure CancelarUsuario;
    procedure SalvarUsuario;
  end;

var
  DMUsu: TDMUsu;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}    //quotedstr email

procedure TDMUsu.AlterarUsuario;
begin
  try
    CDSUsuario.Edit;

  except
    on E: Exception do
      ShowMessage('Ocorreu o seguinte erro ao tentar Alterar o '+
                  'registro: ' + E.Message);
  end;
end;

procedure TDMUsu.CancelarUsuario;
begin
    try
    CDSUsuario.Cancel;

  except
    on E: Exception do
      ShowMessage('Ocorreu o seguinte erro ao tentar Cancelar o '+
                  'registro: ' + E.Message);
  end;
end;

procedure TDMUsu.ExcluirUsuario;
begin
  try
    CDSUsuario.Delete;
    if (CDSUsuario.ChangeCount > 0) then
    CDSUsuario.ApplyUpdates(-1);
  except
    on E: Exception do
      ShowMessage('Ocorreu o seguinte erro ao tentar Excluir o '+
                  'registro: ' + E.Message);
  end;
end;

procedure TDMUsu.IncluirUsuario;
begin
   try
    CDSUsuario.Append;

  except
    on E: Exception do
      ShowMessage('Ocorreu o seguinte erro ao tentar Incluir o '+
                  'registro: ' + E.Message);
  end;
end;

procedure TDMUsu.SalvarUsuario;
begin
   try
    CDSUsuario.Post;
    CDSUsuario.ApplyUpdates(-1);

  except
    on E: Exception do
      ShowMessage('Ocorreu o seguinte erro ao tentar Salvar o '+
                  'registro: ' + E.Message);
  end;
end;

end.
