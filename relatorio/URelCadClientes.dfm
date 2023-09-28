object frmRelCadCliente: TfrmRelCadCliente
  Left = 0
  Top = 0
  Caption = 'RELATORIO LISTAGEM CLIENTES'
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
    DataSource = dtsCliente
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
        Left = 253
        Top = 11
        Width = 218
        Height = 24
        Alignment = taCenter
        Caption = 'Listagem de Clientes'
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
        Top = 4
        Width = 38
        Height = 16
        DataField = 'clienteId'
        DataSource = dtsCliente
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 47
        Top = 4
        Width = 218
        Height = 16
        DataField = 'nome'
        DataSource = dtsCliente
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 271
        Top = 3
        Width = 35
        Height = 16
        DataField = 'email'
        DataSource = dtsCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 620
        Top = 4
        Width = 79
        Height = 16
        DataField = 'telefone'
        DataSource = dtsCliente
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
          Left = 47
          Top = 3
          Width = 218
          Height = 16
          Caption = 'Nome'
        end
        object RLLabel3: TRLLabel
          Left = 3
          Top = 6
          Width = 38
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
        object RLLabel5: TRLLabel
          Left = 271
          Top = 4
          Width = 343
          Height = 19
          Caption = 'e-mail'
        end
        object RLLabel6: TRLLabel
          Left = 620
          Top = 4
          Width = 79
          Height = 19
          Caption = 'Telefone'
        end
      end
    end
  end
  object QryCLiente: TZQuery
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      'SELECT'
      'clientes.clienteId , clientes.nome ,'
      'clientes.email , clientes.telefone'
      'FROM clientes'
      'ORDER BY  clientes.nome ')
    Params = <>
    Left = 280
    object QryCLienteclienteId: TIntegerField
      FieldName = 'clienteId'
      ReadOnly = True
    end
    object QryCLientenome: TWideStringField
      FieldName = 'nome'
      Size = 60
    end
    object QryCLienteemail: TWideStringField
      FieldName = 'email'
      Size = 100
    end
    object QryCLientetelefone: TWideStringField
      FieldName = 'telefone'
      Size = 14
    end
  end
  object dtsCliente: TDataSource
    DataSet = QryCLiente
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
    Left = 648
  end
end
