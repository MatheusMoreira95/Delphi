inherited frmCadCategoria: TfrmCadCategoria
  Caption = 'CADASTRO DE CATEGORIA'
  ClientHeight = 504
  ClientWidth = 880
  ExplicitWidth = 886
  ExplicitHeight = 533
  PixelsPerInch = 96
  TextHeight = 15
  inherited pgcPrincipal: TPageControl
    Width = 880
    Height = 463
    ExplicitWidth = 867
    inherited tabListagem: TTabSheet
      ExplicitWidth = 859
      inherited pnlListagemTopo: TPanel
        Width = 872
        ExplicitWidth = 859
      end
      inherited grdListagem: TDBGrid
        Width = 872
        Height = 376
        Columns = <
          item
            Expanded = False
            FieldName = 'categoriaID'
            Width = 111
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricao'
            Width = 724
            Visible = True
          end>
      end
    end
    inherited tabManutencao: TTabSheet
      ExplicitWidth = 859
      object edtCodigoId: TLabeledEdit
        Tag = 1
        Left = 24
        Top = 80
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
        Top = 192
        Width = 657
        Height = 23
        CharCase = ecUpperCase
        EditLabel.Width = 51
        EditLabel.Height = 15
        EditLabel.Caption = 'Descri'#231#227'o'
        MaxLength = 30
        TabOrder = 1
      end
    end
  end
  inherited btnRodape: TPanel
    Top = 463
    Width = 880
    ExplicitWidth = 867
    inherited btnFechar: TBitBtn
      Left = 742
      ExplicitLeft = 729
    end
    inherited btnNavigator: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited qryListagem: TZQuery
    Active = True
    SQL.Strings = (
      'select categoriaID , descricao from categorias ')
    Left = 584
    object qryListagemcategoriaID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'categoriaID'
      ReadOnly = True
    end
    object qryListagemdescricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Size = 30
    end
  end
  inherited dtsListagem: TDataSource
    Left = 668
  end
end
