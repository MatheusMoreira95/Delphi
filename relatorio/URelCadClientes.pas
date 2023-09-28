unit URelCadClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset,uDTMConexao, RLReport, RLFilters, RLPDFFilter,
  RxCtrls, RLXLSXFilter;

type
  TfrmRelCadCliente = class(TForm)
    QryCLiente: TZQuery;
    dtsCliente: TDataSource;
    Relatorio: TRLReport;
    Cabecalho: TRLBand;
    RLLabel1: TRLLabel;
    RLDraw1: TRLDraw;
    RLPDFFilter1: TRLPDFFilter;
    rodape: TRLBand;
    RLDraw2: TRLDraw;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    RxLabel1: TRxLabel;
    RLLabel2: TRLLabel;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLBand2: TRLBand;
    RLPanel1: TRLPanel;
    RLLabel4: TRLLabel;
    RLLabel3: TRLLabel;
    RLDraw3: TRLDraw;
    RLXLSXFilter1: TRLXLSXFilter;
    QryCLienteclienteId: TIntegerField;
    QryCLientenome: TWideStringField;
    QryCLienteemail: TWideStringField;
    QryCLientetelefone: TWideStringField;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelCadCliente: TfrmRelCadCliente;

implementation

{$R *.dfm}


procedure TfrmRelCadCliente.FormCreate(Sender: TObject);
begin
      QryCLiente.Open;
end;

procedure TfrmRelCadCliente.FormDestroy(Sender: TObject);
begin
     QryCLiente.Close;
end;

end.
