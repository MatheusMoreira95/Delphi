inherited frmConProduto: TfrmConProduto
  Caption = 'CONSULTA DE  PRODUTO'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    inherited grdPesquisa: TDBGrid
      DataSource = dtsPesquisa
    end
  end
  inherited qryPesquisa: TZQuery
    Active = True
    SQL.Strings = (
      'SELECT produtoId , nome , valor , quantidade'
      'from produtos')
    object qryPesquisaprodutoId: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 10
      FieldName = 'produtoId'
      ReadOnly = True
    end
    object qryPesquisanome: TWideStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 74
      FieldName = 'nome'
      Size = 60
    end
    object qryPesquisavalor: TFloatField
      DisplayLabel = 'Valor'
      DisplayWidth = 13
      FieldName = 'valor'
      DisplayFormat = '#0.00'
    end
    object qryPesquisaquantidade: TFloatField
      DisplayLabel = 'Quantidade'
      DisplayWidth = 14
      FieldName = 'quantidade'
      DisplayFormat = '#0.00'
    end
  end
end
