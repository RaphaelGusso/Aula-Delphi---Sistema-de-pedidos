unit U_Pedidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ToolWin,
  System.Actions, Vcl.ActnList, Vcl.Menus, System.ImageList, Vcl.ImgList, UnCep,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls;

type
  TFrmPedidos = class(TForm)
    MainMenu1: TMainMenu;
    ActionList1: TActionList;
    ImageList1: TImageList;
    Cadastros1: TMenuItem;
    Pedidosdecompra1: TMenuItem;
    Pedidosdevenda1: TMenuItem;
    ActCEP: TAction;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton3: TToolButton;
    ToolButton5: TToolButton;
    ToolButton7: TToolButton;
    ToolButton9: TToolButton;
    ToolButton11: TToolButton;
    ActCli: TAction;
    ActForn: TAction;
    ActPedvendas: TAction;
    ActCompras: TAction;
    ActSair: TAction;
    Cadastrodeclientes1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    CadastrodeCPFs1: TMenuItem;
    N3: TMenuItem;
    Sair1: TMenuItem;
    Image1: TImage;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    N4: TMenuItem;
    Cadastrodeusurios1: TMenuItem;
    procedure ActSairExecute(Sender: TObject);
    procedure ActCEPExecute(Sender: TObject);
    procedure ActCliExecute(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure ActFornExecute(Sender: TObject);
    procedure Cadastrodeusurios1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPedidos: TFrmPedidos;

implementation

{$R *.dfm}

uses UnClientes, UnFornec, UnUsuarioView, UnLogin;

procedure TFrmPedidos.ActCEPExecute(Sender: TObject);
begin
  Application.CreateForm(TFrmCEP, FrmCEP);
  FrmCEP.ShowModal;
end;

procedure TFrmPedidos.ActCliExecute(Sender: TObject);
begin
  Application.CreateForm(TFrmclientes, Frmclientes);
  Frmclientes.ShowModal;
end;

procedure TFrmPedidos.ActFornExecute(Sender: TObject);
begin
  Application.CreateForm(TFrmFornecec, FrmFornecec);
  FrmFornecec.ShowModal;
end;

procedure TFrmPedidos.ActSairExecute(Sender: TObject);
begin
  close;
end;

procedure TFrmPedidos.Cadastrodeusurios1Click(Sender: TObject);
begin
  Application.CreateForm(TFrmUsuario , FrmUsuario);
  FrmUsuario.ShowModal;
end;

procedure TFrmPedidos.FormShow(Sender: TObject);
begin
  FrmLogin.ShowModal;
end;

procedure TFrmPedidos.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels[0].Text := TimeToStr(now);
  StatusBar1.Panels[1].Text := DatetoStr(date);
end;

end.
