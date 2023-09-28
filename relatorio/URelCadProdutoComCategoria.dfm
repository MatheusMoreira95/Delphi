object frmRelCadProdutoComCategoria: TfrmRelCadProdutoComCategoria
  Left = 0
  Top = 0
  Caption = 'RELATORIO LISTAGEM DE PRODUTO POR CATEGORIA'
  ClientHeight = 639
  ClientWidth = 824
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Relatorio: TRLReport
    Left = 30
    Top = -24
    Width = 794
    Height = 1123
    DataSource = dtsProduto
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object Cabecalho: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 59
      BandType = btHeader
      object RLLabel1: TRLLabel
        Left = 198
        Top = 11
        Width = 372
        Height = 24
        Alignment = taCenter
        Caption = 'Listagem de Produtos por Categoria'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw1: TRLDraw
        Left = 0
        Top = 41
        Width = 718
        Height = 18
        Align = faClientBottom
        DrawKind = dkLine
        Pen.Width = 2
      end
    end
    object rodape: TRLBand
      Left = 38
      Top = 275
      Width = 718
      Height = 48
      BandType = btFooter
      object RxLabel1: TRxLabel
        Left = 648
        Top = 24
        Width = 6
        Height = 16
        Caption = '/'
      end
      object RLDraw2: TRLDraw
        Left = 0
        Top = 0
        Width = 718
        Height = 18
        Align = faTop
        DrawKind = dkLine
        Pen.Width = 2
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 3
        Top = 24
        Width = 60
        Height = 16
        Info = itFullDate
        Text = ''
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 608
        Top = 24
        Width = 34
        Height = 16
        Alignment = taRightJustify
        Info = itPageNumber
        Text = ''
      end
      object RLSystemInfo3: TRLSystemInfo
        Left = 660
        Top = 24
        Width = 45
        Height = 16
        Info = itLastPageNumber
        Text = ''
      end
      object RLLabel2: TRLLabel
        Left = 554
        Top = 24
        Width = 53
        Height = 16
        Caption = 'P'#225'gina:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object BandaDoGrupo: TRLGroup
      Left = 38
      Top = 97
      Width = 718
      Height = 178
      DataFields = 'categoriaId'
      ForceMinBands = True
      object RLBand3: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 27
        BandType = btHeader
        Color = clSilver
        ParentColor = False
        Transparent = False
        object RLLabel9: TRLLabel
          Left = 3
          Top = 5
          Width = 67
          Height = 16
          Caption = 'Categoria:'
        end
        object RLDBText4: TRLDBText
          Left = 112
          Top = 5
          Width = 117
          Height = 14
          DataField = 'DescricaoCategoria'
          DataSource = dtsProduto
          Text = ''
        end
        object RLDBText6: TRLDBText
          Left = 76
          Top = 5
          Width = 13
          Height = 16
          Alignment = taRightJustify
          DataField = 'categoriaId'
          DataSource = dtsProduto
          Text = ''
        end
        object RLLabel10: TRLLabel
          Left = 95
          Top = 5
          Width = 11
          Height = 16
          Alignment = taCenter
          Caption = '-'
        end
      end
      object RLBand2: TRLBand
        Left = 0
        Top = 27
        Width = 718
        Height = 39
        BandType = btHeader
        object RLPanel1: TRLPanel
          Left = 0
          Top = 0
          Width = 718
          Height = 39
          Margins.BottomMargin = 2.000000000000000000
          Align = faClient
          Color = clInfoBk
          ParentColor = False
          Transparent = False
          object RLLabel4: TRLLabel
            Left = 76
            Top = 6
            Width = 87
            Height = 16
            Caption = 'Nome Produto'
          end
          object RLLabel3: TRLLabel
            Left = 3
            Top = 7
            Width = 67
            Height = 16
            Caption = 'C'#243'digo'
          end
          object RLDraw3: TRLDraw
            Left = 0
            Top = 30
            Width = 718
            Height = 1
            Align = faClientBottom
            DrawKind = dkLine
            Pen.Width = 2
          end
          object RLLabel5: TRLLabel
            Left = 420
            Top = 8
            Width = 70
            Height = 16
            Caption = 'Quantidade'
          end
          object RLLabel7: TRLLabel
            Left = 608
            Top = 3
            Width = 34
            Height = 16
            Caption = 'Valor'
          end
        end
      end
      object RLBand1: TRLBand
        Left = 0
        Top = 66
        Width = 718
        Height = 26
        AlignToBottom = True
        object RLDBText1: TRLDBText
          Left = 3
          Top = 3
          Width = 57
          Height = 16
          DataField = 'produtoId'
          DataSource = dtsProduto
          Text = ''
        end
        object RLDBText2: TRLDBText
          Left = 76
          Top = 3
          Width = 36
          Height = 16
          DataField = 'nome'
          DataSource = dtsProduto
          Text = ''
        end
        object RLDBText3: TRLDBText
          Left = 420
          Top = 4
          Width = 67
          Height = 16
          DataField = 'quantidade'
          DataSource = dtsProduto
          Text = ''
        end
        object RLDBText5: TRLDBText
          Left = 624
          Top = 4
          Width = 30
          Height = 16
          DataField = 'valor'
          DataSource = dtsProduto
          Text = ''
        end
        object RLLabel8: TRLLabel
          Left = 604
          Top = 4
          Width = 20
          Height = 16
          Alignment = taRightJustify
          Caption = 'R$'
        end
      end
      object RLBand4: TRLBand
        Left = 0
        Top = 92
        Width = 718
        Height = 61
        BandType = btSummary
        object RLDraw4: TRLDraw
          Left = 0
          Top = 0
          Width = 718
          Height = 18
          Align = faTop
          DrawKind = dkLine
          Pen.Style = psDot
        end
        object RLDBResult1: TRLDBResult
          Left = 593
          Top = 16
          Width = 105
          Height = 16
          DataField = 'quantidade'
          DataSource = dtsProduto
          Info = riSum
          Text = ''
        end
        object RLLabel11: TRLLabel
          Left = 420
          Top = 16
          Width = 95
          Height = 16
          Caption = 'Total Categoria '
        end
        object RLLabel12: TRLLabel
          Left = 420
          Top = 38
          Width = 136
          Height = 16
          Caption = 'Pre'#231'o M'#233'dio Categoria'
        end
        object RLDBResult2: TRLDBResult
          Left = 593
          Top = 38
          Width = 88
          Height = 16
          DataField = 'valor'
          DataSource = dtsProduto
          Info = riAverage
          Text = ''
        end
      end
    end
  end
  object RLLabel6: TRLLabel
    Left = 428
    Top = 14
    Width = 70
    Height = 16
    Caption = 'Quantidade'
  end
  object QryProduto: TZQuery
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      'SELECT produtos.produtoId , produtos.nome , produtos.descricao ,'
      #9'produtos.quantidade , produtos.valor, '
      
        #9'categorias.descricao as DescricaoCategoria , categorias.categor' +
        'iaId'
      'FROM produtos '
      
        'LEFT  join categorias on categorias.categoriaId = produtos.categ' +
        'oriaId'
      'order by produtos.categoriaId, produtos.produtoId')
    Params = <>
    Left = 248
    Top = 464
    object QryProdutoprodutoId: TIntegerField
      FieldName = 'produtoId'
      ReadOnly = True
    end
    object QryProdutonome: TWideStringField
      FieldName = 'nome'
      Size = 60
    end
    object QryProdutodescricao: TWideStringField
      FieldName = 'descricao'
      Size = 255
    end
    object QryProdutoquantidade: TFloatField
      FieldName = 'quantidade'
      DisplayFormat = '#0.00'
    end
    object QryProdutovalor: TFloatField
      FieldName = 'valor'
      DisplayFormat = '#0.00'
    end
    object QryProdutoDescricaoCategoria: TWideStringField
      FieldName = 'DescricaoCategoria'
      Size = 30
    end
    object QryProdutocategoriaId: TIntegerField
      FieldName = 'categoriaId'
      ReadOnly = True
    end
  end
  object dtsProduto: TDataSource
    DataSet = QryProduto
    Left = 360
    Top = 416
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport Community Edition v4.0.0.1 \251 Copyright '#169' 1999-20' +
      '21 Fortes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 512
    Top = 432
  end
  object RLXLSXFilter1: TRLXLSXFilter
    DisplayName = 'Planilha Excel'
    Left = 592
    Top = 456
  end
end
