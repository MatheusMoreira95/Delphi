unit URelCadProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset,uDTMConexao, RLReport, RLFilters, RLPDFFilter,
  RxCtrls, RLXLSXFilter;

type
  TfrmRelCadProduto = class(TForm)
    QryProduto: TZQuery;
    dtsProduto: TDataSource;
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
    QryProdutoprodutoId: TIntegerField;
    QryProdutonome: TWideStringField;
    QryProdutoquantidade: TFloatField;
    QryProdutovalor: TFloatField;
    RLLabel5: TRLLabel;
    RLDBText3: TRLDBText;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLDBText5: TRLDBText;
    RLLabel8: TRLLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelCadProduto: TfrmRelCadProduto;

implementation

{$R *.dfm}


procedure TfrmRelCadProduto.FormCreate(Sender: TObject);
begin
      QryProduto.Open;
end;

procedure TfrmRelCadProduto.FormDestroy(Sender: TObject);
begin
      QryProduto.Close;
end;

end.
