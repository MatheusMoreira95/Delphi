unit USelecionarData;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,
  RxToolEdit,System.DateUtils;

type
  TfrmSelecionarData = class(TForm)
    edtDataInicio: TDateEdit;
    Label3: TLabel;
    edtDataFinal: TDateEdit;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSelecionarData: TfrmSelecionarData;

implementation

{$R *.dfm}

procedure TfrmSelecionarData.BitBtn1Click(Sender: TObject);
begin
    if(edtDataFinal.Date) < (edtDataInicio.Date)then begin
      MessageDlg('Data final n�o pode ser menor que a data inicial',mtInformation,[MBOK],0);
      edtDataFinal.SetFocus;
      abort;
    end;

    if(edtDataFinal.Date=0 ) or (edtDataInicio.Date=0)then begin
      MessageDlg('Data Inicial e Data Final s�o obrigat�rio ',mtInformation,[MBOK],0);
      edtDataInicio.SetFocus;
      abort;
    end;

    Close;

end;

procedure TfrmSelecionarData.FormShow(Sender: TObject);
begin
    edtDataInicio.Date         := StartOfTheMonth(Date);
    edtDataFinal.Date         := EndOfTheMonth(Date);
end;

end.
