object frmUsuariosVsAcoes: TfrmUsuariosVsAcoes
  Left = 0
  Top = 0
  Caption = 'USU'#193'RIOS VS A'#199#213'ES'
  ClientHeight = 476
  ClientWidth = 785
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 321
    Top = 0
    Width = 0
    Height = 435
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 321
    Height = 435
    Align = alLeft
    Caption = 'Panel1'
    TabOrder = 0
    ExplicitHeight = 436
    object grdUsuarios: TDBGrid
      Left = 1
      Top = 1
      Width = 319
      Height = 433
      Align = alClient
      DataSource = dtsUuario
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'usuarioID'
          Width = 59
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nome'
          Width = 236
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 435
    Width = 785
    Height = 41
    Align = alBottom
    Anchors = [akTop, akRight]
    TabOrder = 1
    ExplicitLeft = -1
    ExplicitTop = 441
    ExplicitWidth = 900
    DesignSize = (
      785
      41)
    object btnFechar: TBitBtn
      Left = 686
      Top = 6
      Width = 85
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&FECHAR'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FF244E6E
        0A6B9BA6B2F19FA4DAA29CBFAD9BAAB69E9EB69E9EB69F9FB69F9FB69F9FB69F
        9F3C9DBE244E6EFF00FFFF00FF244E6E0A6B9B95AAFC8199FC6F8BFC5D7DFC56
        72F06272D47A79B899879CAB9090AB90903FA0BF244E6EFF00FFFF00FF244E6E
        0A6B9B849CFC728DFC607FFC4E71FC3C62FC2A54FC1745FC0A3AFAA08181A081
        8142A3C1244E6EFF00FFFF00FF244E6E0D6E9D7490FC6282FC5074FC3E64FC2C
        56FC1A48FC0A3BFC0A34F095727295727245A6C2244E6EFF00FFFF00FF244E6E
        10719F6684FC5475FC4267FC3059FC1E4AFC0C3CFC0A36F20A2FE58963638963
        6348A9C4244E6EFF00FFFF00FF244E6E1374A15778FC4569FC335BFC214DFC0F
        3EFC0A37F40A2FE60A2ADA7E54547E54544BACC6244E6EFF00FFFF00FF244E6E
        1575A3486CFC365EFC244FFC1240FC0A37F50A31E80A2ADC0A24D07446467446
        464EAEC8244E6EFF00FFFF00FF244E6E1778A53960FC2751FC1543FC0A38F70A
        32EA0A2BDE0A7ED80AA0E16A3C3C6B3B3B50B1CA244E6EFF00FFFF00FF244E6E
        1A7BA72A54FC1744FC0A39F90A33ED0A2CE00A27D30B91EA4DC9F3693D3E6B3B
        3B53B4CC244E6EFF00FFFF00FF244E6E1D7EA91947FC0A3AFB0A34EF0A2DE30A
        28D50A21C90A1BBD0A15B06B3B3B6B3B3B56B7CE244E6EFF00FFFF00FF244E6E
        2081AB0A3BFC0A35F10A2EE40A29D80A22CB0A1CBF0A16B20A0EA56B3B3B6B3B
        3B59BAD0244E6EFF00FFFF00FF244E6E2384AC0A36F30A2FE60A2ADA0A23CE0A
        1DC00A15B10A0FA40A0A9B6B3B3B6B3B3B5CBDD1244E6EFF00FFFF00FF244E6E
        2687AE0A31E80A2ADC0A24D00A1BBE0A13AD0A0EA30A0A9C0A0A9B6B3B3B6B3B
        3B5EBFD3244E6EFF00FFFF00FF244E6E2989B00A2BDE0A21C90A17B40A11AA0A
        0EA20A0B9C0A0A9B0A0A9B6B3B3B6B3B3B61C1D5244E6EFF00FFFF00FF244E6E
        2B8CB23192B53697B93C9CBC3FA0BF45A6C24AABC64FB0C954B5CD59BAD15FBF
        D363C4D7244E6EFF00FFFF00FF244E6E244E6E244E6E244E6E244E6E244E6E24
        4E6E244E6E244E6E244E6E244E6E244E6E244E6E244E6EFF00FF}
      TabOrder = 0
      OnClick = btnFecharClick
      ExplicitLeft = 685
    end
  end
  object Panel3: TPanel
    Left = 321
    Top = 0
    Width = 464
    Height = 435
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 2
    ExplicitLeft = 328
    ExplicitWidth = 572
    ExplicitHeight = 436
    object grdAcoes: TDBGrid
      Left = 1
      Top = 1
      Width = 462
      Height = 433
      Align = alClient
      DataSource = dtsAcoes
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = grdAcoesDrawColumnCell
      OnDblClick = grdAcoesDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'usuarioId'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'acaoAcessoId'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'descricao'
          Width = 536
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ativo'
          Visible = False
        end>
    end
  end
  object qryAcoes: TZQuery
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      'SELECT ua.usuarioId,'
      '       ua.acaoAcessoId,'
      '       a.descricao,'
      '       ua.ativo'
      '    FROM usuariosAcaoAcesso as ua'
      '    INNER JOIN acaoAcesso as a'
      '    ON a.acaoAcessoId = ua.acaoAcessoID'
      '    WHERE ua.usuarioId = :usuarioId'
      '')
    Params = <
      item
        DataType = ftUnknown
        Name = 'usuarioId'
        ParamType = ptUnknown
      end>
    Left = 492
    Top = 232
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'usuarioId'
        ParamType = ptUnknown
      end>
    object qryAcoesusuarioId: TIntegerField
      FieldName = 'usuarioId'
      Required = True
    end
    object qryAcoesacaoAcessoId: TIntegerField
      FieldName = 'acaoAcessoId'
      Required = True
    end
    object qryAcoesdescricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Required = True
      Size = 100
    end
    object qryAcoesativo: TBooleanField
      FieldName = 'ativo'
      Required = True
    end
  end
  object qryUsuario: TZQuery
    Connection = dtmPrincipal.ConexaoDB
    AfterScroll = qryUsuarioAfterScroll
    Active = True
    SQL.Strings = (
      'SELECT usuarioID, Nome'
      'FROM usuarios'
      ''
      '')
    Params = <>
    Left = 172
    Top = 240
    object qryUsuariousuarioID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'usuarioID'
      ReadOnly = True
    end
    object qryUsuarioNome: TWideStringField
      FieldName = 'Nome'
      Required = True
      Size = 50
    end
  end
  object dtsAcoes: TDataSource
    DataSet = qryAcoes
    Left = 564
    Top = 249
  end
  object dtsUuario: TDataSource
    DataSet = qryUsuario
    Left = 208
    Top = 248
  end
end
