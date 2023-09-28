program Vendas;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  uDTMConexao in 'datamodule\uDTMConexao.pas' {dtmPrincipal: TDataModule},
  UTelaHeranca in 'heranca\UTelaHeranca.pas' {frmTelaHeranca},
  uCadCategoria in 'cadastro\uCadCategoria.pas' {frmCadCategoria},
  Enter in 'terceiros\Enter.pas',
  UEnum in 'heranca\UEnum.pas',
  cCadCategoria in 'classes\cCadCategoria.pas',
  uCadCliente in 'cadastro\uCadCliente.pas' {frmCadCliente},
  cCadCliente in 'classes\cCadCliente.pas',
  UCadProduto in 'cadastro\UCadProduto.pas' {frmCadProduto},
  cCadProduto in 'classes\cCadProduto.pas',
  uFrmAtualizaDB in 'datamodule\uFrmAtualizaDB.pas' {frmAtualizaDB},
  UDTMVenda in 'datamodule\UDTMVenda.pas' {dtmVenda: TDataModule},
  UProVendas in 'processo\UProVendas.pas' {frmProVenda},
  cProVenda in 'classes\cProVenda.pas',
  cControleEstoque in 'classes\cControleEstoque.pas',
  URelCadClientes in 'relatorio\URelCadClientes.pas' {frmRelCadCliente},
  URelCadClientesFicha in 'relatorio\URelCadClientesFicha.pas' {frmRelCadClienteFicha},
  URelCadProduto in 'relatorio\URelCadProduto.pas' {frmRelCadProduto},
  URelCadProdutoComCategoria in 'relatorio\URelCadProdutoComCategoria.pas' {frmRelCadProdutoComCategoria},
  URelCategoria in 'relatorio\URelCategoria.pas' {frmRelCategoria},
  URelProVenda in 'relatorio\URelProVenda.pas' {frmRelProVenda},
  URelVendaPorData in 'relatorio\URelVendaPorData.pas' {frmRelVendaPorData},
  USelecionarData in 'relatorio\USelecionarData.pas' {frmSelecionarData},
  uFuncaoCriptografia in 'heranca\uFuncaoCriptografia.pas',
  UcadUsuario in 'cadastro\UcadUsuario.pas' {frmCadUsuario},
  cCadUsuario in 'classes\cCadUsuario.pas',
  ULogin in 'Login\ULogin.pas' {frmLogin},
  UAlterarSenha in 'Login\UAlterarSenha.pas' {frmAlterarSenha},
  cUsuarioLogado in 'Login\cUsuarioLogado.pas',
  cAtualizacaoBancoDeDados in 'classes\cAtualizacaoBancoDeDados.pas',
  cAtualizacaoTabelaMSSQL in 'classes\cAtualizacaoTabelaMSSQL.pas',
  cArquivoIni in 'classes\cArquivoIni.pas',
  cAtualizacaoCamposSql in 'classes\cAtualizacaoCamposSql.pas',
  cAcaoAcesso in 'classes\cAcaoAcesso.pas',
  UCadAcaoAcesso in 'cadastro\UCadAcaoAcesso.pas' {frmCadAcaoAcesso},
  uUsuariosVsAcoes in 'Login\uUsuariosVsAcoes.pas' {frmUsuariosVsAcoes},
  cFuncao in 'classes\cFuncao.pas',
  uTelaHerancaConsulta in 'heranca\uTelaHerancaConsulta.pas' {frmTelaHerancaConsulta},
  uConCategoria in 'Consulta\uConCategoria.pas' {frmConCategoria},
  uConProduto in 'Consulta\uConProduto.pas' {frmConProduto},
  uConCliente in 'Consulta\uConCliente.pas' {frmConCliente};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmConCategoria, frmConCategoria);
  Application.CreateForm(TfrmConProduto, frmConProduto);
  Application.CreateForm(TfrmConCliente, frmConCliente);
  Application.Run;

end.
