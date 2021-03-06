unit UnClasseUsuario;

interface

uses
  System.SysUtils, System.Classes, Vcl.Dialogs, Datasnap.DBClient, Data.DB, IdHashMessageDigest, Variants;

type TUsuario = class

  private
      Fcodigo : string;
      Fnome: string;
      Femail: string;
      Fend: string;
      Ftelefone: string;
      Fcpf: string;
      Fsenha: string;
    procedure Setsenha(const Value: string);

  public
      constructor Create;
      destructor Destroy;

      procedure Incluir;
      procedure Alterar;
      procedure Excluir;
      procedure Cancelar;
      procedure Salvar;
      procedure GetDados;
      Function GetId(cEmail : String) : String;
      Function GetSenha(cUsuID : String) : String;
      Function GetNome(cUsuID : String) : String;

      Function Criptografa(const texto:string) : string;
      function GetCds: TClientDataSet;
      function GetCodigo: integer;
      Property codigo:string read Fcodigo write Fcodigo;
      Property nome:string read Fnome write Fnome;
      Property email:string read Femail write Femail;
      Property endere?o:string read Fend write Fend;
      Property telefone:string read Ftelefone write Ftelefone;
      Property CPF:string read Fcpf write Fcpf;
      property senha:string read Fsenha write Setsenha;
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
  //if not assigned (DMUsu) then
    DMUsu := TDMUsu.Create(nil);
    DMUsu.CDSUsuario.Open;
  except
    showmessage('Ocorreu um erro ao tentar criar o datamodule de Usu?rio');
  end;
end;

function TUsuario.Criptografa(const texto: string): string;
var
  idm5 : TIdHashMessageDigest5;
begin
  idm5 := TIdHashMessageDigest5.Create;
  try
    result := idm5.hashStringAsHex(texto);
  finally
    idm5.Free;
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
  begin
    DMUsu.ExcluirUsuario;
  end;
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
  FNome := DmUsu.CDSUsuarioUSU_NOME.Text;
  Femail := DMUsu.CDSUsuarioUSU_EMAIL.Text;
  Fend := DMUsu.CDSUsuarioUSU_END.Text;
  Ftelefone := DMUsu.CDSUsuarioUSU_TELEFONE.Text;
  Fcpf := DMUsu.CDSUsuarioUSU_CPF.Text;
  Fsenha := DMUsu.CDSUsuarioUSU_SENHA.Text;
end;


function TUsuario.GetId(cEmail: String): String;
begin
Result:= '';
  DMUsu.QrUsuarioAux.SQL.Clear;
  DMUsu.QrUsuarioAux.SQL.Add('SELECT USU_ID FROM USUARIO ' + 'WHERE USU_EMAIL='+
                              QuotedStr(CEmail) + 'ORDER BY USU_ID');
  DMUsu.QrUsuarioAux.Open;
  Result:=DMUsu.QrUsuarioAux.FieldByName('USU_ID').AsString;
  DMUsu.QrUsuarioAux.Close;
end;


function TUsuario.GetNome(cUsuID: String): String;
begin
//  CUsuId:= UpperCase(CUsuId);
  Result:= '';
  DMUsu.QrUsuarioAux.SQL.Clear;
  DMUsu.QrUsuarioAux.SQL.Add('SELECT USU_ID FROM USUARIO  WHERE USU_ID= '+
                              QuotedStr(CUsuId) + ' ORDER BY USU_NOME');
  DMUsu.QrUsuarioAux.Open;
  Result:=DMUsu.QrUsuarioAux.FieldByName('USU_ID').AsString;
  DMUsu.QrUsuarioAux.Close;
end;

function TUsuario.GetSenha(cUsuID: String): String;
begin
//  CUsuId:= UpperCase(CUsuId);
  Result:= '';
  DMUsu.QrUsuarioAux.SQL.Clear;
  DMUsu.QrUsuarioAux.SQL.Add('SELECT USU_SENHA FROM USUARIO WHERE USU_ID= '+
                              QuotedStr(CUsuId) + ' ORDER BY USU_ID');
  DMUsu.QrUsuarioAux.Open;
  Result:=DMUsu.QrUsuarioAux.FieldByName('USU_SENHA').AsString;
  DMUsu.QrUsuarioAux.Close;
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


procedure TUsuario.Setsenha(const Value: string);
begin
  Fsenha := Criptografa(Value);
//    Fsenha := Value;
end;

end.
