inherited frmCadUsuario: TfrmCadUsuario
  Caption = 'CADASTRO DE USU'#193'RIO'
  ClientHeight = 422
  ClientWidth = 893
  ExplicitWidth = 899
  ExplicitHeight = 451
  PixelsPerInch = 96
  TextHeight = 15
  inherited pgcPrincipal: TPageControl
    Width = 893
    Height = 381
    ExplicitWidth = 893
    ExplicitHeight = 381
    inherited tabListagem: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 26
      ExplicitWidth = 885
      ExplicitHeight = 351
      inherited pnlListagemTopo: TPanel
        Width = 885
        ExplicitWidth = 885
      end
      inherited grdListagem: TDBGrid
        Width = 885
        Height = 294
        Columns = <
          item
            Expanded = False
            FieldName = 'usuarioId'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome'
            Visible = True
          end>
      end
    end
    inherited tabManutencao: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 26
      ExplicitWidth = 885
      ExplicitHeight = 351
      object edtUsuarioId: TLabeledEdit
        Tag = 1
        Left = 35
        Top = 72
        Width = 121
        Height = 23
        EditLabel.Width = 39
        EditLabel.Height = 15
        EditLabel.Caption = 'C'#243'digo'
        MaxLength = 10
        NumbersOnly = True
        TabOrder = 0
      end
      object edtNome: TLabeledEdit
        Tag = 2
        Left = 35
        Top = 136
        Width = 544
        Height = 23
        EditLabel.Width = 40
        EditLabel.Height = 15
        EditLabel.Caption = 'Usu'#225'rio'
        MaxLength = 50
        TabOrder = 1
      end
      object edtSenha: TLabeledEdit
        Tag = 2
        Left = 35
        Top = 184
        Width = 544
        Height = 23
        EditLabel.Width = 32
        EditLabel.Height = 15
        EditLabel.Caption = 'Senha'
        MaxLength = 40
        PasswordChar = '*'
        TabOrder = 2
      end
    end
  end
  inherited btnRodape: TPanel
    Top = 381
    Width = 893
    ExplicitTop = 381
    ExplicitWidth = 893
    inherited btnFechar: TBitBtn
      Left = 767
      ExplicitLeft = 767
    end
    inherited btnNavigator: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited qryListagem: TZQuery
    SQL.Strings = (
      'Select usuarioId , nome ,senha '
      'from usuarios')
    object qryListagemusuarioId: TIntegerField
      DisplayLabel = 'Codigo'
      FieldName = 'usuarioId'
      ReadOnly = True
    end
    object qryListagemnome: TWideStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'nome'
      Required = True
      Size = 50
    end
    object qryListagemsenha: TWideStringField
      FieldName = 'senha'
      Required = True
      Size = 40
    end
  end
end
