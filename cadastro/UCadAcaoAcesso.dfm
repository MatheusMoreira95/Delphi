inherited frmCadAcaoAcesso: TfrmCadAcaoAcesso
  Caption = 'CADASTRO DE A'#199#195'O ACESSO'
  ClientHeight = 499
  ClientWidth = 837
  ExplicitWidth = 843
  ExplicitHeight = 528
  PixelsPerInch = 96
  TextHeight = 15
  inherited pgcPrincipal: TPageControl
    Width = 837
    Height = 458
    ExplicitWidth = 837
    ExplicitHeight = 458
    inherited tabListagem: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 26
      ExplicitWidth = 829
      ExplicitHeight = 428
      inherited pnlListagemTopo: TPanel
        Width = 829
        ExplicitWidth = 829
      end
      inherited grdListagem: TDBGrid
        Width = 829
        Height = 371
        Columns = <
          item
            Expanded = False
            FieldName = 'acaoAcessoId'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricao'
            Width = 339
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'chave'
            Width = 411
            Visible = True
          end>
      end
    end
    inherited tabManutencao: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 26
      ExplicitWidth = 829
      ExplicitHeight = 428
      object edtAcaoAcessoId: TLabeledEdit
        Tag = 1
        Left = 24
        Top = 64
        Width = 121
        Height = 23
        EditLabel.Width = 39
        EditLabel.Height = 15
        EditLabel.Caption = 'C'#243'digo'
        MaxLength = 10
        NumbersOnly = True
        TabOrder = 0
      end
      object edtDescricao: TLabeledEdit
        Tag = 2
        Left = 24
        Top = 144
        Width = 657
        Height = 23
        CharCase = ecUpperCase
        EditLabel.Width = 51
        EditLabel.Height = 15
        EditLabel.Caption = 'Descri'#231#227'o'
        MaxLength = 100
        TabOrder = 1
      end
      object edtChave: TLabeledEdit
        Tag = 2
        Left = 24
        Top = 208
        Width = 657
        Height = 23
        EditLabel.Width = 33
        EditLabel.Height = 15
        EditLabel.Caption = 'Chave'
        MaxLength = 60
        TabOrder = 2
      end
    end
  end
  inherited btnRodape: TPanel
    Top = 458
    Width = 837
    ExplicitTop = 458
    ExplicitWidth = 837
    inherited btnFechar: TBitBtn
      Left = 723
      ExplicitLeft = 723
    end
    inherited btnNavigator: TDBNavigator
      Left = 485
      Hints.Strings = ()
      ExplicitLeft = 485
    end
  end
  inherited qryListagem: TZQuery
    SQL.Strings = (
      'SELECT acaoAcessoId , descricao , chave'
      ' FROM acaoAcesso')
    object qryListagemacaoAcessoId: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'acaoAcessoId'
      ReadOnly = True
    end
    object qryListagemdescricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Required = True
      Size = 100
    end
    object qryListagemchave: TWideStringField
      DisplayLabel = 'Chave'
      FieldName = 'chave'
      Required = True
      Size = 60
    end
  end
  inherited dtsListagem: TDataSource
    Left = 772
  end
end
