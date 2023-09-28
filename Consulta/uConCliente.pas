unit uConCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTelaHerancaConsulta, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls;

type
  TfrmConCliente = class(TfrmTelaHerancaConsulta)
    qryPesquisaclienteId: TIntegerField;
    qryPesquisanome: TWideStringField;
    qryPesquisaendereco: TWideStringField;
    qryPesquisacidade: TWideStringField;
    qryPesquisatelefone: TWideStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConCliente: TfrmConCliente;

implementation

{$R *.dfm}

procedure TfrmConCliente.FormCreate(Sender: TObject);
begin
  inherited;
     aCampoId := 'clienteId';
   IndiceAtual := 'nome';
end;

end.