inherited frmCadCliente: TfrmCadCliente
  Caption = 'CADASTRO DE CLIENTES'
  ClientHeight = 419
  ExplicitHeight = 448
  PixelsPerInch = 96
  TextHeight = 15
  inherited pgcPrincipal: TPageControl
    Height = 378
    ActivePage = tabManutencao
    ExplicitHeight = 378
    inherited tabListagem: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 26
      ExplicitWidth = 929
      ExplicitHeight = 348
      inherited grdListagem: TDBGrid
        Height = 291
        Columns = <
          item
            Expanded = False
            FieldName = 'clienteId'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cep'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'endereco'
            Visible = True
          end>
      end
    end
    inherited tabManutencao: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 26
      ExplicitWidth = 929
      ExplicitHeight = 348
      object Label1: TLabel
        Left = 745
        Top = 152
        Width = 21
        Height = 15
        Caption = 'CEP'
      end
      object Label2: TLabel
        Left = 755
        Top = 208
        Width = 44
        Height = 15
        Caption = 'Telefone'
      end
      object Label3: TLabel
        Left = 755
        Top = 51
        Width = 91
        Height = 15
        Caption = 'Data Nascimento'
      end
      object edtClienteID: TLabeledEdit
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
        Left = 188
        Top = 72
        Width = 544
        Height = 23
        CharCase = ecUpperCase
        EditLabel.Width = 33
        EditLabel.Height = 15
        EditLabel.Caption = 'Nome'
        MaxLength = 60
        TabOrder = 1
      end
      object edtCEP: TMaskEdit
        Left = 745
        Top = 173
        Width = 131
        Height = 23
        EditMask = '99.999-999;1;_'
        MaxLength = 10
        TabOrder = 7
        Text = '  .   -   '
      end
      object edtEndereco: TLabeledEdit
        Left = 35
        Top = 125
        Width = 558
        Height = 23
        CharCase = ecUpperCase
        EditLabel.Width = 49
        EditLabel.Height = 15
        EditLabel.Caption = 'Endere'#231'o'
        MaxLength = 60
        TabOrder = 3
      end
      object edtBairro: TLabeledEdit
        Left = 624
        Top = 123
        Width = 252
        Height = 23
        CharCase = ecUpperCase
        EditLabel.Width = 31
        EditLabel.Height = 15
        EditLabel.Caption = 'Bairro'
        MaxLength = 40
        TabOrder = 4
      end
      object edtEstado: TLabeledEdit
        Left = 530
        Top = 173
        Width = 191
        Height = 23
        CharCase = ecUpperCase
        EditLabel.Width = 35
        EditLabel.Height = 15
        EditLabel.Caption = 'Estado'
        MaxLength = 2
        TabOrder = 6
      end
      object edtCidade: TLabeledEdit
        Left = 35
        Top = 173
        Width = 454
        Height = 23
        CharCase = ecUpperCase
        EditLabel.Width = 37
        EditLabel.Height = 15
        EditLabel.Caption = 'Cidade'
        MaxLength = 50
        TabOrder = 5
      end
      object edtEmail: TLabeledEdit
        Left = 35
        Top = 229
        Width = 686
        Height = 23
        CharCase = ecUpperCase
        EditLabel.Width = 29
        EditLabel.Height = 15
        EditLabel.Caption = 'Email'
        MaxLength = 100
        TabOrder = 8
      end
      object edtTelefone: TMaskEdit
        Left = 755
        Top = 229
        Width = 124
        Height = 23
        EditMask = '(99)99999-9999;1;_'
        MaxLength = 14
        TabOrder = 9
        Text = '(  )     -    '
      end
      object edtNascimento: TDateEdit
        Left = 755
        Top = 72
        Width = 121
        Height = 23
        ClickKey = 114
        DialogTitle = 'Selecione a Data'
        NumGlyphs = 2
        CalendarStyle = csDialog
        TabOrder = 2
      end
    end
  end
  inherited btnRodape: TPanel
    Top = 378
    ExplicitTop = 378
    inherited btnNavigator: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited qryListagem: TZQuery
    Active = True
    SQL.Strings = (
      'SELECT  clienteId  '
      '      ,  nome  '
      '      ,  endereco  '
      '      ,  cidade  '
      '      ,  bairro  '
      '      ,  estado  '
      '      ,  cep  '
      '      ,  telefone  '
      '      ,  email  '
      '      ,  dataNascimento  '
      '  FROM    clientes  ')
    Top = 8
    object qryListagemclienteId: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'clienteId'
      ReadOnly = True
    end
    object qryListagemnome: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      Size = 60
    end
    object qryListagemendereco: TWideStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'endereco'
      Size = 60
    end
    object qryListagemcidade: TWideStringField
      DisplayLabel = 'CIdade'
      FieldName = 'cidade'
      Size = 50
    end
    object qryListagembairro: TWideStringField
      DisplayLabel = 'Bairro'
      FieldName = 'bairro'
      Size = 40
    end
    object qryListagemestado: TWideStringField
      DisplayLabel = 'Bairro'
      FieldName = 'estado'
      Size = 2
    end
    object qryListagemcep: TWideStringField
      DisplayLabel = 'CEP'
      FieldName = 'cep'
      Size = 10
    end
    object qryListagemtelefone: TWideStringField
      DisplayLabel = 'Telefone'
      FieldName = 'telefone'
      Size = 14
    end
    object qryListagememail: TWideStringField
      FieldName = 'email'
      Size = 100
    end
    object qryListagemdataNascimento: TDateTimeField
      DisplayLabel = 'Data Nascimento'
      FieldName = 'dataNascimento'
    end
  end
  inherited dtsListagem: TDataSource
    Top = 10
  end
end
