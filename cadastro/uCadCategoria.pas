unit uCadCategoria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaHeranca, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls, Vcl.ComCtrls,uDTMConexao,
  cCadCategoria,UEnum;

type
  TfrmCadCategoria = class(TfrmTelaHeranca)
    qryListagemcategoriaID: TIntegerField;
    qryListagemdescricao: TWideStringField;
    edtCodigoId: TLabeledEdit;
    edtDescricao: TLabeledEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAlterarClick(Sender: TObject);
  private
    oCategoria: TCategoria;
    function APagar:Boolean; override;
    function Gravar(EstadoDoCadastro : TEstadoDoCadastro) :Boolean; override;
  public
    { Public declarations }
  end;

var
  frmCadCategoria: TfrmCadCategoria;

implementation

{$R *.dfm}



procedure TfrmCadCategoria.btnAlterarClick(Sender: TObject);
begin

  if oCategoria.Selecionar(qryListagem.FieldByName('categoriaId').AsInteger) then begin
        edtCodigoId.Text :=  IntToStr(oCategoria.codigo);
        edtDescricao.Text := oCategoria.descricao;
  end
    else begin
      btnCancelar.Click    ;
      Abort;
    end;

  inherited;
end;

procedure TfrmCadCategoria.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
   if Assigned(oCategoria) then
      FreeAndNil(oCategoria);
end;

procedure TfrmCadCategoria.FormCreate(Sender: TObject);
begin
  inherited;
  oCategoria:=TCategoria.Create(dtmPrincipal.ConexaoDB);

  IndiceAtual:= 'descricao';
end;

{$region 'override'}

  function TfrmCadCategoria.APagar: Boolean;
  begin
        if oCategoria.Selecionar(qryListagem.FieldByName('categoriaId').AsInteger) then begin
        Result := oCategoria.Apagar;
        end;
  end;

  function TfrmCadCategoria.Gravar(EstadoDoCadastro: TEstadoDoCadastro): Boolean;
  begin
      if edtCodigoId.Text<> EmptyStr then
          oCategoria.codigo := StrToInt(edtCodigoId.Text)
      else
          oCategoria.codigo :=0;

      oCategoria.descricao := edtDescricao.Text;


      if (EstadoDoCadastro=ecInserir) then
        result := oCategoria.Inserir
      else if(EstadoDoCadastro=ecAlterar) then
        result := oCategoria.Atualizar;

  end;

{$endRegion}

end.
