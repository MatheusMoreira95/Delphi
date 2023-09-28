unit UAlterarSenha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmAlterarSenha = class(TForm)
    edtSenhaAtual: TEdit;
    Label2: TLabel;
    edtSenhaNova: TEdit;
    Label1: TLabel;
    edtSenhaConfirmacao: TEdit;
    Label3: TLabel;
    btnAlterar: TBitBtn;
    btnFechar: TBitBtn;
    lblUsuario: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
      procedure LimparEdits ;
  end;

var
  frmAlterarSenha: TfrmAlterarSenha;

implementation

uses  cCadUsuario, UPrincipal , uDTMConexao;

  procedure TfrmAlterarSenha.LimparEdits  ;
   begin
        edtSenhaAtual.Clear;
        edtSenhaNova.Clear;
        edtSenhaConfirmacao.Clear;
   end;

{$R *.dfm}

procedure TfrmAlterarSenha.btnAlterarClick(Sender: TObject);
var oUsuario : TUsuario;
begin
    begin
        if(edtSenhaAtual.Text = oUsuarioLogado.senha) then begin
            if(edtSenhaNova.Text = edtSenhaConfirmacao.Text) then begin
                try
                   oUsuario := TUsuario.Create(dtmPrincipal.ConexaoDB);
                   oUsuario.codigo := oUsuarioLogado.codigo;
                   oUsuario.senha := edtSenhaNova.Text;
                   oUsuario.AlterarSenha;
                   oUsuarioLogado.senha :=  edtSenhaNova.Text;
                   MessageDlg('Senha Alterada'  , mtInformation, [mbOK],0);
                   LimparEdits;
                finally
                    FreeAndNil(oUsuario);
                end;
            end
            else begin
              MessageDlg('Senhas N�o confere'  , mtInformation, [mbOK],0);
              edtSenhaNova.SetFocus;
            end;

        end
        else begin
          MessageDlg('Senha Atual inv�lida'  , mtInformation, [mbOK],0);
        end;
    end;
end;

procedure TfrmAlterarSenha.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmAlterarSenha.FormShow(Sender: TObject);
begin
    LimparEdits;
    lblUsuario.Caption := 'Alterar senha do Usu�rio: ' +  oUsuarioLogado.nome ;
end;

end.
