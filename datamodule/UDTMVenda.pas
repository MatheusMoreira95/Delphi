unit UDTMVenda;

interface

uses
  System.SysUtils, System.Classes, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Datasnap.DBClient;

type
  TdtmVenda = class(TDataModule)
    QryCliente: TZQuery;
    QryClienteclienteId: TIntegerField;
    QryClientenome: TWideStringField;
    QryProduto: TZQuery;
    QryProdutoprodutoId: TIntegerField;
    QryProdutonome: TWideStringField;
    QryProdutovalor: TFloatField;
    QryProdutoquantidade: TFloatField;
    cdsItensVenda: TClientDataSet;
    dtsProduto: TDataSource;
    dtsCliente: TDataSource;
    dtsItensVendas: TDataSource;
    cdsItensVendaprodutoId: TIntegerField;
    cdsItensVendaNomeProduto: TStringField;
    cdsItensVendaquantidade: TFloatField;
    cdsItensVendavalorUnitario: TFloatField;
    cdsItensVendavalorTotal: TFloatField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmVenda: TdtmVenda;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses uDTMConexao;

{$R *.dfm}

procedure TdtmVenda.DataModuleCreate(Sender: TObject);
begin
      cdsItensVenda.CreateDataSet ;
     QryCliente.Open;
     QryProduto.Open;
end;

procedure TdtmVenda.DataModuleDestroy(Sender: TObject);
begin
     cdsItensVenda.Close ;
     QryCliente.Close;
     QryProduto.Close;
end;

end.
