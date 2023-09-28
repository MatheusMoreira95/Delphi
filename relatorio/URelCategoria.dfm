object frmRelCategoria: TfrmRelCategoria
  Left = 0
  Top = 0
  Caption = 'RELATORIO CATEGORIAS'
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
    Left = 8
    Top = -16
    Width = 794
    Height = 1123
    DataSource = dtsCategorias
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
        Left = 240
        Top = 11
        Width = 245
        Height = 24
        Alignment = taCenter
        Caption = 'Listagem de Categorias'
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
      Top = 161
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
    object RLBand1: TRLBand
      Left = 38
      Top = 135
      Width = 718
      Height = 26
      AlignToBottom = True
      object RLDBText1: TRLDBText
        Left = 3
        Top = 3
        Width = 67
        Height = 19
        DataField = 'categoriaId'
        DataSource = dtsCategorias
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 88
        Top = 4
        Width = 397
        Height = 16
        DataField = 'descricao'
        DataSource = dtsCategorias
        Text = ''
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 97
      Width = 718
      Height = 38
      BandType = btColumnHeader
      object RLPanel1: TRLPanel
        Left = 0
        Top = 0
        Width = 718
        Height = 38
        Margins.BottomMargin = 2.000000000000000000
        Align = faClient
        Color = clInfoBk
        ParentColor = False
        Transparent = False
        object RLLabel4: TRLLabel
          Left = 84
          Top = 6
          Width = 66
          Height = 16
          Caption = 'Descri'#231#227'o '
        end
        object RLLabel3: TRLLabel
          Left = 3
          Top = 6
          Width = 67
          Height = 16
          Caption = 'C'#243'digo'
        end
        object RLDraw3: TRLDraw
          Left = 0
          Top = 29
          Width = 718
          Height = 1
          Align = faClientBottom
          DrawKind = dkLine
          Pen.Width = 2
        end
      end
    end
  end
  object QryCategorias: TZQuery
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      'SELECT categoriaId , descricao from categorias')
    Params = <>
    Left = 280
    object QryCategoriascategoriaId: TIntegerField
      FieldName = 'categoriaId'
      ReadOnly = True
    end
    object QryCategoriasdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 30
    end
  end
  object dtsCategorias: TDataSource
    DataSet = QryCategorias
    Left = 376
    Top = 65528
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport Community Edition v4.0.0.1 \251 Copyright '#169' 1999-20' +
      '21 Fortes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 552
  end
  object RLXLSXFilter1: TRLXLSXFilter
    DisplayName = 'Planilha Excel'
    Left = 616
    Top = 32
  end
end
