unit URelVendaPorData;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset,uDTMConexao, RLReport, RLFilters, RLPDFFilter,
  RxCtrls, RLXLSXFilter;

type
  TfrmRelVendaPorData = class(TForm)
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
    RLBand2: TRLBand;
    RLPanel1: TRLPanel;
    RLLabel4: TRLLabel;
    RLLabel3: TRLLabel;
    RLDraw3: TRLDraw;
    RLLabel7: TRLLabel;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText5: TRLDBText;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLDBText4: TRLDBText;
    RLBand4: TRLBand;
    RLDraw4: TRLDraw;
    RLDBResult1: TRLDBResult;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLDBResult2: TRLDBResult;
    QryVendavendaId: TIntegerField;
    QryVendaclienteId: TIntegerField;
    QryVendanome: TWideStringField;
    QryVendadataVenda: TDateTimeField;
    QryVendatotalVenda: TFloatField;
    RLBand5: TRLBand;
    RLLabel5: TRLLabel;
    RLDBResult3: TRLDBResult;
    RLLabel10: TRLLabel;
    RLDBResult4: TRLDBResult;
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelVendaPorData: TfrmRelVendaPorData;

implementation

{$R *.dfm}


procedure TfrmRelVendaPorData.FormDestroy(Sender: TObject);
begin
      QryVenda.Close;
end;

end.
