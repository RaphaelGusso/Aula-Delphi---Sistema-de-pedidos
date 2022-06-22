unit UnLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UnClasseUsuario;

type
  TFrmLogin = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    EdLogin: TEdit;
    EdSenha: TEdit;
    BtnAcessar: TButton;
    BtnFechar: TButton;
    BtnRecSenha: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnAcessarClick(Sender: TObject);
    procedure BtnFecharClick(Sender: TObject);
  private
    { Private declarations }
    oUsu : TUsuario;
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;

implementation

{$R *.dfm}

procedure TFrmLogin.BtnAcessarClick(Sender: TObject);
var
  cUser: String;
  cSenha: string;
begin
  cUser:= oUsu.GetNome(EdLogin.Text);
  cSenha:= oUsu.GetSenha(cUser);
  if cUser='' then
  begin
    ShowMessage('Usuário informado é inválido!');
    EdLogin.Text:= '';
    EdSenha.SetFocus;
  end;

  if (cSenha = oUsu.Criptografa(EdSenha.Text)) then
    Close
  else
  begin
    ShowMessage('A senha informada é inválida!');
    EdSenha.Text:= '';
    EdSenha.SetFocus;
  end;
end;

procedure TFrmLogin.BtnFecharClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFrmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
aCTION:= TCloseAction.caFree;
end;

procedure TFrmLogin.FormCreate(Sender: TObject);
begin
  oUsu := TUsuario.Create;
end;

procedure TFrmLogin.FormDestroy(Sender: TObject);
begin
  FreeAndNil (oUsu);
end;
 //SetFocus serve para focar o edit
end.
