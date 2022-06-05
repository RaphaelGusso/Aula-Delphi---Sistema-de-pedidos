unit UnClasseUsuario;

interface

uses
  System.SysUtils, System.Classes, Vcl.Dialogs, Datasnap.DBClient, Data.DB;

type TUsuario = class

  private
      Fcodigo : string;
      Fnome: string;
      Femail: string;
      Fend: string;
      Ftelefone: string;
      Fcpf: string;
      Fsenha: string;
  public
      constructor Create;
      destructor Destroy;

      procedure Incluir;
      procedure Alterar;
      procedure Excluir;
      procedure Cancelar;
      procedure Salvar;
      procedure GetDados;

      function GetCds: TClientDataSet;
      function GetCodigo: integer;

      Property codigo:string read Fcodigo write Fcodigo;
      Property nome:string read Fnome write Fnome;
      Property email:string read Femail write Femail;
      Property endere�o:string read Fend write Fend;
      Property telefone:string read Ftelefone write Ftelefone;
      Property CPF:string read Fcpf write Fcpf;
      property senha:string read Fsenha write Fsenha;
end;

implementation

{ TUsuario }

uses UnDMUsu;

procedure TUsuario.Alterar;
begin
    if Assigned(DMUsu) then
    DMUsu.AlterarUsuario;
end;

procedure TUsuario.Cancelar;
begin
    if Assigned(DMUsu) then
    DMUsu.CancelarUsuario;
end;

constructor TUsuario.Create;
begin
    try
    DMUsu := DMUsu.Create(nil);
    DMUsu.CDSUsuario.Open;
  except
    showmessage('Ocorreu um erro ao tentar criar o datamodule de Usu�rio');
  end;
end;

destructor TUsuario.Destroy;
begin
    DMUsu.CDSUsuario.Close;
    FreeAndNil(DMUsu);
end;

procedure TUsuario.Excluir;
begin
    if Assigned(DMUsu) then
    DMUsu.ExcluirUsuario;
end;

function TUsuario.GetCds: TClientDataSet;
begin
  Result := nil;
  if Assigned(DMUsu) then
    Result := DMUsu.CDSUsuario;
end;

function TUsuario.GetCodigo: integer;
begin
  //Result := DMUsu.getNextCodigo;
end;

procedure TUsuario.GetDados;
begin
  Fcodigo := DMUsu.CDSUsuarioUSU_ID.Text;
  Femail := DMUsu.CDSUsuarioUSU_EMAIL.Text;
  Fend := DMUsu.CDSUsuarioUSU_END.Text;
  Ftelefone := DMUsu.CDSUsuarioUSU_TELEFONE.Text;
  Fcpf := DMUsu.CDSUsuarioUSU_CPF.Text;
  Fsenha := DMUsu.CDSUsuarioUSU_SENHA.Text;
end;

procedure TUsuario.Incluir;
begin
    if Assigned(DMUsu) then
    DMUsu.IncluirUsuario;
end;

procedure TUsuario.Salvar;
begin
  DMUsu.CDSUsuarioUSU_ID.Value         := Fcodigo;
  DMUsu.CDSUsuarioUSU_NOME.Text        := Fnome;
  DMUsu.CDSUsuarioUSU_EMAIL.Text       := Femail;
  DMUsu.CDSUsuarioUSU_END.Text         := Fend;
  DMUsu.CDSUsuarioUSU_TELEFONE.Text    := Ftelefone;
  DMUsu.CDSUsuarioUSU_CPF.Text         := Fcpf;
  DMUsu.CDSUsuarioUSU_SENHA.Text       := Fsenha;
  if Assigned(DMUsu) then
    DMUsu.SalvarUsuario;
end;

end.
