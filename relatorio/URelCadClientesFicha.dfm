object frmRelCadClienteFicha: TfrmRelCadClienteFicha
  Left = 0
  Top = 0
  Caption = 'RELATORIO FICHA CLIENTES'
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
    Left = 22
    Top = -40
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
        Left = 272
        Top = 11
        Width = 180
        Height = 24
        Alignment = taCenter
        Caption = 'Ficha de Clientes'
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
      object RLLabel3: TRLLabel
        Left = 24
        Top = 72
        Width = 58
        Height = 16
      end
      object RLLabel4: TRLLabel
        Left = 120
        Top = 72
        Width = 58
        Height = 16
      end
    end
    object rodape: TRLBand
      Left = 38
      Top = 209
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
        Left = 549
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
      Top = 97
      Width = 718
      Height = 112
      AlignToBottom = True
      object RLDraw3: TRLDraw
        Left = 0
        Top = 88
        Width = 718
        Height = 24
        Align = faClientBottom
        DrawKind = dkLine
        Pen.Style = psDot
      end
      object RLDBText1: TRLDBText
        Left = 62
        Top = 6
        Width = 38
        Height = 16
        DataField = 'clienteId'
        DataSource = dtsCliente
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 157
        Top = 6
        Width = 254
        Height = 16
        DataField = 'nome'
        DataSource = dtsCliente
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 65
        Top = 76
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
        Left = 512
        Top = 76
        Width = 79
        Height = 16
        DataField = 'telefone'
        DataSource = dtsCliente
        Text = ''
      end
      object RLLabel5: TRLLabel
        Left = 3
        Top = 6
        Width = 53
        Height = 16
        Caption = 'C'#243'digo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 106
        Top = 6
        Width = 45
        Height = 16
        Caption = 'Nome:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText5: TRLDBText
        Left = 43
        Top = 30
        Width = 71
        Height = 16
        DataField = 'cep'
        DataSource = dtsCliente
        Text = ''
      end
      object RLLabel7: TRLLabel
        Left = 3
        Top = 30
        Width = 34
        Height = 16
        Caption = 'CEP:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText6: TRLDBText
        Left = 208
        Top = 30
        Width = 57
        Height = 16
        DataField = 'endereco'
        DataSource = dtsCliente
        Text = ''
      end
      object RLLabel8: TRLLabel
        Left = 120
        Top = 30
        Width = 82
        Height = 16
        Caption = 'Logradouro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText7: TRLDBText
        Left = 56
        Top = 54
        Width = 36
        Height = 16
        DataField = 'bairro'
        DataSource = dtsCliente
        Text = ''
      end
      object RLLabel9: TRLLabel
        Left = 3
        Top = 54
        Width = 47
        Height = 16
        Caption = 'Bairro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel10: TRLLabel
        Left = 120
        Top = 54
        Width = 53
        Height = 16
        Caption = 'Cidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText8: TRLDBText
        Left = 192
        Top = 54
        Width = 42
        Height = 16
        DataField = 'cidade'
        DataSource = dtsCliente
        Text = ''
      end
      object RLLabel11: TRLLabel
        Left = 427
        Top = 54
        Width = 25
        Height = 16
        Caption = 'UF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText9: TRLDBText
        Left = 463
        Top = 54
        Width = 43
        Height = 16
        DataField = 'estado'
        DataSource = dtsCliente
        Text = ''
      end
      object RLLabel12: TRLLabel
        Left = 3
        Top = 76
        Width = 44
        Height = 16
        Caption = 'Email:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel13: TRLLabel
        Left = 427
        Top = 76
        Width = 64
        Height = 16
        Caption = 'Telefone:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText10: TRLDBText
        Left = 633
        Top = 6
        Width = 98
        Height = 16
        DataField = 'dataNascimento'
        DataSource = dtsCliente
        Text = ''
      end
      object RLLabel14: TRLLabel
        Left = 512
        Top = 6
        Width = 115
        Height = 16
        Caption = 'Data Nascimento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object QryCLiente: TZQuery
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      ''
      'SELECT  clienteId'
      '      ,nome'
      '      ,endereco'
      '      ,cidade'
      '      ,bairro'
      '      ,estado'
      '      ,cep'
      '      ,telefone'
      '      ,email'
      '      ,dataNascimento'
      '  FROM clientes'
      'ORDER BY nome'#9)
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
    object QryCLienteendereco: TWideStringField
      FieldName = 'endereco'
      Size = 60
    end
    object QryCLientecidade: TWideStringField
      FieldName = 'cidade'
      Size = 50
    end
    object QryCLientebairro: TWideStringField
      FieldName = 'bairro'
      Size = 40
    end
    object QryCLienteestado: TWideStringField
      FieldName = 'estado'
      Size = 2
    end
    object QryCLientecep: TWideStringField
      FieldName = 'cep'
      Size = 10
    end
    object QryCLientetelefone: TWideStringField
      FieldName = 'telefone'
      Size = 14
    end
    object QryCLienteemail: TWideStringField
      FieldName = 'email'
      Size = 100
    end
    object QryCLientedataNascimento: TDateTimeField
      FieldName = 'dataNascimento'
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
