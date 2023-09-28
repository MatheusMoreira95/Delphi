unit uCadCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaHeranca, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls, Vcl.ComCtrls,
  RxToolEdit,cCadCliente,UEnum;

type
  TfrmCadCliente = class(TfrmTelaHeranca)
    edtClienteID: TLabeledEdit;
    edtNome: TLabeledEdit;
    edtCEP: TMaskEdit;
    Label1: TLabel;
    edtEndereco: TLabeledEdit;
    edtBairro: TLabeledEdit;
    edtEstado: TLabeledEdit;
    edtCidade: TLabeledEdit;
    edtEmail: TLabeledEdit;
    edtTelefone: TMaskEdit;
    Label2: TLabel;
    edtNascimento: TDateEdit;
    Label3: TLabel;
    qryListagemclienteId: TIntegerField;
    qryListagemnome: TWideStringField;
    qryListagemendereco: TWideStringField;
    qryListagemcidade: TWideStringField;
    qryListagembairro: TWideStringField;
    qryListagemestado: TWideStringField;
    qryListagemcep: TWideStringField;
    qryListagemtelefone: TWideStringField;
    qryListagememail: TWideStringField;
    qryListagemdataNascimento: TDateTimeField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
  private
     oCliente: TCliente;
    function APagar:Boolean; override;
    function Gravar(EstadoDoCadastro : TEstadoDoCadastro) :Boolean; override;
  public
    { Public declarations }
  end;

var
  frmCadCliente: TfrmCadCliente;

implementation

uses uDTMConexao;

  function TfrmCadCliente.APagar: Boolean;
  begin
        if oCliente.Selecionar(qryListagem.FieldByName('clienteId').AsInteger) then begin
        Result := oCliente.Apagar;
        end;
  end;

  procedure TfrmCadCliente.btnAlterarClick(Sender: TObject);
begin

  if oCliente.Selecionar(qryListagem.FieldByName('clienteId').AsInteger) then  begin

      edtClienteID.Text :=  IntToStr(oCliente.codigo);
      edtNome.Text := oCliente.nome;
      edtCEP.Text := oCliente.cep;
      edtEndereco.Text := oCliente.endereco;
      edtBairro.Text := oCliente.bairro;
      edtCidade.Text := oCliente.cidade;
      edtEstado.Text := oCliente.estado;
      edtTelefone.Text := oCliente.telefone;
      edtEmail.Text := oCliente.email;
      edtNascimento.Date := oCliente.nascimento;

  end
  else begin
    btnCancelar.Click ;
    Abort;
  end;


  inherited;

end;

procedure TfrmCadCliente.btnNovoClick(Sender: TObject);
begin
  inherited;
  edtNascimento.Date := Date;
  edtNome.SetFocus;

end;

procedure TfrmCadCliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if Assigned(oCliente) then
      FreeAndNil(oCliente);


end;

procedure TfrmCadCliente.FormCreate(Sender: TObject);
begin
  inherited;
  oCliente := TCliente.Create(dtmPrincipal.ConexaoDB);
  IndiceAtual := 'nome';

end;

function TfrmCadCliente.Gravar(EstadoDoCadastro: TEstadoDoCadastro): Boolean;
  begin
      if edtClienteID.Text<> EmptyStr then
          oCliente.codigo := StrToInt(edtClienteID.Text)
      else
         oCliente.codigo :=0;

     oCliente.nome := edtNome.Text;
     oCliente.cep := edtCEP.Text ;
     oCliente.endereco := edtEndereco.Text;
     oCliente.bairro := edtBairro.Text;
     oCliente.cidade := edtCidade.Text;
     oCliente.estado := edtEstado.Text;
     oCliente.telefone := edtTelefone.Text;
     oCliente.email := edtEmail.Text;
     oCliente.nascimento := edtNascimento.Date;

      if (EstadoDoCadastro=ecInserir) then
        result := oCliente.Inserir
      else if(EstadoDoCadastro=ecAlterar) then
        result := oCliente.Atualizar;

  end;

{$R *.dfm}


end.
