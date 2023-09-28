object dtmVenda: TdtmVenda
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 227
  Width = 445
  object QryCliente: TZQuery
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      'Select clienteId, nome '
      'from clientes')
    Params = <>
    Left = 80
    Top = 32
    object QryClienteclienteId: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'clienteId'
      ReadOnly = True
    end
    object QryClientenome: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      Size = 60
    end
  end
  object QryProduto: TZQuery
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      'SELECT  produtoId , nome , valor , quantidade'
      'from produtos')
    Params = <>
    Left = 176
    Top = 32
    object QryProdutoprodutoId: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'produtoId'
      ReadOnly = True
    end
    object QryProdutonome: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      Size = 60
    end
    object QryProdutovalor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
    end
    object QryProdutoquantidade: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'quantidade'
    end
  end
  object cdsItensVenda: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 320
    Top = 32
    object cdsItensVendaprodutoId: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'produtoId'
    end
    object cdsItensVendaNomeProduto: TStringField
      DisplayLabel = 'Nome do Produto'
      FieldName = 'NomeProduto'
      Size = 60
    end
    object cdsItensVendaquantidade: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'quantidade'
    end
    object cdsItensVendavalorUnitario: TFloatField
      DisplayLabel = 'Valor Unit'#225'rio'
      FieldName = 'valorUnitario'
    end
    object cdsItensVendavalorTotal: TFloatField
      DisplayLabel = 'Total do Produto'
      FieldName = 'valorTotalProduto'
    end
  end
  object dtsProduto: TDataSource
    DataSet = QryProduto
    Left = 176
    Top = 96
  end
  object dtsCliente: TDataSource
    DataSet = QryCliente
    Left = 80
    Top = 96
  end
  object dtsItensVendas: TDataSource
    DataSet = cdsItensVenda
    Left = 320
    Top = 104
  end
end
