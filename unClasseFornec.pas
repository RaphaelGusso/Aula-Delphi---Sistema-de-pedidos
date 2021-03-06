unit unClasseFornec;

interface

uses
  System.SysUtils, System.Classes, Vcl.Dialogs, Datasnap.DBClient, Data.DB, unDmFornec;

type TFornecedor = class

  private
  //atributos privados da classe
    Fcodigo : Integer;
    Fnome: string;
    Fcpf: string;
    Fcep: integer;
    Ftelefone: string;
    Fobs: string;

  public
    constructor Create;   //declaração
    destructor Destroy;

    procedure Incluir;
    procedure Alterar;
    procedure Excluir;
    procedure Cancelar;
    procedure Salvar;
    procedure GetDados;

    function GetCds: TClientDataSet;
    function GetCodigo: integer;
    function ValidaCPFForn(cCPF:String): boolean;

      //atributos publicos da classe
    Property codigo:Integer read Fcodigo write Fcodigo;
    Property nome:string read Fnome write Fnome;
    Property cpf:string read Fcpf write Fcpf;
    Property cep:integer read Fcep write Fcep;
    Property telefone:string read Ftelefone write Ftelefone;
    Property obs: string read Fobs write Fobs;


end;

implementation

{ TFornecedor }


procedure TFornecedor.Alterar;
begin
  if Assigned(dmFornec) then
    dmFornec.AlterarFornec;
end;

procedure TFornecedor.Cancelar;
begin
  if Assigned(dmFornec) then
    dmFornec.CancelarFornec;
end;

constructor TFornecedor.Create;
begin
  try
    dmFornec := TdmFornec.Create(nil);
    dmFornec.cdsFornec.Open;
  except
    showmessage('Ocorreu um erro ao tentar criar o datamodule de Fornecedores');
  end;
end;

destructor TFornecedor.Destroy;
begin
  dmFornec.cdsFornec.Close;
  FreeAndNil(dmFornec);
end;

procedure TFornecedor.Excluir;
begin
  if Assigned(dmFornec) then
    dmFornec.ExcluirFornec;
end;

function TFornecedor.GetCds: TClientDataSet;
begin
  Result := nil;
  if Assigned(dmFornec) then
    Result := dmFornec.cdsFornec;
end;

function TFornecedor.GetCodigo: integer;
begin
  Result := dmFornec.getNextCodigo;
end;

procedure TFornecedor.GetDados;
begin
  Fcodigo := dmFornec.cdsFornecFOR_ID.Value;
  Fnome := dmFornec.cdsFornecFOR_NOME.Text;
  Fcpf := dmFornec.cdsFornecFOR_CPF.Text;
  Fcep := dmFornec.cdsFornecFOR_CEP_ID.Value;
  Ftelefone := dmFornec.cdsFornecFOR_TELEFONE.Text;
  Fobs := dmFornec.cdsFornecFOR_OBSERVACAO.Text;
end;

procedure TFornecedor.Incluir;
begin
  if Assigned(dmFornec) then
    dmFornec.IncluirFornec;
end;

procedure TFornecedor.Salvar;
begin
  dmFornec.cdsFornecFOR_ID.Value        := Fcodigo;
  dmFornec.cdsFornecFOR_NOME.Text       := Fnome;
  dmFornec.cdsFornecFOR_CPF.Text        := Fcpf;
  dmFornec.cdsFornecFOR_CEP_ID.Value    := Fcep;
  dmFornec.cdsFornecFOR_TELEFONE.Text   := Ftelefone;
  dmFornec.cdsFornecFOR_OBSERVACAO.Text := Fobs;

  if Assigned(dmFornec) then
    dmFornec.SalvarFornec;
end;

function TFornecedor.ValidaCPFForn(cCPF: String): boolean;
begin
end;

end.
