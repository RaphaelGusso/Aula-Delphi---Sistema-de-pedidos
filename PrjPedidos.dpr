program PrjPedidos;

uses
  Vcl.Forms,
  U_Pedidos in 'U_Pedidos.pas' {FrmPedidos},
  UnDmConexao in 'UnDmConexao.pas' {DmConexao: TDataModule},
  UnManPadrao in 'UnManPadrao.pas' {FrmManPadrao},
  UnCep in 'UnCep.pas' {FrmCEP},
  UnDMCEP in 'UnDMCEP.pas' {DMCEP: TDataModule},
  UnDMClientes in 'UnDMClientes.pas' {DMClientes: TDataModule},
  UnClientes in 'UnClientes.pas' {Frmclientes},
  unDmFornec in 'unDmFornec.pas' {dmFornec: TDataModule},
  unClasseFornec in 'unClasseFornec.pas',
  UnFornec in 'UnFornec.pas' {FrmFornecec},
  Bib in 'Bib.PAS',
  UnUsuarioView in 'UnUsuarioView.pas' {FrmUsuario},
  UnClasseUsuario in 'UnClasseUsuario.pas',
  UnDMUsu in 'UnDMUsu.pas' {DMUsu: TDataModule},
  Vcl.Themes,
  Vcl.Styles,
  UnLogin in 'UnLogin.pas' {FrmLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Tablet Light');
  Application.CreateForm(TFrmPedidos, FrmPedidos);
  Application.CreateForm(TDmConexao, DmConexao);
  Application.CreateForm(TFrmLogin, FrmLogin);
  Application.Run;
end.
