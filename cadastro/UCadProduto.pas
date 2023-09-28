unit UCadProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaHeranca, Data.DB,  cFuncao,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls, Vcl.ComCtrls,
  RxToolEdit, RxCurrEdit ,uDTMConexao, cCadProduto , UEnum , uConCategoria,uCadCategoria;

type
  TfrmCadProduto = class(TfrmTelaHeranca)
    qryListagemprodutoID: TIntegerField;
    qryListagemnome: TWideStringField;
    qryListagemdescricao: TWideStringField;
    qryListagemvalor: TFloatField;
    qryListagemquantidade: TFloatField;
    qryListagemcategoriaId: TIntegerField;
    qryListagemDescricaoCategoria: TWideStringField;
    edtNome: TLabeledEdit;
    edtProdutoId: TLabeledEdit;
    edtDescricao: TMemo;
    Label1: TLabel;
    edtValor: TCurrencyEdit;
    edtQuantidade: TCurrencyEdit;
    Label2: TLabel;
    Label3: TLabel;
    lkpCategoria: TDBLookupComboBox;
    qryCategoria: TZQuery;
    dtsCategoria: TDataSource;
    qryCategoriacategoriaId: TIntegerField;
    qryCategoriadescricao: TWideStringField;
    Label4: TLabel;
    btnIncluirCategoria: TSpeedButton;
    btnPesquisarCategoria: TSpeedButton;
    procedure btnAlterarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnPesquisarCategoriaClick(Sender: TObject);
    procedure btnIncluirCategoriaClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
  private
    oProduto :TProduto;
    function APagar:Boolean; override;
    function Gravar(EstadoDoCadastro : TEstadoDoCadastro) :Boolean; override;
  public
    { Public declarations }
  end;

var
  frmCadProduto: TfrmCadProduto;

implementation

uses UPrincipal;

{$R *.dfm}

{$region 'override'}

  function TfrmCadProduto.APagar: Boolean;
  begin
        if oProduto.Selecionar(qryListagem.FieldByName('produtoId').AsInteger) then begin
        Result := oProduto.Apagar;
        end;
  end;

function TfrmCadProduto.Gravar(EstadoDoCadastro: TEstadoDoCadastro): Boolean;
  begin
      if edtProdutoId.Text<> EmptyStr then
          oProduto.codigo := StrToInt(edtProdutoId.Text)
      else
          oProduto.codigo :=0;

     oProduto.nome := edtNome.Text;
     oProduto.descricao := edtDescricao .Text;
     oProduto.categoriaId := lkpCategoria.KeyValue;
     oProduto.valor := edtValor.Value;
     oProduto.quantidade := edtQuantidade.Value;


      if (EstadoDoCadastro=ecInserir) then
        result := oProduto.Inserir
      else if(EstadoDoCadastro=ecAlterar) then
        result := oProduto.Atualizar;

  end;

procedure TfrmCadProduto.btnIncluirCategoriaClick(Sender: TObject);
begin
  inherited;
  TFuncao.CriarForm(TfrmCadCategoria , oUsuarioLogado ,dtmPrincipal.ConexaoDB);
  qryCategoria.Refresh;
end;

procedure TfrmCadProduto.btnPesquisarCategoriaClick(Sender: TObject);
begin
  inherited;
  try
   frmConCategoria := TfrmConCategoria.Create(Self);

   if lkpCategoria.KeyValue <>Null then
      frmConCategoria.aIniciarPesquisaId := lkpCategoria.KeyValue;

    frmConCategoria.ShowModal;

    if frmConCategoria.aRetornarIdSelecionado <> Unassigned then
      lkpCategoria.KeyValue := frmConCategoria.aRetornarIdSelecionado;
  finally
    frmConCategoria.Release;
  end;

end;

procedure TfrmCadProduto.btnPesquisarClick(Sender: TObject);
begin
  inherited;

end;

{$endRegion}

  procedure TfrmCadProduto.btnAlterarClick(Sender: TObject);
begin
      if oProduto.Selecionar(qryListagem.FieldByName('produtoId').AsInteger) then begin
      edtProdutoId.Text  := IntToStr(oProduto.codigo);
      edtNome.Text := oProduto.nome;
      edtDescricao.Text :=   oProduto.descricao;
      edtValor.Value := oProduto.valor;
      edtQuantidade.Value := oProduto.quantidade;
      lkpCategoria.KeyValue := oProduto.categoriaId;
  end
  else begin
      btnCancelar.Click    ;
      Abort;
  end;



  inherited;

end;

procedure TfrmCadProduto.btnNovoClick(Sender: TObject);
begin
  inherited;
  edtNome.SetFocus;
end;

procedure TfrmCadProduto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  qryCategoria.Close  ;
  if Assigned(oProduto) then
    FreeAndNil(oProduto);
end;

procedure TfrmCadProduto.FormCreate(Sender: TObject);
begin
  inherited;
  oProduto := TProduto.Create(dtmPrincipal.ConexaoDB);
  IndiceAtual := 'nome';
end;

procedure TfrmCadProduto.FormShow(Sender: TObject);
begin
  inherited;
  qryCategoria.Open;

end;

end.