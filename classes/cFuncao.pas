unit cFuncao;


interface

uses System.Classes,ZAbstractConnection, ZConnection, system.SysUtils,
ZAbstractRODataset, ZAbstractDataset, ZDataset , Vcl.ExtCtrls,
Vcl.Controls, Vcl.Dialogs, Vcl.Menus,  Vcl.Forms ,  Vcl.buttons,
cAcaoAcesso , cUsuarioLogado, RLReport;


type
  TFuncao = class

  private

  public
    class procedure CriarForm (aNomeForm : TFormClass; oUsuarioLogado : TUsuarioLogado ; aConexao: TZConnection); static;
    class procedure CriarRelatorio (aNomeForm : TFormClass; oUsuarioLogado : TUsuarioLogado ; aConexao: TZConnection); static;



  end;

implementation

{ TFuncao }

class procedure TFuncao.CriarForm(aNomeForm: TFormClass;
  oUsuarioLogado: TUsuarioLogado; aConexao: TZConnection);
  var form : TForm;
   begin
    try
      form := aNomeForm.Create(Application);
      if TUsuarioLogado.TenhoAcesso(oUsuarioLogado.codigo , form.Name,aConexao) then
      begin
      form.ShowModal;
      end
      else begin
         MessageDlg('Usu�rio : ' + oUsuarioLogado.nome +
          ', n�o tem permiss�o de acesso', mtWarning ,[mbOK],0 ) ;
      end;
    finally
      if Assigned (form) then
          form.Release;
    end;

end;

class procedure TFuncao.CriarRelatorio(aNomeForm: TFormClass;
  oUsuarioLogado: TUsuarioLogado; aConexao: TZConnection);
var form : TForm;
    aRelatorio : TRLReport;
    i: Integer;
begin
    try
      form := aNomeForm.Create(Application);
      if TUsuarioLogado.TenhoAcesso(oUsuarioLogado.codigo , form.Name,aConexao) then
      begin
          for I := 0 to form.ComponentCount -1 do
            begin
              if form.Components[i] is TRLReport then
                begin
                    TRLReport(form.Components[i]).PreviewModal;
                    break;
                end;
            end;
      end
      else begin
          MessageDlg('Usu�rio : ' + oUsuarioLogado.nome +
          ', n�o tem permiss�o de acesso', mtWarning ,[mbOK],0 ) ;
      end;
    finally
       if Assigned(form) then
          FreeAndNil(form);
    end;
end;

end.
