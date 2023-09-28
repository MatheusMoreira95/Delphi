object frmTelaHeranca: TfrmTelaHeranca
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'INFORME AQUI O TITULO'
  ClientHeight = 509
  ClientWidth = 937
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object pgcPrincipal: TPageControl
    Left = 0
    Top = 0
    Width = 937
    Height = 468
    ActivePage = tabListagem
    Align = alClient
    TabOrder = 0
    object tabListagem: TTabSheet
      Caption = 'Listagem'
      object pnlListagemTopo: TPanel
        Left = 0
        Top = 0
        Width = 929
        Height = 57
        Align = alTop
        TabOrder = 0
        object lblIndice: TLabel
          Left = 21
          Top = 4
          Width = 88
          Height = 15
          Caption = 'Campo Pesquisa'
        end
        object mskPesquisar: TMaskEdit
          Left = 16
          Top = 25
          Width = 399
          Height = 23
          TabOrder = 0
          Text = ''
          TextHint = 'Digite sua Pesquisa'
          OnChange = mskPesquisarChange
        end
        object btnPesquisar: TBitBtn
          Tag = 99
          Left = 421
          Top = 28
          Width = 132
          Height = 23
          Caption = '&PESQUISAR'
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF9B3B0A9B3B0A9B3B0A993B0DFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9B3B0AFA
            EAC2E9B171953B11FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF9B3B0AFAE9C0EAB474953B11FF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9B3B0AF9
            E7BFEBB677953B11FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFC3B6B09B3B0AA54D1E9B3B0A983B0EC3B8B4FF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA86441C58355FA
            DEB1F7D6A5B3724AAC6C4CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFB89787A54E20F6D4A8FBE2B7F6D19DDBAB799A461FBDA79BFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC5BEBBA0491DDDA876F9E3C2F9
            DBADF4CB96E9B97FB17047A3542CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFAE7559B86F40F6D6ACFBE9CDF7D5A4F2C68FEBB879CA905A984D28B68E
            7AFF00FFFF00FFFF00FFFF00FFFF00FFBDA79B9F4516EBBC84FAE9D1FBE8CBF6
            D09CEFC187E9B272D49758A7653C9B4419C5BEBBFF00FFFF00FFFF00FFC7C4C3
            A4532BCD8E5BF5D5AAFBF5E9FAE2BEF3CB95EDBC80E7AD6ADF9C55B8743D924D
            2BAE7254FF00FFFF00FFFF00FFB3856FAC5E30EFC187FAEEDEFCF9F5F7D6A9F1
            C58DEBB778E4A862DF994EC179399B582E93411BC0ADA4FF00FFFF00FF9D3E0F
            9B3B0A9B3B0A9B3B0A9B3B0A9B3B0A9B3B0A9B3B0A9B3B0A9B3B0A9A3B0B983B
            0E973B0FA65B36FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          TabOrder = 1
          OnClick = btnPesquisarClick
        end
      end
      object grdListagem: TDBGrid
        Left = 0
        Top = 57
        Width = 929
        Height = 381
        Align = alClient
        DataSource = dtsListagem
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        OnDblClick = grdListagemDblClick
        OnKeyDown = grdListagemKeyDown
        OnTitleClick = grdListagemTitleClick
      end
    end
    object tabManutencao: TTabSheet
      Caption = 'Manuten'#231#227'o'
      ImageIndex = 1
    end
  end
  object btnRodape: TPanel
    Left = 0
    Top = 468
    Width = 937
    Height = 41
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      937
      41)
    object btnNovo: TBitBtn
      Tag = 99
      Left = 10
      Top = 6
      Width = 85
      Height = 25
      Caption = '&NOVO'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FF0A6B0A0A6B0A0A6B0A0A6B0AFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFB25D130A6B0A42D37331B85A0A6B0AA8
        4E0FA54A0EA4480DA1440DA0420C9F3F0C9D3E0BFF00FFFF00FFFF00FFFF00FF
        B561140A6B0A78F3A440D1710A6B0AFBF0DEFBEFDAFBEDD5FBEBD1FBE9CDFBE7
        C89E400BFF00FFFF00FF0A6B0A0A6B0A0A6B0A0A6B0A78F3A444D5740A6B0A0A
        6B0A0A6B0A0A6B0AFCEDD6FBEBD1FBEACEA1430CFF00FFFF00FF0A6B0A78F3A4
        53E4844FE1804CDD7C48D97845D67541D27231B85A0A6B0AFBEFDBFCEDD6FBEB
        D1A3470DFF00FFFF00FF0A6B0A78F3A478F3A478F3A478F3A44DDE7D78F3A478
        F3A442D3730A6B0AFCF1E0FBEFDBFBEDD7A64B0EFF00FFFF00FF0A6B0A0A6B0A
        0A6B0A0A6B0A78F3A450E2810A6B0A0A6B0A0A6B0A0A6B0AFCF4E4FBF1E1FCEF
        DCA94F0FFF00FFFF00FFFF00FFFF00FFC375190A6B0A78F3A454E5850A6B0AFC
        F9F5FCF7F1FCF7EEFCF5E9FBF3E4FCF2E2AC5110FF00FFFF00FFFF00FFFF00FF
        C579190A6B0A78F3A478F3A40A6B0AFCFAF7FCF9F5FCF7F2FCF7EEFBF6E9FBF3
        E5AD5611FF00FFFF00FFFF00FFFF00FFC77C1A0A6B0A0A6B0A0A6B0A0A6B0AFC
        FBFBFCFAF8FCF9F5FBF8F2FCF7EEFBF6EAB05A12FF00FFFF00FFFF00FFFF00FF
        C97F1CFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFAFCFBF8FCF9F6FCF8F2FCF7
        EFB35E13FF00FFFF00FFFF00FFFF00FFCC821CFCFCFCFCFCFCFCFCFCFCFCFCFC
        FCFCFCFCFCFCFCFAFCFBF9FCFAF6FCF8F3B66214FF00FFFF00FFFF00FFFF00FF
        CE851DFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFBFBFCFBF9FCFA
        F7B96615FF00FFFF00FFFF00FFFF00FFCF861DFCFCFCFCFCFCFCFCFCFCFCFCFC
        FCFCFCFCFCFCFCFCFCFCFCFCFCFBFCFBF8BC6A16FF00FFFF00FFFF00FFFF00FF
        CF871DCF871DCE861DCC831CCC821CCA801BC87D1BC67A1AC47719C37419C172
        17BF6F17FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      TabOrder = 0
      OnClick = btnNovoClick
    end
    object btnAlterar: TBitBtn
      Tag = 99
      Left = 101
      Top = 6
      Width = 85
      Height = 25
      Caption = '&ALTERAR'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFB25D13AF5912AD5612AC5311AA4F10A84E0FA54A0EA4
        480DA1440DA0420C9F3F0C9D3E0BFF00FFFF00FFFF00FFFF00FFB56114FCF7EF
        FBF6EBF3EBE0FCF2E3FBF0DEFBEFDAFBEDD5FBEBD1FBE9CDFBE7C89E400BFF00
        FFFF00FFFF00FFFF00FFB86516FCF8F3FCF7EF1D2B321B2F37A7C0C5EDE0CFF4
        E0C8F8E6CFFBEBD1FBEACEA1430CFF00FFFF00FFFF00FFFF00FFBB6916FCFAF7
        FCF8F43F5A655999A455B9D12A84A64A8763E3C0A5E4C1A4E8C9ABA2450DFF00
        FFFF00FFFF00FFFF00FFBE6D17FCFBF9FCFAF7B2CDD96BBAD688E9EF2381400E
        6D0D0E6E0EE3C0A5E3BFA2A3470DFF00FFFF00FFFF00FFFF00FFC07217FCFBFC
        FCFBF9EBEFF14190B23687509CDEB056B86D146F110E6E0EE3C0A6A54A0EFF00
        FFFF00FFFF00FFFF00FFC37519FCFCFCFCFCFCFCFBFA5B9A9A53975392C69994
        E1AC4EB565146F110E6E0EA84C0FFF00FFFF00FFFF00FFFF00FFC57919FCFCFC
        FCFCFCFCFCFCFCFBF931833550955080BC8784DCA046B15E146F110E6E0EFF00
        FFFF00FFFF00FFFF00FFC77C1AFCFCFCFCFCFCFCFCFCFCFCFCFCFBFB31833547
        8F476DB27573D7943EAE58116A0E0E6E9B84ACBDFF00FFFF00FFC97F1CFCFCFC
        FCFCFCFCFCFCFCFCFCFCFCFCFCFCFA3183353C893C5AA96461D1874297AC34A3
        CC0E6E9BFF00FFFF00FFCC821CFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
        FCFA3183353183354297AC9AFBFB4297AC141EB10A0A9AFF00FFCE851DFCFCFC
        FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFBFB4297AC87EDF64297AC476B
        FC1D46F72231C34B4BAACF861DFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
        FCFCFCFCFCEEF5F74297AC1116A6476BFC1D46F70A0A9AFF00FFCF871DCF871D
        CE861DCC831CCC821CCA801BC87D1BC67A1AC47719C37419C172170A0A9A2231
        C30A0A9AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FF4B4BAAFF00FFFF00FFFF00FF}
      TabOrder = 1
      OnClick = btnAlterarClick
    end
    object btnCancelar: TBitBtn
      Left = 192
      Top = 6
      Width = 85
      Height = 25
      Caption = '&CANCELAR'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF9797BD2F31A78181B8FF00FFFF00FFFF00FFFF00
        FFC1C1C64546AB10109DFF00FF6B3B3B6B3B3B9191918F8F8FAFAFAF191BA40A
        22CA1314A39999C89C9C9C7E5454AC94993C3BAE1119AB1117A86B3B3BCF6F0A
        CB6A0AF7F7F7C2620ACF884C4D4FBA1221BD0A2BDC1315A2B3B3D9D7B7A83C3C
        AD121AAF0A18B81819A06B3B3BD3730AD06F0AFBFBFBC6650AC77020E7E7EC38
        3AB01221BC0A29D81314A03635AC131CB30A1EC31415A0A6A6C06B3B3BD7770A
        D3730AFCFCFCCB6A0AC6670BEBECEBE6E6EB383AB01221BC0A27D41223C00A24
        CF1213A0A0A0BEFF00FF6B3B3BDC7B0AD6760AEDCBA5FCFCFCF7F7F7EFEFEFEB
        EBEBE5E6F010119E0A29D70A31E91416A59693CBFF00FFFF00FF6B3B3BDF7E0A
        DB7B0AD7760AD3730ACF700BCF7823D8A9813D3DAF1323BE0A30E60C26D00E24
        CB1B1BA4A9A9C0FF00FF6B3B3BE3830ADF7F0ADB7A0AD7760AD67F20DCAA7B3D
        3DAF1323BF0A35F11316A52A2AA8121FBA1028CE1818A0A6A6C06B3B3BE7870A
        FCF6EAFBF4E4FCF1E0FBF2E44F51BA1323BF0A36F3161CAC8A8ACDF4ECE73837
        AC121FBA1129CD292AA46B3B3BEA890AEDEAE5E9E5DFE5E1D8EAE6E11112A00A
        31EA151BAE7474C6E0D8CDD6CCBBD4A6833637AD131AAE1C1DA26B3B3BEE8D0A
        FCF8F1FCF7ECFCF5E7FCF4E79190D01213A06B6CC4FCF0DEFCE7CAFBE5C1C871
        249D81868585B8B0B0C36B3B3BF1900AF1EFECEDEAE6E9E5E1E6E2DBE7E3DBE8
        E4DCE3DDD3DAD1C3D4CABAD1C6B5C5650B724444FF00FFFF00FF6B3B3BF4930A
        FCFAF7FCF8F3FCF7EEFCF6E9FCF3E4FCF1DEFCEED9FBECD3FCEACFFCE7C8C969
        0A6B3B3BFF00FFFF00FF6B3B3BF7960AACAAFBA0A2FA959AF98993F87E8CF774
        85F6697FF56178F35874F2516EF0CE6E0A6B3B3BFF00FFFF00FF6B3B3B6B3B3B
        2D2BB4292AB42627B42125B41E22B41920B4171EB4141CB4111AB40E19B46B3B
        3B6B3B3BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      TabOrder = 2
      OnClick = btnCancelarClick
    end
    object btnGravar: TBitBtn
      Tag = 99
      Left = 283
      Top = 6
      Width = 85
      Height = 25
      Caption = '&GRAVAR'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF6B3B3B6B3B3B9191918F8F8F8C8C8C89
        89898787878383838080817E7E7E6B3B3B6B3B3B6B3B3BFF00FFFF00FF6B3B3B
        CF6F0ACB6A0AF7F7F7C2620ABE5E0ADEDEDED3D3D3C8C8C8BEBEBEB4B3B3A847
        0AA4440A6B3B3BFF00FFFF00FF6B3B3BD3730AD06F0AFBFBFBC6650AC1620AE4
        E4E4DADAD9D0D0CFC4C4C5BABBBAAB4B0AA7470A6B3B3BFF00FFFF00FF6B3B3B
        D7770AD3730AFCFCFCCB6A0AC6660AE9EAE9E1E1E1D5D6D6CCCBCBC0C0C0AD4E
        0AAB4A0A6B3B3BFF00FFFF00FF6B3B3BDC7B0AD6760AEDCBA5FCFCFCF7F7F7EF
        EFEFE6E6E6DCDDDCD2D1D1C09E83B1500AAE4E0A6B3B3BFF00FFFF00FF6B3B3B
        DF7E0ADB7B0AD7760AD3730ACF6F0ACA690AC5650AC2610ABE5D0AB9590AB555
        0AB1510A6B3B3BFF00FFFF00FF6B3B3BE3830ADF7F0ADB7A0AD7760AD2730ACF
        6E0ACA690AC6650AC1620ABD5D0AB9590AB5540A6B3B3BFF00FFFF00FF6B3B3B
        E7870AFCF6EAFBF4E4FCF1E0FBEEDAFCEDD4FCEAD0FBE8CAFBE5C4FBE4C0FBE3
        BCB9580A6B3B3BFF00FFFF00FF6B3B3BEA890AEDEAE5E9E5DFE5E1D8E1DBD2DD
        D7CBDAD1C4D7CEBFD4CAB9D1C6B4CFC2AEBD5D0A6B3B3BFF00FFFF00FF6B3B3B
        EE8D0AFCF8F1FCF7ECFCF5E7FCF2E2FCF0DDFBEDD7FBEBD1FCE9CCFCE6C6FBE5
        C1C1610A6B3B3BFF00FFFF00FF6B3B3BF1900AF1EFECEDEAE6E9E5E1E5E1D9E2
        DCD2DED7CCDAD2C6D7CEBFD4CABAD1C6B5C5640A6B3B3BFF00FFFF00FF6B3B3B
        F4930AFCFAF7FCF8F3FCF7EEFCF6E9FCF3E4FCF1DEFCEED9FBECD3FCEACFFCE7
        C8C9690A6B3B3BFF00FFFF00FF6B3B3BF7960AACAAFBA0A2FA959AF98993F87E
        8CF77485F6697FF56178F35874F2516EF0CE6E0A6B3B3BFF00FFFF00FF6B3B3B
        6B3B3B2D2BB4292AB42627B42125B41E22B41920B4171EB4141CB4111AB40E19
        B46B3B3B6B3B3BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      TabOrder = 3
      OnClick = btnGravarClick
    end
    object btnApagar: TBitBtn
      Tag = 99
      Left = 374
      Top = 6
      Width = 85
      Height = 25
      Caption = 'APAGA&R'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C30E0000C30E00000000000000000000FF00FFFF00FF
        FF00FFBDA79BB17B5BA95C2FA44B199B3B0A9B3B0A9D400FA8592DB17B5EBEA8
        9EFF00FFFF00FFFF00FFFF00FFFF00FFAB6945A44A12BF6E21D89D5AE6BF8BEE
        CC97EFCB91EDC486E1AE71C6844AA65020AF7556FF00FFFF00FFFF00FFFF00FF
        A14818E9BA7CF6DCBBF7E4CCF7ECDBF7E6CBF8E0BAF9DAAAF9D9A9F9D7A8F0C8
        95A44E22FF00FFFF00FFFF00FFFF00FFA3491AF4D1A6F5DAB6F6E3C7F7E9D4F7
        E4C6F7DEB5F8D9A7F8D8A7F9D6A7F9D4A5A34818FF00FFFF00FFFF00FFC3B8B2
        AE5E2DF3D0A1F4D8B1F5E1C2F6E6CFF7E2C0F7DCB0F7D7A5F8D7A5F8D6A6F9D4
        A5B36132C3BBB6FF00FFFF00FFBEA89EBB723EF2CE9DF3D6AEF4DEBFF5E4C8F6
        DFBBF7D9ACF7D6A3F7D5A3F8D5A4F8D4A4C27B4DBEAAA0FF00FFFF00FFB89787
        C7824BF1CC99F2D4AAF3DCBAF4E1C2F5DCB6F6D8A9F7D4A0F7D4A2F7D4A3F8D4
        A4CF9163B99A89FF00FFFF00FFB48973CF9054F0CA96F2D2A6F2DAB6F3DEBDF4
        DAB1F5D6A6F6D39EF7D3A0F7D3A1F7D2A2DDA877B58A73FF00FFFF00FFAF7658
        D89C5DEFC891F1D0A2F2D8B1F3DBB8F4D8ADF5D4A2F6D29CF6D29EF7D2A0F7D2
        A2E6B485B1795BFF00FFFF00FFAA643CE0A768EFC68EF0CE9EF1D6AEF2D9B3F3
        D6A9F4D29FF5D19AF6D19DF7D29FF7D2A1EDC091AC6844FF00FFFF00FFA55426
        E5B172F0D0A2F2D8B3F5E3C7F5E4CBF6E5CBF6E5CBF7E6CDF7E7D0F7E1C0F8DD
        B9F3CA9AAA5A2FFF00FFFF00FFBE805FEBCB9CE4B162E1A64ADD9A34DFA141E1
        A84FE3AE5CE5B569E7BB76ECCA95F1D8B2F4E3CDC79073FF00FFFF00FF9E4211
        B45D0FC57315CF8322D79431DFA242E1A84FE4AE5DE5B56AE1B16FDAA76CCF97
        62B97344A24B1FFF00FFFF00FFC3B8B2B2836AAB6238A653239F44139B3B0A9B
        3B0A9B3B0A9B3B0AA14415A7562AAE6C48B48A75C5BEBBFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      TabOrder = 4
      OnClick = btnApagarClick
    end
    object btnFechar: TBitBtn
      Left = 811
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
      TabOrder = 5
      OnClick = btnFecharClick
    end
    object btnNavigator: TDBNavigator
      Left = 512
      Top = 6
      Width = 224
      Height = 25
      DataSource = dtsListagem
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 6
    end
  end
  object qryListagem: TZQuery
    Connection = dtmPrincipal.ConexaoDB
    Params = <>
    Left = 688
    Top = 32
  end
  object dtsListagem: TDataSource
    DataSet = qryListagem
    Left = 796
    Top = 34
  end
end
