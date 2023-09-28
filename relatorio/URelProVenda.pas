unit URelProVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset,uDTMConexao, RLReport, RLFilters, RLPDFFilter,
  RxCtrls, RLXLSXFilter;

type
  TfrmRelProVenda = class(TForm)
    QryVenda: TZQuery;
    dtsVenda: TDataSource;
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
    RLXLSXFilter1: TRLXLSXFilter;
    RLLabel6: TRLLabel;
    BandaDoGrupo: TRLGroup;
    RLBand3: TRLBand;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLLabel9: TRLLabel;
    RLDBText4: TRLDBText;
    RLBand5: TRLBand;
    RLLabel5: TRLLabel;
    RLDBResult3: TRLDBResult;
    dtsVendasItens: TDataSource;
    QryVendasItens: TZQuery;
    QryVendavendaId: TIntegerField;
    QryVendaclienteId: TIntegerField;
    QryVendanome: TWideStringField;
    QryVendadataVenda: TDateTimeField;
    QryVendatotalVenda: TFloatField;
    QryVendasItensvendaId: TIntegerField;
    QryVendasItensprodutoId: TIntegerField;
    QryVendasItensnome: TWideStringField;
    QryVendasItensquantidade: TFloatField;
    QryVendasItensvalorUnitario: TFloatField;
    QryVendasItenstotalProduto: TFloatField;
    RLLabel4: TRLLabel;
    RLSubDetail1: TRLSubDetail;
    RLBand2: TRLBand;
    RLBand4: TRLBand;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLLabel3: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLDraw3: TRLDraw;
    RLLabel7: TRLLabel;
    RLDBText3: TRLDBText;
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelProVenda: TfrmRelProVenda;

implementation

{$R *.dfm}


procedure TfrmRelProVenda.FormDestroy(Sender: TObject);
begin
      QryVenda.Close;
      QryVendasItens.Close
end;

end.
