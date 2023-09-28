inherited frmConCategoria: TfrmConCategoria
  Caption = 'CONSULTA DE CATEGORIAS'
  ClientWidth = 700
  ExplicitWidth = 706
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 700
    ExplicitLeft = 0
    ExplicitWidth = 700
    inherited mskPesquisar: TMaskEdit
      Height = 21
      CharCase = ecUpperCase
      ExplicitHeight = 21
    end
  end
  inherited Panel2: TPanel
    Width = 700
    ExplicitTop = 57
    ExplicitWidth = 700
    ExplicitHeight = 297
    inherited grdPesquisa: TDBGrid
      Width = 698
      DataSource = dtsPesquisa
      Columns = <
        item
          Expanded = False
          FieldName = 'categoriaID'
          Width = 103
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descricao'
          Width = 548
          Visible = True
        end>
    end
  end
  inherited Panel3: TPanel
    Width = 700
    inherited btnFechar: TBitBtn
      Left = 599
      ExplicitLeft = 599
    end
  end
  inherited qryPesquisa: TZQuery
    SQL.Strings = (
      'SELECT categoriaID , descricao'
      'from categorias')
    object qryPesquisacategoriaID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'categoriaID'
      ReadOnly = True
    end
    object qryPesquisadescricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Size = 30
    end
  end
end
