unit uConProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTelaHerancaConsulta, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.ExtCtrls;

type
  TfrmConProduto = class(TfrmTelaHerancaConsulta)
    qryPesquisaprodutoId: TIntegerField;
    qryPesquisanome: TWideStringField;
    qryPesquisavalor: TFloatField;
    qryPesquisaquantidade: TFloatField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConProduto: TfrmConProduto;

implementation

{$R *.dfm}

procedure TfrmConProduto.FormCreate(Sender: TObject);
begin
  inherited;
     aCampoId := 'produtoID';
   IndiceAtual := 'nome';
end;

end.
