inherited frmCadastroCandidato: TfrmCadastroCandidato
  Caption = 'Demanda Oprimida'
  ClientHeight = 553
  ClientWidth = 816
  ExplicitWidth = 832
  ExplicitHeight = 592
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlDadosPesquisa: TcxGroupBox
    ExplicitWidth = 816
    ExplicitHeight = 51
    Height = 51
    Width = 816
    object rgTipoConsulta: TRadioGroup
      Left = 3
      Top = 3
      Width = 104
      Height = 45
      Align = alLeft
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Nome')
      TabOrder = 0
      ExplicitLeft = 2
      ExplicitTop = 2
      ExplicitHeight = 47
    end
    object edtConsulta: TcxTextEdit
      Left = 113
      Top = 16
      Properties.MaxLength = 50
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      Width = 176
    end
  end
  inherited pcControleTela: TcxPageControl
    Top = 109
    Width = 816
    Height = 444
    Properties.ActivePage = tsDetalhe
    OnPageChanging = pcControleTelaPageChanging
    ExplicitTop = 109
    ExplicitWidth = 816
    ExplicitHeight = 444
    ClientRectBottom = 442
    ClientRectRight = 814
    inherited tsDados: TcxTabSheet
      ExplicitWidth = 807
      ExplicitHeight = 375
      inherited cxGridBase: TcxGrid
        Width = 812
        Height = 416
        ExplicitWidth = 807
        ExplicitHeight = 375
        inherited vwGridBase: TcxGridDBTableView
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              FieldName = 'CANDIDATO'
              Column = vwGridBaseCANDIDATO
            end>
          OptionsView.Footer = True
          object vwGridBaseSEL: TcxGridDBColumn
            Caption = 'Sel'
            DataBinding.FieldName = 'SEL'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.Alignment = taRightJustify
            Properties.ImmediatePost = True
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            Visible = False
          end
          object vwGridBaseCANDIDATO: TcxGridDBColumn
            Caption = 'id'
            DataBinding.FieldName = 'CANDIDATO'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Width = 85
          end
          object vwGridBasePESSOA: TcxGridDBColumn
            DataBinding.FieldName = 'PESSOA'
            Visible = False
          end
          object vwGridBaseNOME: TcxGridDBColumn
            Caption = 'Nome'
            DataBinding.FieldName = 'NOME'
            Width = 255
          end
          object vwGridBaseDATA_NASCIMENTO: TcxGridDBColumn
            Caption = 'Dt.Nascimento'
            DataBinding.FieldName = 'DATA_NASCIMENTO'
            Width = 120
          end
          object vwGridBaseIDADE: TcxGridDBColumn
            Caption = 'Idade'
            DataBinding.FieldName = 'IDADE'
          end
          object vwGridBaseDATA_CADASTRO: TcxGridDBColumn
            Caption = 'Dt.Cadastro'
            DataBinding.FieldName = 'DATA_CADASTRO'
            Width = 120
          end
          object vwGridBaseCPF_CNPJ: TcxGridDBColumn
            Caption = 'CPF'
            DataBinding.FieldName = 'CPF_CNPJ'
            Width = 106
          end
          object vwGridBaseRG: TcxGridDBColumn
            DataBinding.FieldName = 'RG'
            Width = 106
          end
          object vwGridBaseEMAIL: TcxGridDBColumn
            Caption = 'email'
            DataBinding.FieldName = 'EMAIL'
            Width = 255
          end
          object vwGridBaseTIPO: TcxGridDBColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'TIPO'
          end
          object vwGridBaseLOCATARIO: TcxGridDBColumn
            Caption = 'Locatario'
            DataBinding.FieldName = 'LOCATARIO'
            Width = 250
          end
          object vwGridBaseLOCALIDADE: TcxGridDBColumn
            Caption = 'Localidade'
            DataBinding.FieldName = 'LOCALIDADE'
            Width = 95
          end
          object vwGridBaseUF: TcxGridDBColumn
            DataBinding.FieldName = 'UF'
          end
          object vwGridBaseCEP: TcxGridDBColumn
            DataBinding.FieldName = 'CEP'
          end
          object vwGridBaseBAIRRO: TcxGridDBColumn
            Caption = 'Bairro'
            DataBinding.FieldName = 'BAIRRO'
            Width = 110
          end
        end
      end
    end
    inherited tsDetalhe: TcxTabSheet
      ExplicitTop = 24
      ExplicitWidth = 816
      ExplicitHeight = 420
      object pcDetalheCandidato: TcxPageControl
        Left = 0
        Top = 0
        Width = 812
        Height = 384
        Align = alClient
        TabOrder = 0
        Properties.ActivePage = tsCandidato
        Properties.CustomButtons.Buttons = <>
        LookAndFeel.NativeStyle = False
        ExplicitWidth = 816
        ExplicitHeight = 388
        ClientRectBottom = 382
        ClientRectLeft = 2
        ClientRectRight = 810
        ClientRectTop = 26
        object tsCandidato: TcxTabSheet
          Caption = 'Usu'#225'rio'
          ImageIndex = 0
          ExplicitLeft = 0
          ExplicitTop = 24
          ExplicitWidth = 816
          ExplicitHeight = 364
          DesignSize = (
            808
            356)
          object Label2: TLabel
            Left = 256
            Top = 52
            Width = 19
            Height = 13
            Caption = 'CPF'
          end
          object Label3: TLabel
            Left = 8
            Top = 51
            Width = 23
            Height = 13
            Caption = 'RG *'
            FocusControl = cxDBTextEdit2
          end
          object Label4: TLabel
            Left = 8
            Top = 176
            Width = 34
            Height = 13
            Caption = 'e-mail*'
            FocusControl = cxDBTextEdit3
          end
          object Label6: TLabel
            Left = 72
            Top = 5
            Width = 36
            Height = 13
            Caption = 'Nome *'
            FocusControl = edtNome
          end
          object Label7: TLabel
            Left = 535
            Top = 176
            Width = 59
            Height = 13
            Anchors = [akTop, akRight]
            Caption = 'Dt.Cadastro'
            Enabled = False
            FocusControl = cxDBDateEdit1
            ExplicitLeft = 503
          end
          object Label8: TLabel
            Left = 533
            Top = 5
            Width = 79
            Height = 13
            Anchors = [akTop, akRight]
            Caption = 'Dt.Nascimento *'
            FocusControl = cxDBDateEdit2
            ExplicitLeft = 635
          end
          object Label1: TLabel
            Left = 8
            Top = 94
            Width = 17
            Height = 13
            Caption = 'NIS'
            FocusControl = cxDBTextEdit1
          end
          object Label5: TLabel
            Left = 336
            Top = 133
            Width = 14
            Height = 13
            Caption = 'Pai'
            FocusControl = cxDBTextEdit5
          end
          object Label9: TLabel
            Left = 534
            Top = 52
            Width = 35
            Height = 13
            Anchors = [akTop, akRight]
            Caption = 'Genero'
            ExplicitLeft = 636
          end
          object Label11: TLabel
            Left = 8
            Top = 5
            Width = 11
            Height = 13
            Caption = 'ID'
            FocusControl = cxDBTextEdit4
          end
          object lblResponsavel: TLabel
            Left = 8
            Top = 228
            Width = 61
            Height = 13
            Caption = 'Responsavel'
            FocusControl = edtResponsavel
          end
          object Label10: TLabel
            Left = 283
            Top = 228
            Width = 54
            Height = 13
            Anchors = [akTop, akRight]
            Caption = 'Parentesco'
            FocusControl = edtParentesco
            ExplicitLeft = 278
          end
          object Label12: TLabel
            Left = 8
            Top = 276
            Width = 81
            Height = 13
            Caption = 'Encaminhamento'
            FocusControl = cxDBTextEdit6
          end
          object Label13: TLabel
            Left = 363
            Top = 277
            Width = 58
            Height = 13
            Anchors = [akTop, akRight]
            Caption = 'Proced'#234'ncia'
            FocusControl = cxDBTextEdit7
            ExplicitLeft = 358
          end
          object Label14: TLabel
            Left = 8
            Top = 133
            Width = 20
            Height = 13
            Caption = 'M'#227'e'
            FocusControl = cxDBTextEdit8
          end
          object Label28: TLabel
            Left = 565
            Top = 133
            Width = 55
            Height = 13
            Anchors = [akTop, akRight]
            Caption = 'Nascimento'
            FocusControl = cxDBTextEdit5
            ExplicitLeft = 549
          end
          object Label30: TLabel
            Left = 204
            Top = 133
            Width = 55
            Height = 13
            Caption = 'Nascimento'
            FocusControl = cxDBTextEdit8
          end
          object Label31: TLabel
            Left = 465
            Top = 228
            Width = 44
            Height = 13
            Anchors = [akTop, akRight]
            Caption = 'Profiss'#227'o'
            FocusControl = cxDBTextEdit22
            ExplicitLeft = 460
          end
          object Label32: TLabel
            Left = 616
            Top = 228
            Width = 60
            Height = 13
            Anchors = [akTop, akRight]
            Caption = 'Escolaridade'
            FocusControl = cxDBTextEdit24
            ExplicitLeft = 611
          end
          object cxDBTextEdit2: TcxDBTextEdit
            Left = 3
            Top = 67
            DataBinding.DataField = 'RG'
            DataBinding.DataSource = dm_principal.dsPessoa
            Properties.MaxLength = 15
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.BorderColor = clHighlight
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 3
            Width = 230
          end
          object cxDBTextEdit3: TcxDBTextEdit
            Left = 8
            Top = 192
            Anchors = [akLeft, akTop, akRight]
            DataBinding.DataField = 'EMAIL'
            DataBinding.DataSource = dm_principal.dsPessoa
            Properties.MaxLength = 60
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.BorderColor = clHighlight
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 11
            OnExit = cxDBTextEdit3Exit
            ExplicitWidth = 502
            Width = 494
          end
          object edtNome: TcxDBTextEdit
            Left = 72
            Top = 21
            Anchors = [akLeft, akTop, akRight]
            DataBinding.DataField = 'NOME'
            DataBinding.DataSource = dm_principal.dsCandidato
            Properties.MaxLength = 75
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.BorderColor = clHighlight
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 1
            ExplicitWidth = 465
            Width = 457
          end
          object cxDBDateEdit1: TcxDBDateEdit
            Left = 535
            Top = 192
            Anchors = [akTop, akRight]
            DataBinding.DataField = 'DATA_CADASTRO'
            DataBinding.DataSource = dm_principal.dsCandidato
            Enabled = False
            Properties.ReadOnly = True
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.BorderColor = clHighlight
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 18
            OnKeyPress = cxDBDateEdit1KeyPress
            ExplicitLeft = 543
            Width = 132
          end
          object cxDBDateEdit2: TcxDBDateEdit
            Left = 532
            Top = 21
            Anchors = [akTop, akRight]
            DataBinding.DataField = 'DATA_NASCIMENTO'
            DataBinding.DataSource = dm_principal.dsCandidato
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.BorderColor = clHighlight
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 2
            OnExit = cxDBDateEdit2Exit
            OnKeyPress = cxDBDateEdit2KeyPress
            ExplicitLeft = 540
            Width = 133
          end
          object cxDBMaskEdit1: TcxDBMaskEdit
            Left = 256
            Top = 66
            Anchors = [akLeft, akTop, akRight]
            DataBinding.DataField = 'CPF_CNPJ'
            DataBinding.DataSource = dm_principal.dsPessoa
            Properties.EditMask = '999.999.999-99;1;_'
            Properties.MaxLength = 0
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 4
            OnExit = cxDBMaskEdit1Exit
            OnKeyPress = cxDBMaskEdit1KeyPress
            ExplicitWidth = 281
            Width = 273
          end
          object cxDBTextEdit1: TcxDBTextEdit
            Left = 3
            Top = 106
            Anchors = [akLeft, akTop, akRight]
            DataBinding.DataField = 'NIS'
            DataBinding.DataSource = dm_principal.dsCandidato
            Properties.MaxLength = 75
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.BorderColor = clHighlight
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 6
            ExplicitWidth = 349
            Width = 341
          end
          object cxDBTextEdit5: TcxDBTextEdit
            Left = 333
            Top = 149
            Anchors = [akLeft, akTop, akRight]
            DataBinding.DataField = 'NOME_PAI'
            DataBinding.DataSource = dm_principal.dsCandidato
            Properties.MaxLength = 75
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.BorderColor = clHighlight
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 9
            ExplicitWidth = 228
            Width = 220
          end
          object cbGenero: TcxDBImageComboBox
            Left = 534
            Top = 66
            Anchors = [akTop, akRight]
            DataBinding.DataField = 'GENERO'
            DataBinding.DataSource = dm_principal.dsCandidato
            Properties.Items = <
              item
                Description = 'Masculino'
                ImageIndex = 0
                Value = 1
              end
              item
                Description = 'Feminino'
                Value = 2
              end>
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 5
            ExplicitLeft = 542
            Width = 121
          end
          object cxDBTextEdit4: TcxDBTextEdit
            Left = 8
            Top = 21
            DataBinding.DataField = 'PESSOA'
            DataBinding.DataSource = dm_principal.dsCandidato
            Enabled = False
            Properties.MaxLength = 100
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.BorderColor = clHighlight
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            Width = 41
          end
          object edtResponsavel: TcxDBTextEdit
            Left = 8
            Top = 244
            Anchors = [akLeft, akTop, akRight]
            DataBinding.DataField = 'RESPONSAVEL'
            DataBinding.DataSource = dm_principal.dsCandidato
            Properties.MaxLength = 75
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.BorderColor = clHighlight
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 12
            ExplicitWidth = 260
            Width = 252
          end
          object edtParentesco: TcxDBTextEdit
            Left = 283
            Top = 244
            Anchors = [akTop, akRight]
            DataBinding.DataField = 'PARENTESCO'
            DataBinding.DataSource = dm_principal.dsCandidato
            Properties.MaxLength = 75
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.BorderColor = clHighlight
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 13
            ExplicitLeft = 291
            Width = 161
          end
          object cxDBTextEdit6: TcxDBTextEdit
            Left = 8
            Top = 292
            Anchors = [akLeft, akTop, akRight]
            DataBinding.DataField = 'ENCAMINHADO'
            DataBinding.DataSource = dm_principal.dsCandidato
            Properties.MaxLength = 75
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.BorderColor = clHighlight
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 16
            ExplicitWidth = 350
            Width = 342
          end
          object cxDBTextEdit7: TcxDBTextEdit
            Left = 363
            Top = 292
            Anchors = [akTop, akRight]
            DataBinding.DataField = 'PROCEDENCIA'
            DataBinding.DataSource = dm_principal.dsCandidato
            Properties.MaxLength = 75
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.BorderColor = clHighlight
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 17
            ExplicitLeft = 371
            Width = 250
          end
          object edtImage: TcxDBImage
            Left = 668
            Top = 3
            Anchors = [akTop, akRight]
            DataBinding.DataField = 'FOTO'
            DataBinding.DataSource = dm_principal.dsCandidato
            Properties.GraphicClassName = 'TdxSmartImage'
            TabOrder = 19
            ExplicitLeft = 676
            Height = 135
            Width = 119
          end
          object btnCarregarFoto: TcxButton
            Left = 669
            Top = 141
            Width = 54
            Height = 25
            Anchors = [akTop, akRight]
            Caption = 'Carregar'
            LookAndFeel.NativeStyle = False
            TabOrder = 20
            OnClick = btnCarregarFotoClick
            ExplicitLeft = 677
          end
          object btnLimparFoto: TcxButton
            Left = 729
            Top = 141
            Width = 54
            Height = 25
            Anchors = [akTop, akRight]
            Caption = 'Limpar'
            LookAndFeel.NativeStyle = False
            TabOrder = 21
            OnClick = btnLimparFotoClick
            ExplicitLeft = 737
          end
          object cxDBTextEdit8: TcxDBTextEdit
            Left = 7
            Top = 149
            DataBinding.DataField = 'NOME_MAE'
            DataBinding.DataSource = dm_principal.dsCandidato
            Properties.MaxLength = 75
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.BorderColor = clHighlight
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 7
            Width = 191
          end
          object cxDBDateEdit3: TcxDBDateEdit
            Left = 204
            Top = 149
            DataBinding.DataField = 'MAE_NASCIMENTO'
            DataBinding.DataSource = dm_principal.dsCandidato
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.BorderColor = clHighlight
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 8
            OnExit = cxDBDateEdit2Exit
            OnKeyPress = cxDBDateEdit2KeyPress
            Width = 123
          end
          object cxDBDateEdit4: TcxDBDateEdit
            Left = 559
            Top = 149
            Anchors = [akTop, akRight]
            DataBinding.DataField = 'PAI_NASCIMENTO'
            DataBinding.DataSource = dm_principal.dsCandidato
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.BorderColor = clHighlight
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 10
            OnExit = cxDBDateEdit2Exit
            OnKeyPress = cxDBDateEdit2KeyPress
            ExplicitLeft = 567
            Width = 102
          end
          object cxDBTextEdit22: TcxDBTextEdit
            Left = 461
            Top = 244
            Anchors = [akTop, akRight]
            DataBinding.DataField = 'PROFISSAO'
            DataBinding.DataSource = dm_principal.dsCandidato
            Properties.MaxLength = 75
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.BorderColor = clHighlight
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 14
            ExplicitLeft = 469
            Width = 131
          end
          object cxDBTextEdit24: TcxDBTextEdit
            Left = 612
            Top = 244
            Anchors = [akTop, akRight]
            DataBinding.DataField = 'ESCOLARIDADE'
            DataBinding.DataSource = dm_principal.dsCandidato
            Properties.MaxLength = 75
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.BorderColor = clHighlight
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 15
            ExplicitLeft = 620
            Width = 131
          end
        end
        object tsContatos: TcxTabSheet
          Caption = 'Contatos*'
          ImageIndex = 2
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 803
          ExplicitHeight = 347
          object gridContatos: TcxGrid
            Left = 0
            Top = 30
            Width = 808
            Height = 326
            Align = alClient
            PopupMenu = ppMenu
            TabOrder = 1
            OnExit = gridContatosExit
            LookAndFeel.NativeStyle = False
            ExplicitWidth = 803
            ExplicitHeight = 317
            object vwContatos: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              OnFocusedRecordChanged = vwContatosFocusedRecordChanged
              DataController.DataModeController.GridMode = True
              DataController.DataSource = dm_principal.dsContato
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Kind = skCount
                  FieldName = 'CANDIDATO'
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Inserting = False
              OptionsView.CellAutoHeight = True
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              Styles.Selection = dm_principal.cxStyle4
              object vwContatosCONTATO: TcxGridDBColumn
                DataBinding.FieldName = 'CONTATO'
                Visible = False
                Width = 82
              end
              object vwContatosPESSOA: TcxGridDBColumn
                DataBinding.FieldName = 'PESSOA'
                Visible = False
              end
              object vwContatosTIPO: TcxGridDBColumn
                Caption = 'Tipo'
                DataBinding.FieldName = 'TIPO'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.KeyFieldNames = 'TIPO'
                Properties.ListColumns = <
                  item
                    FieldName = 'DESCRICAO'
                  end>
                Properties.ListSource = dm_principal.dsTipoContato
                Properties.MaxLength = 10
                Properties.ReadOnly = False
                Width = 75
              end
              object vwContatosVALOR: TcxGridDBColumn
                Caption = 'Contato*'
                DataBinding.FieldName = 'VALOR'
                PropertiesClassName = 'TcxMaskEditProperties'
                Properties.EditMask = '!\(99\)999999999;1; '
                Properties.MaxLength = 0
                Width = 200
              end
            end
            object lvlContatos: TcxGridLevel
              GridView = vwContatos
            end
          end
          object pnlContatosDireito: TPanel
            Left = 0
            Top = 0
            Width = 808
            Height = 30
            Align = alTop
            TabOrder = 0
            ExplicitWidth = 803
            object ToolBar1: TToolBar
              Left = 1
              Top = 1
              Width = 806
              Height = 30
              ButtonHeight = 30
              ButtonWidth = 31
              Caption = 'ToolBar2'
              DisabledImages = dm_principal.ImgBotoesCX
              HotImages = dm_principal.ImgBotoesCX
              Images = dm_principal.ImgBotoesCX
              TabOrder = 0
              ExplicitWidth = 801
              object btnInsert: TToolButton
                Left = 0
                Top = 0
                Action = actContatoNovo
                ImageIndex = 49
                ParentShowHint = False
                ShowHint = True
              end
              object btnContatoEditar: TToolButton
                Left = 31
                Top = 0
                Action = actContatoEditar
                ImageIndex = 53
                ParentShowHint = False
                ShowHint = True
              end
              object btnContatoExcluir: TToolButton
                Left = 62
                Top = 0
                Action = actContatoExcluir
                ImageIndex = 52
                ParentShowHint = False
                ShowHint = True
              end
              object btnContatoSalvar: TToolButton
                Left = 93
                Top = 0
                Action = actContatoSalvar
                ImageIndex = 55
              end
              object btnContatoCancelar: TToolButton
                Left = 124
                Top = 0
                Action = actContatoCancelar
                ImageIndex = 38
              end
            end
          end
        end
        object tsEdereco1: TcxTabSheet
          Caption = 'Endere'#231'o'
          ImageIndex = 3
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 803
          ExplicitHeight = 347
          object ToolBar2: TToolBar
            Left = 0
            Top = 0
            Width = 808
            Height = 30
            ButtonHeight = 30
            ButtonWidth = 31
            Caption = 'ToolBar2'
            DisabledImages = dm_principal.ImgBotoesCX
            HotImages = dm_principal.ImgBotoesCX
            Images = dm_principal.ImgBotoesCX
            TabOrder = 0
            ExplicitWidth = 803
            object btnEnderecoNovo: TToolButton
              Left = 0
              Top = 0
              Action = actEnderecoNovo
              ParentShowHint = False
              ShowHint = True
            end
            object btnEnderecoEditar: TToolButton
              Left = 31
              Top = 0
              Action = actEnderecoEditar
              ImageIndex = 53
              ParentShowHint = False
              ShowHint = True
            end
            object btnEnderecoExcluir: TToolButton
              Left = 62
              Top = 0
              Action = actEnderecoExcluir
              ParentShowHint = False
              ShowHint = True
            end
            object btnEnderecoSalvar: TToolButton
              Left = 93
              Top = 0
              Action = actEnderecoSalvar
              ImageIndex = 55
            end
            object btnEnderecoCancelar: TToolButton
              Left = 124
              Top = 0
              Action = actEnderecoCancelar
              ImageIndex = 38
            end
          end
          object cxGrid1: TcxGrid
            Left = 0
            Top = 30
            Width = 808
            Height = 326
            Align = alClient
            PopupMenu = ppMenu
            TabOrder = 1
            LookAndFeel.NativeStyle = False
            ExplicitWidth = 803
            ExplicitHeight = 317
            object cxGridDBTableView1: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              OnFocusedRecordChanged = cxGridDBTableView1FocusedRecordChanged
              DataController.DataModeController.GridMode = True
              DataController.DataSource = dm_principal.dsEndereco
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Kind = skCount
                  FieldName = 'CANDIDATO'
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Inserting = False
              OptionsView.CellAutoHeight = True
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              object cxGridDBTableView1ENDERECO: TcxGridDBColumn
                Caption = 'id'
                DataBinding.FieldName = 'ENDERECO'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.ReadOnly = True
                Width = 34
              end
              object cxGridDBTableView1CEP: TcxGridDBColumn
                DataBinding.FieldName = 'CEP'
                PropertiesClassName = 'TcxMaskEditProperties'
                Properties.IgnoreMaskBlank = True
                Properties.LookupItemsSorted = True
                Properties.EditMask = '99999\-999;1;_'
                Width = 103
              end
              object cxGridDBTableView1TIPO: TcxGridDBColumn
                Caption = 'Tipo*'
                DataBinding.FieldName = 'TIPO'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.KeyFieldNames = 'TIPO'
                Properties.ListColumns = <
                  item
                    FieldName = 'DESCRICAO'
                  end>
                Properties.ListSource = dm_principal.dsTipoEndereco
                Properties.MaxLength = 50
                Width = 64
              end
              object cxGridDBTableView1LOCATARIO: TcxGridDBColumn
                Caption = 'Locatario*'
                DataBinding.FieldName = 'LOCATARIO'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.MaxLength = 150
                Width = 157
              end
              object cxGridDBTableView1BAIRRO: TcxGridDBColumn
                Caption = 'Bairro*'
                DataBinding.FieldName = 'BAIRRO'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.MaxLength = 75
                Width = 150
              end
              object cxGridDBTableView1UF: TcxGridDBColumn
                Caption = 'UF*'
                DataBinding.FieldName = 'UF'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.DropDownListStyle = lsFixedList
                Properties.KeyFieldNames = 'UF'
                Properties.ListColumns = <
                  item
                    FieldName = 'SIGLA'
                  end>
                Properties.ListSource = dm_principal.dsUF
                Properties.MaxLength = 2
              end
              object cxGridDBTableView1LOCALIDADE: TcxGridDBColumn
                Caption = 'Localidade*'
                DataBinding.FieldName = 'LOCALIDADE'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.DropDownListStyle = lsFixedList
                Properties.KeyFieldNames = 'LOCALIDADE'
                Properties.ListColumns = <
                  item
                    FieldName = 'NOME_LOCALIDADE'
                  end>
                Properties.ListSource = dm_principal.dsLocalidade
                Properties.MaxLength = 20
                Width = 113
              end
              object cxGridDBTableView1NUMERO: TcxGridDBColumn
                Caption = 'Numero'
                DataBinding.FieldName = 'NUMERO'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.MaxLength = 20
              end
            end
            object cxGridLevel1: TcxGridLevel
              GridView = cxGridDBTableView1
            end
          end
        end
        object tsNecessidades: TcxTabSheet
          Caption = 'Defici'#234'ncia'
          ImageIndex = 3
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 803
          ExplicitHeight = 347
          object gridNecessidades: TcxGrid
            Left = 0
            Top = 30
            Width = 808
            Height = 326
            Align = alClient
            PopupMenu = ppMenu
            TabOrder = 0
            LookAndFeel.NativeStyle = False
            ExplicitWidth = 803
            ExplicitHeight = 317
            object vwNecessidades: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              OnFocusedRecordChanged = vwNecessidadesFocusedRecordChanged
              DataController.DataModeController.GridMode = True
              DataController.DataSource = dm_principal.dsNecessidadeCandidato
              DataController.KeyFieldNames = 'CANDIDATO_NECESSIDADE'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Kind = skCount
                  FieldName = 'CANDIDATO'
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Inserting = False
              OptionsView.CellAutoHeight = True
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              object vwNecessidadesCANDIDATO_NECESSIDADE: TcxGridDBColumn
                Caption = 'ID'
                DataBinding.FieldName = 'CANDIDATO_NECESSIDADE'
                Width = 38
              end
              object vwNecessidadesNECESSIDADE: TcxGridDBColumn
                Caption = 'Necessidade'
                DataBinding.FieldName = 'NECESSIDADE'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.ImmediatePost = True
                Properties.KeyFieldNames = 'NECESSIDADE'
                Properties.ListColumns = <
                  item
                    FieldName = 'DESCRICAO'
                  end>
                Properties.ListSource = dm_principal.dsNecessidade
                Width = 234
              end
              object vwNecessidadesCANDIDATO: TcxGridDBColumn
                DataBinding.FieldName = 'CANDIDATO'
                Visible = False
              end
            end
            object lvlNecessidades: TcxGridLevel
              GridView = vwNecessidades
            end
          end
          object ToolBar3: TToolBar
            Left = 0
            Top = 0
            Width = 808
            Height = 30
            ButtonHeight = 30
            ButtonWidth = 31
            Caption = 'ToolBar2'
            DisabledImages = dm_principal.ImgBotoesCX
            HotImages = dm_principal.ImgBotoesCX
            Images = dm_principal.ImgBotoesCX
            TabOrder = 1
            ExplicitWidth = 803
            object btnNecessidadeNovo: TToolButton
              Left = 0
              Top = 0
              Action = actNecessidadeNovo
              ParentShowHint = False
              ShowHint = True
            end
            object btnNecessidadeEditar: TToolButton
              Left = 31
              Top = 0
              Action = actNecessidadeEditar
              ImageIndex = 53
              ParentShowHint = False
              ShowHint = True
            end
            object btnNecessidadeSalvar: TToolButton
              Left = 62
              Top = 0
              Action = actNecessidadeExcluir
            end
            object ToolButton3: TToolButton
              Left = 93
              Top = 0
              Action = actNecessidadeSalvar
              ImageIndex = 55
              ParentShowHint = False
              ShowHint = True
            end
            object ToolButton5: TToolButton
              Left = 124
              Top = 0
              Action = actNecessidadeCancelar
            end
          end
        end
        object tsProntuario: TcxTabSheet
          Caption = 'Prontuario'
          ImageIndex = 4
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 803
          ExplicitHeight = 347
          object DBMemo1: TDBMemo
            Left = 0
            Top = 0
            Width = 808
            Height = 356
            Align = alClient
            DataField = 'PRONTUARIO'
            DataSource = dm_principal.dsCandidato
            TabOrder = 0
            ExplicitWidth = 803
            ExplicitHeight = 347
          end
        end
        object tsMedico: TcxTabSheet
          Caption = 'Prontuario Complemento '
          ImageIndex = 5
          object cxGroupBox1: TcxGroupBox
            Left = 0
            Top = 0
            Align = alTop
            Caption = 'Freq'#252'enta escola? '
            TabOrder = 0
            DesignSize = (
              808
              94)
            Height = 94
            Width = 808
            object Label15: TLabel
              Left = 325
              Top = 9
              Width = 79
              Height = 13
              Caption = 'Nome da Escola:'
              FocusControl = cxDBTextEdit9
            end
            object Label16: TLabel
              Left = 182
              Top = 27
              Width = 19
              Height = 13
              Caption = 'Ano'
              FocusControl = cxDBTextEdit10
            end
            object Label17: TLabel
              Left = 325
              Top = 46
              Width = 84
              Height = 13
              Caption = 'Atividades Extras'
              FocusControl = cxDBTextEdit11
            end
            object cxLabel2: TcxLabel
              Left = 11
              Top = 60
              Caption = 'Per'#237'odo:'
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              Properties.Alignment.Horz = taRightJustify
              Transparent = True
              AnchorX = 55
            end
            object rgFrequentaEscola: TcxDBRadioGroup
              Left = 11
              Top = 22
              Alignment = alLeftTop
              Ctl3D = True
              DataBinding.DataField = 'FREQUENTAESCOLA'
              DataBinding.DataSource = dm_principal.dsCandidato_Prontuario
              ParentCtl3D = False
              Properties.Columns = 2
              Properties.Items = <
                item
                  Caption = 'Sim'
                  Value = 1
                end
                item
                  Caption = 'N'#227'o'
                  Value = 0
                end>
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              TabOrder = 1
              Height = 23
              Width = 150
            end
            object cxDBRadioGroup1: TcxDBRadioGroup
              Left = 61
              Top = 56
              Alignment = alLeftTop
              Ctl3D = True
              DataBinding.DataField = 'PERIODO'
              DataBinding.DataSource = dm_principal.dsCandidato_Prontuario
              ParentCtl3D = False
              Properties.Columns = 3
              Properties.Items = <
                item
                  Caption = 'Manh'#227
                  Value = 1
                end
                item
                  Caption = 'Tarde'
                  Value = 2
                end
                item
                  Caption = 'Noite'
                  Value = 3
                end>
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              TabOrder = 2
              Height = 23
              Width = 240
            end
            object cxDBTextEdit9: TcxDBTextEdit
              Left = 325
              Top = 22
              Anchors = [akLeft, akTop, akRight]
              DataBinding.DataField = 'CANDIDATO_NOMEESCOLA'
              DataBinding.DataSource = dm_principal.dsCandidato_Prontuario
              Properties.MaxLength = 75
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.BorderColor = clHighlight
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 3
              Width = 470
            end
            object cxDBTextEdit10: TcxDBTextEdit
              Left = 207
              Top = 24
              DataBinding.DataField = 'ANO'
              DataBinding.DataSource = dm_principal.dsCandidato_Prontuario
              Properties.MaxLength = 75
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.BorderColor = clHighlight
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 4
              Width = 89
            end
            object cxDBTextEdit11: TcxDBTextEdit
              Left = 325
              Top = 58
              Anchors = [akLeft, akTop, akRight]
              DataBinding.DataField = 'ATIVIDADE_EXTRAS'
              DataBinding.DataSource = dm_principal.dsCandidato_Prontuario
              Properties.MaxLength = 75
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.BorderColor = clHighlight
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 5
              Width = 470
            end
          end
          object cxGroupBox2: TcxGroupBox
            Left = 0
            Top = 156
            Align = alTop
            Caption = 'Realiza atendimento terap'#234'utico?  '
            TabOrder = 1
            DesignSize = (
              808
              86)
            Height = 86
            Width = 808
            object Label23: TLabel
              Left = 166
              Top = 24
              Width = 27
              Height = 13
              Caption = 'Qual?'
              FocusControl = cxDBTextEdit17
            end
            object Label24: TLabel
              Left = 11
              Top = 53
              Width = 27
              Height = 13
              Caption = 'Nome'
              FocusControl = cxDBTextEdit18
            end
            object Label25: TLabel
              Left = 624
              Top = 53
              Width = 14
              Height = 13
              Anchors = [akTop, akRight]
              Caption = 'Tel'
              FocusControl = cxDBTextEdit19
              ExplicitLeft = 608
            end
            object cxDBRadioGroup6: TcxDBRadioGroup
              Left = 11
              Top = 21
              Alignment = alLeftTop
              Ctl3D = True
              DataBinding.DataField = 'REALIZAATENDIMENTOTERAPEUTICO'
              DataBinding.DataSource = dm_principal.dsCandidato_Prontuario
              ParentCtl3D = False
              Properties.Columns = 2
              Properties.Items = <
                item
                  Caption = 'Sim'
                  Value = 1
                end
                item
                  Caption = 'N'#227'o'
                  Value = 0
                end>
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              TabOrder = 0
              Height = 23
              Width = 150
            end
            object cxDBTextEdit17: TcxDBTextEdit
              Left = 199
              Top = 23
              Anchors = [akLeft, akTop, akRight]
              DataBinding.DataField = 'REALIZAATENDIMENTOTERAPEUTICO_QUAL'
              DataBinding.DataSource = dm_principal.dsCandidato_Prontuario
              Properties.MaxLength = 75
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.BorderColor = clHighlight
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 1
              Width = 606
            end
            object cxDBTextEdit18: TcxDBTextEdit
              Left = 44
              Top = 50
              Anchors = [akLeft, akTop, akRight]
              DataBinding.DataField = 'REALIZAATENDIMENTOTERAPEUTICO_DOUTOR'
              DataBinding.DataSource = dm_principal.dsCandidato_Prontuario
              Properties.MaxLength = 75
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.BorderColor = clHighlight
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 2
              Width = 574
            end
            object cxDBTextEdit19: TcxDBTextEdit
              Left = 642
              Top = 50
              Anchors = [akTop, akRight]
              DataBinding.DataField = 'REALIZAATENDIMENTOTERAPEUTICO_TEL'
              DataBinding.DataSource = dm_principal.dsCandidato_Prontuario
              Properties.MaxLength = 75
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.BorderColor = clHighlight
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 3
              ExplicitLeft = 637
              Width = 163
            end
          end
          object cxGroupBox5: TcxGroupBox
            Left = 0
            Top = 242
            Align = alTop
            Caption = 'Recebe Benef'#237'cio?  '
            TabOrder = 2
            DesignSize = (
              808
              66)
            Height = 66
            Width = 808
            object Label18: TLabel
              Left = 399
              Top = 16
              Width = 27
              Height = 13
              Caption = 'Qual?'
            end
            object cxDBRadioGroup2: TcxDBRadioGroup
              Left = 3
              Top = 17
              Alignment = alLeftTop
              Ctl3D = True
              DataBinding.DataField = 'RECEBEBENEFICIO'
              DataBinding.DataSource = dm_principal.dsCandidato_Prontuario
              ParentCtl3D = False
              Properties.Columns = 4
              Properties.Items = <
                item
                  Caption = 'BPC'
                  Value = 1
                end
                item
                  Caption = 'Aposentadoria'
                  Value = 2
                end
                item
                  Caption = ' N'#227'o '
                  Value = 3
                end
                item
                  Caption = 'Outros'
                  Value = 4
                end>
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              TabOrder = 0
              Height = 40
              Width = 390
            end
            object cxDBTextEdit12: TcxDBTextEdit
              Left = 399
              Top = 35
              Anchors = [akLeft, akTop, akRight]
              DataBinding.DataField = 'RECEBEBENEFICIO_QUAL'
              DataBinding.DataSource = dm_principal.dsCandidato_Prontuario
              Properties.MaxLength = 75
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.BorderColor = clHighlight
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 1
              Width = 396
            end
          end
          object cxGroupBox11: TcxGroupBox
            Left = 0
            Top = 94
            Align = alTop
            Caption = 'Tamanho da Camiseta'
            TabOrder = 3
            Height = 62
            Width = 808
            object cxDBRadioGroup3: TcxDBRadioGroup
              Left = 11
              Top = 23
              Alignment = alLeftTop
              Ctl3D = True
              DataBinding.DataField = 'TAMANHOCAMISETA'
              DataBinding.DataSource = dm_principal.dsCandidato_Prontuario
              ParentCtl3D = False
              Properties.Columns = 4
              Properties.Items = <
                item
                  Caption = 'P'
                  Value = 1
                end
                item
                  Caption = 'M'
                  Value = 2
                end
                item
                  Caption = 'G'
                  Value = 3
                end
                item
                  Caption = 'GG'
                  Value = 4
                end>
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              TabOrder = 0
              Height = 26
              Width = 346
            end
          end
        end
        object cxTabSheet1: TcxTabSheet
          Caption = 'Prontuario Complemento 2'
          ImageIndex = 6
          object cxGroupBox6: TcxGroupBox
            Left = 0
            Top = 154
            Align = alTop
            Caption = 'Recebe Programa de transfer'#234'ncia de renda?'
            TabOrder = 3
            Height = 63
            Width = 808
            object cxDBRadioGroup7: TcxDBRadioGroup
              Left = 9
              Top = 19
              Alignment = alLeftTop
              Ctl3D = True
              DataBinding.DataField = 'RECEBEPROGRAMATRANSFERENCIARENDA'
              DataBinding.DataSource = dm_principal.dsCandidato_Prontuario
              ParentCtl3D = False
              Properties.Columns = 2
              Properties.Items = <
                item
                  Caption = 'Sim'
                  Value = 1
                end
                item
                  Caption = 'N'#227'o'
                  Value = 0
                end>
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              TabOrder = 0
              Height = 23
              Width = 113
            end
            object cxDBRadioGroup8: TcxDBRadioGroup
              Left = 128
              Top = 14
              Alignment = alLeftTop
              Ctl3D = True
              DataBinding.DataField = 'RECEBEPROGRAMATRANSFERENCIARENDA_QUAL'
              DataBinding.DataSource = dm_principal.dsCandidato_Prontuario
              ParentCtl3D = False
              Properties.Columns = 4
              Properties.Items = <
                item
                  Caption = 'Renda M'#237'nima       '
                  Value = 1
                end
                item
                  Caption = 'Bolsa Fam'#237'lia       '
                  Value = 2
                end
                item
                  Caption = 'Renda Cidad'#227'       '
                  Value = '3'
                end
                item
                  Caption = 'A'#231#227'o Jovem'
                  Value = '4'
                end>
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              TabOrder = 1
              Height = 36
              Width = 617
            end
          end
          object cxGroupBox4: TcxGroupBox
            Left = 0
            Top = 53
            Align = alTop
            Caption = #201' al'#233'rgico a algum medicamento? '
            TabOrder = 1
            DesignSize = (
              808
              51)
            Height = 51
            Width = 808
            object Label21: TLabel
              Left = 129
              Top = 20
              Width = 27
              Height = 13
              Caption = 'Qual?'
            end
            object cxDBRadioGroup5: TcxDBRadioGroup
              Left = 7
              Top = 17
              Alignment = alLeftTop
              Ctl3D = True
              DataBinding.DataField = 'ALERGICOALGUMMEDICAMENTO'
              DataBinding.DataSource = dm_principal.dsCandidato_Prontuario
              ParentCtl3D = False
              Properties.Columns = 2
              Properties.Items = <
                item
                  Caption = 'Sim'
                  Value = 1
                end
                item
                  Caption = 'N'#227'o'
                  Value = 0
                end>
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              TabOrder = 0
              Height = 23
              Width = 111
            end
            object cxDBTextEdit15: TcxDBTextEdit
              Left = 159
              Top = 17
              Anchors = [akLeft, akTop, akRight]
              DataBinding.DataField = 'ALERGICOALGUMMEDICAMENTO_QUAL'
              DataBinding.DataSource = dm_principal.dsCandidato_Prontuario
              Properties.MaxLength = 75
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.BorderColor = clHighlight
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 1
              Width = 636
            end
          end
          object cxGroupBox3: TcxGroupBox
            Left = 0
            Top = 0
            Align = alTop
            Caption = 'Faz uso de medicamentos? '
            TabOrder = 0
            DesignSize = (
              808
              53)
            Height = 53
            Width = 808
            object Label22: TLabel
              Left = 128
              Top = 22
              Width = 85
              Height = 13
              Caption = 'Qual?/Dosagem:  '
            end
            object cxDBRadioGroup4: TcxDBRadioGroup
              Left = 9
              Top = 19
              Alignment = alLeftTop
              Ctl3D = True
              DataBinding.DataField = 'FAZUSODEMEDICAMENTOS'
              DataBinding.DataSource = dm_principal.dsCandidato_Prontuario
              ParentCtl3D = False
              Properties.Columns = 2
              Properties.Items = <
                item
                  Caption = 'Sim'
                  Value = 1
                end
                item
                  Caption = 'N'#227'o'
                  Value = 0
                end>
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              TabOrder = 0
              Height = 23
              Width = 112
            end
            object cxDBTextEdit16: TcxDBTextEdit
              Left = 210
              Top = 19
              Anchors = [akLeft, akTop, akRight]
              DataBinding.DataField = 'FAZUSODEMEDICAMENTOS_QUAL'
              DataBinding.DataSource = dm_principal.dsCandidato_Prontuario
              Properties.MaxLength = 75
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.BorderColor = clHighlight
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 1
              Width = 584
            end
          end
          object cxGroupBox7: TcxGroupBox
            Left = 0
            Top = 104
            Align = alTop
            Caption = 'Possui Bilhete Especial para o transporte? '
            TabOrder = 2
            DesignSize = (
              808
              50)
            Height = 50
            Width = 808
            object Label19: TLabel
              Left = 129
              Top = 20
              Width = 27
              Height = 13
              Caption = 'Qual?'
            end
            object cxDBRadioGroup9: TcxDBRadioGroup
              Left = 7
              Top = 17
              Alignment = alLeftTop
              Ctl3D = True
              DataBinding.DataField = 'POSSUIBILHETEESPECIALTRANSPORTE'
              DataBinding.DataSource = dm_principal.dsCandidato_Prontuario
              ParentCtl3D = False
              Properties.Columns = 2
              Properties.Items = <
                item
                  Caption = 'Sim'
                  Value = 1
                end
                item
                  Caption = 'N'#227'o'
                  Value = 0
                end>
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              TabOrder = 0
              Height = 23
              Width = 111
            end
            object cxDBTextEdit13: TcxDBTextEdit
              Left = 159
              Top = 17
              Anchors = [akLeft, akTop, akRight]
              DataBinding.DataField = 'POSSUIBILHETEESPECIALTRANSPORTE_QUAL'
              DataBinding.DataSource = dm_principal.dsCandidato_Prontuario
              Properties.MaxLength = 75
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.BorderColor = clHighlight
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 1
              Width = 635
            end
          end
          object GroupBox1: TGroupBox
            Left = 0
            Top = 217
            Width = 808
            Height = 72
            Align = alTop
            TabOrder = 4
            object cxGroupBox9: TcxGroupBox
              Left = 238
              Top = 15
              Align = alLeft
              Caption = 'Est'#225' autorizado a ser filmado e fotografado? '
              TabOrder = 0
              Height = 55
              Width = 236
              object cxDBRadioGroup11: TcxDBRadioGroup
                Left = 71
                Top = 17
                Alignment = alLeftTop
                Ctl3D = True
                DataBinding.DataField = 'AUTORIZADOSERFILMADOFOTOGRAFADO'
                DataBinding.DataSource = dm_principal.dsCandidato_Prontuario
                ParentCtl3D = False
                Properties.Columns = 2
                Properties.Items = <
                  item
                    Caption = 'Sim'
                    Value = 1
                  end
                  item
                    Caption = 'N'#227'o'
                    Value = 0
                  end>
                Style.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.NativeStyle = False
                TabOrder = 0
                Height = 23
                Width = 111
              end
            end
            object cxGroupBox8: TcxGroupBox
              Left = 2
              Top = 15
              Align = alLeft
              Caption = 'Est'#225' autorizado a ir embora sozinho?  '
              TabOrder = 1
              Height = 55
              Width = 236
              object cxDBRadioGroup10: TcxDBRadioGroup
                Left = 39
                Top = 17
                Alignment = alLeftTop
                Ctl3D = True
                DataBinding.DataField = 'AUTORIZADOIREMBORASOZINHO'
                DataBinding.DataSource = dm_principal.dsCandidato_Prontuario
                ParentCtl3D = False
                Properties.Columns = 2
                Properties.Items = <
                  item
                    Caption = 'Sim'
                    Value = 1
                  end
                  item
                    Caption = 'N'#227'o'
                    Value = 0
                  end>
                Style.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.NativeStyle = False
                TabOrder = 0
                Height = 23
                Width = 111
              end
            end
            object cxGroupBox10: TcxGroupBox
              Left = 474
              Top = 15
              Align = alClient
              Caption = 'Est'#225' autorizado a participar de atividades externas? '
              TabOrder = 2
              Height = 55
              Width = 332
              object cxDBRadioGroup12: TcxDBRadioGroup
                Left = 79
                Top = 17
                Alignment = alLeftTop
                Ctl3D = True
                DataBinding.DataField = 'AUTORIZADOPARTICIPARATIVIDADESEXTERNAS'
                DataBinding.DataSource = dm_principal.dsCandidato_Prontuario
                ParentCtl3D = False
                Properties.Columns = 2
                Properties.Items = <
                  item
                    Caption = 'Sim'
                    Value = 1
                  end
                  item
                    Caption = 'N'#227'o'
                    Value = 0
                  end>
                Style.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.NativeStyle = False
                TabOrder = 0
                Height = 23
                Width = 111
              end
            end
          end
        end
        object cxTabSheet2: TcxTabSheet
          Caption = 'Prontuario Complemento 3'
          ImageIndex = 7
          object cxGroupBox12: TcxGroupBox
            Left = 0
            Top = 0
            Align = alTop
            Caption = 'Comparecer'#225' diariamente?    '
            TabOrder = 0
            DesignSize = (
              808
              54)
            Height = 54
            Width = 808
            object Label20: TLabel
              Left = 146
              Top = 22
              Width = 106
              Height = 13
              Caption = 'Per'#237'odo de Adapta'#231#227'o'
            end
            object Label29: TLabel
              Left = 442
              Top = 22
              Width = 136
              Height = 13
              Caption = 'Dias indicados de freq'#252#234'ncia'
            end
            object cxDBRadioGroup13: TcxDBRadioGroup
              Left = 9
              Top = 19
              Alignment = alLeftTop
              Ctl3D = True
              DataBinding.DataField = 'COMPARECERDIARIAMENTE'
              DataBinding.DataSource = dm_principal.dsCandidato_Prontuario
              ParentCtl3D = False
              Properties.Columns = 2
              Properties.Items = <
                item
                  Caption = 'Sim'
                  Value = 1
                end
                item
                  Caption = 'N'#227'o'
                  Value = 0
                end>
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              TabOrder = 0
              Height = 23
              Width = 112
            end
            object cxDBTextEdit14: TcxDBTextEdit
              Left = 258
              Top = 19
              DataBinding.DataField = 'PERIODOADAPTACO'
              DataBinding.DataSource = dm_principal.dsCandidato_Prontuario
              Properties.MaxLength = 75
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.BorderColor = clHighlight
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 1
              Width = 167
            end
            object cxDBTextEdit23: TcxDBTextEdit
              Left = 584
              Top = 19
              Anchors = [akLeft, akTop, akRight]
              DataBinding.DataField = 'DIASINDICADOSFREQUENCIA'
              DataBinding.DataSource = dm_principal.dsCandidato_Prontuario
              Properties.MaxLength = 75
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.BorderColor = clHighlight
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 2
              Width = 201
            end
          end
          object cxGroupBox13: TcxGroupBox
            Left = 0
            Top = 54
            Align = alTop
            Caption = 'Poder'#225' almo'#231'ar na Organiza'#231#227'o?    '
            TabOrder = 1
            DesignSize = (
              808
              50)
            Height = 50
            Width = 808
            object Label26: TLabel
              Left = 144
              Top = 22
              Width = 37
              Height = 13
              Caption = 'Motivo?'
            end
            object cxDBRadioGroup14: TcxDBRadioGroup
              Left = 9
              Top = 19
              Alignment = alLeftTop
              Ctl3D = True
              DataBinding.DataField = 'PODERAALMOCARORGANIZACO'
              DataBinding.DataSource = dm_principal.dsCandidato_Prontuario
              ParentCtl3D = False
              Properties.Columns = 2
              Properties.Items = <
                item
                  Caption = 'Sim'
                  Value = 1
                end
                item
                  Caption = 'N'#227'o'
                  Value = 0
                end>
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              TabOrder = 0
              Height = 23
              Width = 112
            end
            object cxDBTextEdit20: TcxDBTextEdit
              Left = 187
              Top = 23
              Anchors = [akLeft, akTop, akRight]
              DataBinding.DataField = 'PODERAALMOCARORGANIZACO_MOTIVO'
              DataBinding.DataSource = dm_principal.dsCandidato_Prontuario
              Properties.MaxLength = 75
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.BorderColor = clHighlight
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 1
              Width = 598
            end
          end
          object cxGroupBox14: TcxGroupBox
            Left = 0
            Top = 104
            Align = alTop
            Caption = #201' al'#233'rgico ou tem restri'#231#227'o a algum alimento?'
            TabOrder = 2
            DesignSize = (
              808
              50)
            Height = 50
            Width = 808
            object Label27: TLabel
              Left = 144
              Top = 22
              Width = 27
              Height = 13
              Caption = 'Qual?'
            end
            object cxDBRadioGroup15: TcxDBRadioGroup
              Left = 9
              Top = 19
              Alignment = alLeftTop
              Ctl3D = True
              DataBinding.DataField = 'ALERGICORESTRICOALGUMALIMENTO'
              DataBinding.DataSource = dm_principal.dsCandidato_Prontuario
              ParentCtl3D = False
              Properties.Columns = 2
              Properties.Items = <
                item
                  Caption = 'Sim'
                  Value = 1
                end
                item
                  Caption = 'N'#227'o'
                  Value = 0
                end>
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              TabOrder = 0
              Height = 23
              Width = 112
            end
            object cxDBTextEdit21: TcxDBTextEdit
              Left = 187
              Top = 19
              Anchors = [akLeft, akTop, akRight]
              DataBinding.DataField = 'ALERGICORESTRICOALGUMALIMENTO_QUAL'
              DataBinding.DataSource = dm_principal.dsCandidato_Prontuario
              Properties.MaxLength = 75
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.BorderColor = clHighlight
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 1
              Width = 598
            end
          end
        end
      end
      object cxGroupBox15: TcxGroupBox
        Left = 0
        Top = 384
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alBottom
        Alignment = alTopRight
        DragMode = dmAutomatic
        Style.LookAndFeel.NativeStyle = False
        Style.TransparentBorder = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        TabOrder = 1
        ExplicitTop = 388
        ExplicitWidth = 816
        DesignSize = (
          812
          32)
        Height = 32
        Width = 812
        object btnAvancar: TcxButton
          Left = 695
          Top = 4
          Width = 50
          Height = 22
          Action = actAvancar
          Anchors = [akRight, akBottom]
          LookAndFeel.NativeStyle = False
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            6100000031744558745469746C65004C6173743B446F75626C653B4172726F77
            3B466F72776172643B536B69703B4E6578743B526577696E643BDF9F345D0000
            028249444154785EC5935D48935118C7FF9B5B66684A59E0CD2051CB8C8A348A
            B0A2283F90B42F0D89082F144CF4A6D4A28440EB22CA4208B202696A8AA66188
            1AD22A6B6ECB026D3A9790D9AC15625AE2DECFF39ED371AC026F0B7AE0C739FC
            9E873FCFC5393AC618FEA6F4F807B58463E4E84FDD190E84FE7129A516EC2A79
            8C13575F21BBAA1F00741C4360C680B34DA3ACF0D6407B46C9CD84800CA96875
            2F76FAE3571C385A690500C339F3605F45B38B2D9C38631E6116F72C2B338F48
            B9977A6B62B665AEEDB04FB227A333BFDDA6D47C532048C7597AA1C9C56665C6
            4AEB86989E108A185304F233D705A7EF5C5F9C9C737E60D0EDC5AA70202F2D3A
            382D39BE78CBFE7C674AC9FDB2D048D30A00C19452340E7D87AC10A0A87690B9
            6628EBFAA8B17E2F61F6CF32AB6C1963B9557DEC729B93F5BE9B61368FE077A9
            A77BC63764541494DF73B26B2FBFB1829A016650140DA246312751CCFA287441
            4062920971B1ABD16D1983FDF51B1C3A96F8CBAD79D41D52ABA81A648D421255
            184491605E6110B9D4A80E2A0FF489E04D0DAACABDA4E2874F0581E67744D1FC
            ABCB7C5E9014E86559C5BC4421A8149AC643640D0EEB7B74B4D8B12C8C203D6B
            2382F446BF6BA8EBF33A9E76968B1281A250489206BD24A998E3174634B847BC
            68355B453AEDC1E183F148D81C0B8FC787070D0EC1D66BA976B6976D9F785E5D
            2F092A544221CB0406492018767D85DD364EA7263F3CF4D86EDFC8B97EF7C5A7
            290A87FDADDF7D196ABB383DD6330140E084FB04192A65501402EC28E86209D9
            75CFA292F2F62C3439917B8B7A163B03471777A40500427717B65A930B3BD9D6
            938D560088080C19030FC5B8D845EDAB474C5633A20F34014010278CB392B3FC
            FFFFC69F43966D3643BB4D970000000049454E44AE426082}
          PaintStyle = bpsGlyph
          TabOrder = 0
          ExplicitLeft = 699
        end
        object btnVoltar: TcxButton
          Left = 638
          Top = 4
          Width = 50
          Height = 22
          Action = actVoltar
          Anchors = [akRight, akBottom]
          LookAndFeel.NativeStyle = False
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            610000002E744558745469746C650046697273743B446F75626C653B4172726F
            773B4261636B3B536B69703B507265763B526577696E64868055450000027349
            444154785EC5935B48544118C7FFBBAE5B292B6ABAA494525ED2B6C4F25288A1
            8676A1908830822448094CB312A48B16F4D0933D04D193D286212B9A91E65266
            64962288AD8962650F82A53E6837B5B33B7BCECCD71CD815ACC78206FE7CC38F
            6F7EDF1CCE390622C2DF2C23FEC132C9987DD570BE711CE5F5A3A86D798F8B8E
            09FF9055326B64028A6F0EAE64971BDFBEBADA3C4E7A05105875FF1D2A1AC696
            9B761DBB9E72A0DAD9BEAFFA0501B0FCC16A1DE3F48D1155DB47C837C520634E
            3B54B1E1E835E7ED925B43ACFEE534E5573DA34D69FB6D7ED6D03B437BA5C024
            8440D3C87730AF06FD6064CC1673C1E9BA3321E1519752122342E23686634961
            080E221494DC1848DD6CB524C44742E50011C1C4359287053C4CE060E59D23D1
            093B6B6C09D6B8D4E408CC2FB83130368BAF730AF2B293B1C366B5FC60848939
            8E88600304173079A58A712970AB48CDC8BA9B97958800B319935F14B85CD3B0
            8606A1302F5E67985AE258700B289CA078095C17E8576752A278BCF0AAAB312F
            9B3413C712936229654162992D4AE65505348DE0D60055EE8D6E8F06AFFE081E
            8EBEEE2755AD6DAEE961D794B41B1193148579E527DA9DA3904CF671A8043029
            51980057398C1E4585AA0930A661C051D3DC633F9B39D8DB57D7FD785899F9BC
            88C8F5EB106BB3A2BFE70DBA3A86DC9313B320C1A148932A0528BCF29CCE3DFA
            4439154E02B0D6F7FE83A3B715DA324ED8DB722F74F312FB07DA5AE4A0B0D8F4
            5C3F2BBDF791528E3F24E494B5F667977552C6C9A67E0096DDE54FE1FB164C32
            A1D1DB8BF3930E37BC4E2E6A2100512BD9039DC1E29B1C22139059DA89F4531D
            D853D9E51705CA84F97ACCBFB3FFFF37FE02C8BF4AE42C5ECDF9000000004945
            4E44AE426082}
          PaintStyle = bpsGlyph
          TabOrder = 1
          ExplicitLeft = 642
        end
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 472
    Top = 72
    inherited actNovo: TAction
      Category = 'Tela'
      Caption = '&Novo'
      Hint = 'Novo'
    end
    inherited actEditar: TAction
      Category = 'Tela'
      Caption = '&Editar'
      Hint = 'Editar'
    end
    inherited actExcluir: TAction
      Category = 'Tela'
      Caption = '&Excluir'
      Hint = 'Excluir'
    end
    inherited actSalvar: TAction
      Category = 'Tela'
      Caption = '&Salvar'
      Hint = 'Salvar'
    end
    inherited actFechar: TAction
      Category = 'Tela'
      Caption = '&Fechar'
      Hint = 'Fechar'
    end
    inherited actPesquisar: TAction
      Category = 'Tela'
      Caption = '&Pesquisar'
      Hint = 'Pesquisar'
    end
    inherited actCancelar: TAction
      Category = 'Tela'
      Caption = '&Cancelar'
      Hint = 'Cancelar'
    end
    inherited actExportarExcel: TAction
      Category = 'Tela'
    end
    object actGerarMatricula: TAction
      Category = 'Tela'
      Caption = 'Gerar Matricula'
      Hint = 'Gerar Matricula'
      ImageIndex = 25
      OnExecute = actGerarMatriculaExecute
    end
    object actContatoNovo: TAction
      Category = 'Contatos'
      Caption = 'Contato - Novo'
      ImageIndex = 0
      OnExecute = actContatoNovoExecute
    end
    object actContatoEditar: TAction
      Category = 'Contatos'
      Caption = 'Contato - Editar'
      ImageIndex = 2
      OnExecute = actContatoEditarExecute
    end
    object actContatoExcluir: TAction
      Category = 'Contatos'
      Caption = 'Contato - Excluir'
      ImageIndex = 3
      OnExecute = actContatoExcluirExecute
    end
    object actContatoSalvar: TAction
      Category = 'Contatos'
      Caption = 'Contato - Salvar'
      ImageIndex = 1
      OnExecute = actContatoSalvarExecute
    end
    object actContatoCancelar: TAction
      Category = 'Contatos'
      Caption = 'Contato - Cancelar'
      ImageIndex = 4
      OnExecute = actContatoCancelarExecute
    end
    object actEnderecoNovo: TAction
      Category = 'Endereco'
      Caption = 'Endereco - Novo'
      ImageIndex = 49
      OnExecute = actEnderecoNovoExecute
    end
    object actEnderecoEditar: TAction
      Category = 'Endereco'
      Caption = 'Endereco - Editar'
      ImageIndex = 2
      OnExecute = actEnderecoNovoExecute
    end
    object actEnderecoExcluir: TAction
      Category = 'Endereco'
      Caption = 'Endereco - Excluir'
      ImageIndex = 52
      OnExecute = actEnderecoNovoExecute
    end
    object actEnderecoSalvar: TAction
      Category = 'Endereco'
      Caption = 'Endereco - Salvar'
      ImageIndex = 1
      OnExecute = actEnderecoNovoExecute
    end
    object actEnderecoCancelar: TAction
      Category = 'Endereco'
      Caption = 'Endereco - Cancelar'
      ImageIndex = 4
      OnExecute = actEnderecoNovoExecute
    end
    object actNecessidadeNovo: TAction
      Category = 'Necessidade'
      Caption = 'Necessidade - Novo'
      ImageIndex = 49
      OnExecute = actNecessidadeNovoExecute
    end
    object actNecessidadeEditar: TAction
      Category = 'Necessidade'
      Caption = 'Necessidade - Editar'
      ImageIndex = 2
      OnExecute = actNecessidadeNovoExecute
    end
    object actNecessidadeExcluir: TAction
      Category = 'Necessidade'
      Caption = 'Necessidade - Excluir'
      ImageIndex = 52
      OnExecute = actNecessidadeNovoExecute
    end
    object actNecessidadeSalvar: TAction
      Category = 'Necessidade'
      Caption = 'Necessidade - Salvar'
      ImageIndex = 1
      OnExecute = actNecessidadeNovoExecute
    end
    object actNecessidadeCancelar: TAction
      Category = 'Necessidade'
      Caption = 'Necessidade - Cancelar'
      ImageIndex = 38
      OnExecute = actNecessidadeNovoExecute
    end
    object actAvancar: TAction
      Caption = 'actAvancar'
      OnExecute = actAvancarExecute
    end
    object actVoltar: TAction
      Caption = 'actVoltar'
      OnExecute = actVoltarExecute
    end
  end
  inherited dxBarManager1: TdxBarManager
    Categories.Visibles = (
      False)
    Left = 441
    Top = 72
    PixelsPerInch = 96
    inherited dxBarManager1Bar1: TdxBar
      Caption = 'CadCadastros1'
      DockedDockingStyle = dsNone
      DockedLeft = 0
      DockingStyle = dsNone
      FloatClientWidth = 66
      FloatClientHeight = 352
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnPesquisar'
        end
        item
          Visible = True
          ItemName = 'btnNovo'
        end
        item
          Visible = True
          ItemName = 'btnEditar'
        end
        item
          Visible = True
          ItemName = 'btnExcluir'
        end
        item
          Visible = True
          ItemName = 'btnSalvar'
        end
        item
          Visible = True
          ItemName = 'btnCancelar'
        end
        item
          Visible = True
          ItemName = 'btnFechar'
        end
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end>
      Visible = False
    end
    object dxBarManager1Bar2: TdxBar [1]
      Caption = 'Cad01'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 4
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 799
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnPesquisar'
        end
        item
          Visible = True
          ItemName = 'btnNovo'
        end
        item
          Visible = True
          ItemName = 'btnEditar'
        end
        item
          Visible = True
          ItemName = 'btnExcluir'
        end
        item
          Visible = True
          ItemName = 'btnSalvar'
        end
        item
          Visible = True
          ItemName = 'btnCancelar'
        end
        item
          Visible = True
          ItemName = 'btnGerarMatricula'
        end
        item
          Visible = True
          ItemName = 'btnImprimirRel'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnFechar'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarButton2: TdxBarButton
      Caption = '|'
      Category = 0
      Enabled = False
      Hint = '|'
      Visible = ivAlways
    end
    object btnGerarMatricula: TdxBarLargeButton
      Action = actGerarMatricula
      Category = 0
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000003A744558745469746C650056657273696F6E3B50726F647563743B53
        657474696E673B50726F706572743B437573746F6D697A3B44657369676E3B49
        74656D84696C47000005EA49444154785EC5977D8C5C6515C67FEFBD77667667
        76B75D086CBBEE5656EC47FC870F53935AEA07D84A9020108CA810315A9A5413
        6C342616854688891F7F50B50D51432255D9B61145D2428068694BAA59293414
        44FB45BBFDD8DD6E67CBCCEC9D997BEF7B8E5ADFECCD64B2D3DDFEC349DE79DF
        9349CEF3CC739EFB9EB94655792F23C0853186C6C0A4FB2587BA3515AADA44A0
        09D82D0FF06748C24C036E01714B5B28D0041EBCFAD34F3ED477E5E48300AA29
        862A6E37A8835197A3A053399C1EF77FF8D1F57B1F01E24612AD15F0877EF289
        877BFA3AD7B7F5CC9F4655939E1B421B21F2A5F57B7EB0CCAC7868DF061CAF99
        28E0E7B3DEFADECF7C0532B9066166660FE364327402C58D1BBE0B3C0A24336D
        81A7A210FF0B3955C280ABD72C827147343D83628C410133B7808A00784D6C5B
        99504440155BAFA3805150876A8C7372FAD4B8EFA181AD81C0B62122A9543325
        A022A82851B5EA6A014AEA00033A9538058C823AA3A218C04BF2E8251020AC84
        BCFDFC3EE2F1F166D7B4BCB8B4B1786717270E9D0030B36A41AE3D47DF758B08
        0F37174669F1646803D16CCF3C46DE38018C32AB1688550A9775A08500D300A1
        28A4B9A6B79B71F8A95B20DBD98608B36881934A545011B016750E53C499599C
        EB1534A5E43E1B484858BA340FA8153489111B934200D886CC8181A4F28300A0
        510D5BC960EDEC09185145E31A527D172F9B777515F1D24A88347BD2DDC5520F
        916A19BFA380AACEDE84FF5720412AE7D1A08AC9E631BE0F36552335437A0B79
        9D0BC8F42C47AC4550B21D7328CC1F048ED2387541555B5F449A24A020510DA2
        1AC60F3041E6C20E4E0AE3935DB0124D04B9D0B290D7877DFE7CB01BB5CA6DD7
        D768BFE2030E071FB00F7CFFD79224DAD2848E408C158BE794B371849744A0EA
        DAAEB45F7D3B75ED66DB1B73E8C8242C1BA870F094CF3D772C475579E5E517F9
        50D755DCFFAD8DBF08B2D9FEA13D3B6FD9F8C8D726D67C67B35EC48416F91FA0
        2AE2FAEADA9E0E00055165EBFE0E3E75F34ACAE52ADB771FE06CB1C47D03BD84
        F588B74E2A6373DFC797EFBEFEAE8E423B51ADFEA7A1BDCFDE14D7E3B8A507AC
        281AC788A6E3554981CD142125EBC5942B55962CEA63C9C23E8A1365FCC04342
        61CDBD37B370601E5694BFEC7E8DE113C78B00718A8F07CD33565D0B10455550
        51100515104151FCEE8590D4B96160921D2FFE0311A11EC5B4E773BC5B0E89AD
        E5F2CB3A99284D72B65866EBD32FC9C8F0A11F0366CBE66F9B8BDC8482C611AA
        92CE7775BABB3C73D54A5E3D0607863D4646C729954232D98037DF3ACA6F9F7A
        8E20F0B9F78BB7D0DFDFCBD8D97358F1185872EDC3BD0B160DFEF3F5BF3E05D4
        A63321228A3805144DF527DD6D6C191C6AE3FE2FAD62F5C27E822060A23CC963
        9B06597D5316630CBF7A72273FDAB006CF0F58BBFA4EAF589C58F5C496E756BD
        73F8B5ED171DC712C7A828181A09383EA29044115694F2648D582CD62AF9423B
        89583CCF902F14A8C70993611D2B96B1732592240268D902AC15348A501423DA
        30EB8C2A0643E01B562D3ACFE06F7EC9487839EBBE7E179D1D79EEBBE736B63F
        F332996C963B6FBD814A58E3DC44899FFFEC49AAB5F29E6A58F92310B522A022
        16E3797841C6B91E30E04D89A124C3BBB8F1EA013ED87B254FECCDD373453767
        C6CED3D15560DDDACF91CB058461C4E9D109B2990CED85AC1E79FBCD0DC3C7F6
        FF0D889B0938658168AC94EC7EFEE9C31F23FD0F3E750477D621FA97BF9F1DC7
        AA7C7CC50AC25AFDC2AF1D1F9FA0D2DD858832365E64CE9C2E54958F2CBDC61C
        3F72E49BB0FFEEC5D7DC2AD3292040F5AB83A73F0BE400BFD5246370536EE5ED
        0FFC61F9A773D7EE7CE1155E7A612FD664F41B6BBF60A238E1F1C77FA773BBF2
        7C78E975A6ABAB039BD8F980496CCC7404D4C963811030B40E7FFFBE67EE782C
        8EB78E8D9E1A9F183BBA6960F1D2EF8D9C39BBAC5409992C15FF7EFCDF438F1E
        3B7C688DE2F58D0C1FF83C50176B5B1048976506716EF49D93BB766CBED1A566
        5EDFE26D5B7EFFEC32AC52AD96B78D9C3CB8FBBF6B9753B20ED8B49D30EBB7E3
        162FB3389036A0DDE555072A4D4E574D09BC97F11FC3BF5F3656E88430000000
        0049454E44AE426082}
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000001B744558745469746C65005061636B6167653B50726F647563743B47
        726F7570EA88F11A000004E849444154785EA597CF8E1B4510C67F3D33F6EC7A
        D7214A029B5D0545E2C03DE296037F0E9C108257403C030716914402C12170E0
        0D38920BE24638210509242027240422022990289055B2D9F57AEC99EE2A42D1
        727B34EB750425B5DDD5DD53F5F5579FCBB6535516D9D6D616D15C1C19909B7F
        842DD8572000128702142CB394BCF8E2C2F90B9BA7AAB7000CB73A7416DD81A4
        4C1A272AC9FFF35EFEDECBEF7FFB0ED01041143C9AE59FBF7DFEE2A9ADF5EDF2
        D4068F6E0A42B2D5FDEDCFDE78C6BD7AF9FA254067009C5BCCE8E6E6A603F2D5
        7EB67DFAC5E7E649593257F3513773D781DD8FAFBC09BC0BF8234A90228EC7E3
        BCDFEF17210832394077F6D1181BDAB95CA29ECCB0D88A5D5081ECB1012A42D4
        92EB02E88A8DC9645200E5B4F6D475437350E1143466B5992A2416C97064B923
        CB9C01712E0307841544B425D2E230B15DFFE0850B679E384862B3E53B3CB87A
        056CCD259145DFE6331FFCF02CC7CF3E49BF97E35CBC7264A00B2059FEDDE5E7
        2F6E9C196EAF6C6CD2B579EEB5BB9796B87F7B8F5FBFFE9E62A5A4C83332E7C8
        8F0DB9F5DBADC4749701F2C143B16DBDF41AF4CA36315D791C2E9D28902170EF
        A34BAC9F3CC1A02CC832E83FBEC1DD1FFF00EEB2A804998A42F333726BCF1696
        0B2ECDE705E78EAF19DD790FFA83DC4A519E1820C2912570226259C3748A424B
        70CED1119CED032DB40E0A139C30ADA60C7A20F4906A0F55391A808AA0A2D455
        1563A5722B6020664E64C050B87846312ABD090E5F4F919023A311325C25043D
        1200E3D1989FAE7E43B3B3D39119AA2CB6F65E313CC6CD5F6EF2D4C9927AB7A2
        5801F18D31D815613257AE969C39F734E31BDDC05D442D2A5A40FB1BA7B9F3C3
        4D9AD13E5296881450D78831008B351094B513EBE85AD16EAA283AEF47475571
        49913338FDE10A22E045D0606545BC47DA7DC0751A91A858ED08018D0A5304C8
        0031DFD96282145F5B2064BC6771422388C447BD4796881043EB1B2434AD5B43
        98F79212659E7E0140EB0961D42304B16117322602BA44844E54D16682540FC8
        FA03CC44912CC146A4ABC9D88B653A46AA7DF2F5352B4F102178452D6E134B00
        0B45A8C6804746BB6851E1FA035C9E43486C2431A42EA4D2209331EA6B24260B
        41116FC00C80887FA446640050907A020F87CB0B5CD1B3778854A85A3D9DF784
        A63600F3B4889551081290D85B0801D1C525700940630F66B68425C87C0DAAB1
        EC6A7B12FDCE875293E0ACF188A02A064A252C136140FE49A88AA0E946923A1F
        8AEDA5EF028D5DB8CD805A09ECF6386340505DD2078258FD5AB753526217031C
        FAAAA4B7C61BF5416D583C82C64684B401244A9CC612208A927A3C28D14D8800
        5A6712131A3C4194DBBF0B935160B012C8B38ACA876B400DC8824E286853A32A
        3192DA009DF931756223AEB87806310088281F7EB9732E2F5777BDEBFB40E681
        29501DF6B3DC01F6902406BAB78D89BAFAC368B63D0C8009EEFEB8B9BFAAF9BD
        A22C1AB24C96FD31B11248D3987068D34DC4937A7EA2BDF3E3DCBA9E2AE35A7C
        1D26F54A70CDDAFAB07D932E00B0D659D796C2494AA4917217BD981C5B513A6D
        DA0531C189AAD63E50EF8FF4C1DE7E3AB400808A045C9691153D2C50449001DA
        EDBF51070ED7610644854477B40500341EACFFDAF3D7AE7E7AE3D959228DCA4E
        74B784A8DAD68992CEEF1C84AFA2E86419808894EAF54F6EBF0294FFF95F70B2
        004CE615BF0C80024D7C700C38FEBF856525F81B7917A30F2A94604900000000
        49454E44AE426082}
      HotGlyph.SourceDPI = 96
      HotGlyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000003A744558745469746C650056657273696F6E3B50726F647563743B53
        657474696E673B50726F706572743B437573746F6D697A3B44657369676E3B49
        74656D84696C47000005EA49444154785EC5977D8C5C6515C67FEFBD77667667
        76B75D086CBBEE5656EC47FC870F53935AEA07D84A9020108CA810315A9A5413
        6C342616854688891F7F50B50D51432255D9B61145D2428068694BAA59293414
        44FB45BBFDD8DD6E67CBCCEC9D997BEF7B8E5ADFECCD64B2D3DDFEC349DE79DF
        9349CEF3CC739EFB9EB94655792F23C0853186C6C0A4FB2587BA3515AADA44A0
        09D82D0FF06748C24C036E01714B5B28D0041EBCFAD34F3ED477E5E48300AA29
        862A6E37A8835197A3A053399C1EF77FF8D1F57B1F01E24612AD15F0877EF289
        877BFA3AD7B7F5CC9F4655939E1B421B21F2A5F57B7EB0CCAC7868DF061CAF99
        28E0E7B3DEFADECF7C0532B9066166660FE364327402C58D1BBE0B3C0A24336D
        81A7A210FF0B3955C280ABD72C827147343D83628C410133B7808A00784D6C5B
        99504440155BAFA3805150876A8C7372FAD4B8EFA181AD81C0B62122A9543325
        A022A82851B5EA6A014AEA00033A9538058C823AA3A218C04BF2E8251020AC84
        BCFDFC3EE2F1F166D7B4BCB8B4B1786717270E9D0030B36A41AE3D47DF758B08
        0F37174669F1646803D16CCF3C46DE38018C32AB1688550A9775A08500D300A1
        28A4B9A6B79B71F8A95B20DBD98608B36881934A545011B016750E53C499599C
        EB1534A5E43E1B484858BA340FA8153489111B934200D886CC8181A4F28300A0
        510D5BC960EDEC09185145E31A527D172F9B777515F1D24A88347BD2DDC5520F
        916A19BFA380AACEDE84FF5720412AE7D1A08AC9E631BE0F36552335437A0B79
        9D0BC8F42C47AC4550B21D7328CC1F048ED2387541555B5F449A24A020510DA2
        1AC60F3041E6C20E4E0AE3935DB0124D04B9D0B290D7877DFE7CB01BB5CA6DD7
        D768BFE2030E071FB00F7CFFD79224DAD2848E408C158BE794B371849744A0EA
        DAAEB45F7D3B75ED66DB1B73E8C8242C1BA870F094CF3D772C475579E5E517F9
        50D755DCFFAD8DBF08B2D9FEA13D3B6FD9F8C8D726D67C67B35EC48416F91FA0
        2AE2FAEADA9E0E00055165EBFE0E3E75F34ACAE52ADB771FE06CB1C47D03BD84
        F588B74E2A6373DFC797EFBEFEAE8E423B51ADFEA7A1BDCFDE14D7E3B8A507AC
        281AC788A6E3554981CD142125EBC5942B55962CEA63C9C23E8A1365FCC04342
        61CDBD37B370601E5694BFEC7E8DE113C78B00718A8F07CD33565D0B10455550
        51100515104151FCEE8590D4B96160921D2FFE0311A11EC5B4E773BC5B0E89AD
        E5F2CB3A99284D72B65866EBD32FC9C8F0A11F0366CBE66F9B8BDC8482C611AA
        92CE7775BABB3C73D54A5E3D0607863D4646C729954232D98037DF3ACA6F9F7A
        8E20F0B9F78BB7D0DFDFCBD8D97358F1185872EDC3BD0B160DFEF3F5BF3E05D4
        A63321228A3805144DF527DD6D6C191C6AE3FE2FAD62F5C27E822060A23CC963
        9B06597D5316630CBF7A72273FDAB006CF0F58BBFA4EAF589C58F5C496E756BD
        73F8B5ED171DC712C7A828181A09383EA29044115694F2648D582CD62AF9423B
        89583CCF902F14A8C70993611D2B96B1732592240268D902AC15348A501423DA
        30EB8C2A0643E01B562D3ACFE06F7EC9487839EBBE7E179D1D79EEBBE736B63F
        F332996C963B6FBD814A58E3DC44899FFFEC49AAB5F29E6A58F92310B522A022
        16E3797841C6B91E30E04D89A124C3BBB8F1EA013ED87B254FECCDD373453767
        C6CED3D15560DDDACF91CB058461C4E9D109B2990CED85AC1E79FBCD0DC3C7F6
        FF0D889B0938658168AC94EC7EFEE9C31F23FD0F3E750477D621FA97BF9F1DC7
        AA7C7CC50AC25AFDC2AF1D1F9FA0D2DD858832365E64CE9C2E54958F2CBDC61C
        3F72E49BB0FFEEC5D7DC2AD3292040F5AB83A73F0BE400BFD5246370536EE5ED
        0FFC61F9A773D7EE7CE1155E7A612FD664F41B6BBF60A238E1F1C77FA773BBF2
        7C78E975A6ABAB039BD8F980496CCC7404D4C963811030B40E7FFFBE67EE782C
        8EB78E8D9E1A9F183BBA6960F1D2EF8D9C39BBAC5409992C15FF7EFCDF438F1E
        3B7C688DE2F58D0C1FF83C50176B5B1048976506716EF49D93BB766CBED1A566
        5EDFE26D5B7EFFEC32AC52AD96B78D9C3CB8FBBF6B9753B20ED8B49D30EBB7E3
        162FB3389036A0DDE555072A4D4E574D09BC97F11FC3BF5F3656E88430000000
        0049454E44AE426082}
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Action = actImprimirRelatorio
      Category = 0
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'New SubItem'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
  end
  inherited dsBase: TDataSource
    DataSet = dm_principal.cdsTelaCandidato
    Left = 496
    Top = 72
  end
  inherited ppMenu: TPopupMenu
    Left = 410
    Top = 72
    object btnMarcarTodos: TMenuItem
      Caption = 'Marcar/Desmarcar'
      Enabled = False
      OnClick = btnMarcarTodosClick
    end
  end
  inherited ppRelatorioBase: TppReport
    Left = 530
    Top = 73
    DataPipelineName = 'ppDbBase'
    inherited ppTituloRelatorio: TppHeaderBand
      inherited ppImage2: TppImage
        LayerName = Foreground
      end
      inherited ppLabel1: TppLabel
        SaveOrder = -1
        Caption = 'Relat'#243'rio de Candidatos'
        mmLeft = 33073
        mmWidth = 113506
        LayerName = Foreground
      end
      inherited ppLine1: TppLine
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lblMAtricula1'
        Caption = 'RG'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 85990
        mmTop = 24077
        mmWidth = 3969
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        Caption = 'Nome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 3440
        mmTop = 24077
        mmWidth = 7144
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        Caption = 'Dt.Nascimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 125413
        mmTop = 24077
        mmWidth = 18256
        BandType = 0
        LayerName = Foreground
      end
      object ppVariable1: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'Variable1'
        BlankWhenZero = False
        CalcOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 130175
        mmTop = 26723
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        Caption = 'Dt.Cadastro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 155840
        mmTop = 24077
        mmWidth = 15081
        BandType = 0
        LayerName = Foreground
      end
    end
    inherited ppDetailBand1: TppDetailBand
      mmHeight = 4763
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        DataField = 'NOME'
        DataPipeline = ppDbBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDbBase'
        mmHeight = 4763
        mmLeft = 3440
        mmTop = 0
        mmWidth = 76200
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        DataField = 'DATA_CADASTRO'
        DataPipeline = ppDbBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDbBase'
        mmHeight = 4763
        mmLeft = 155840
        mmTop = 0
        mmWidth = 25400
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        DataField = 'RG'
        DataPipeline = ppDbBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDbBase'
        mmHeight = 4763
        mmLeft = 85990
        mmTop = 0
        mmWidth = 34660
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        DataField = 'DATA_NASCIMENTO'
        DataPipeline = ppDbBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDbBase'
        mmHeight = 4763
        mmLeft = 125413
        mmTop = 0
        mmWidth = 25400
        BandType = 4
        LayerName = Foreground
      end
    end
    inherited ppFooterBand1: TppFooterBand
      inherited ppLabel2: TppLabel [0]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited ppSystemVariable2: TppSystemVariable [1]
        SaveOrder = -1
        LayerName = Foreground
      end
    end
  end
  inherited ppDbBase: TppDBPipeline
    Left = 562
    Top = 73
    object ppDbBaseppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'SEL'
      FieldName = 'SEL'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object ppDbBaseppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'PESSOA'
      FieldName = 'PESSOA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object ppDbBaseppField3: TppField
      FieldAlias = 'CPF_CNPJ'
      FieldName = 'CPF_CNPJ'
      FieldLength = 15
      DisplayWidth = 15
      Position = 2
    end
    object ppDbBaseppField4: TppField
      FieldAlias = 'RG'
      FieldName = 'RG'
      FieldLength = 15
      DisplayWidth = 15
      Position = 3
    end
    object ppDbBaseppField5: TppField
      FieldAlias = 'EMAIL'
      FieldName = 'EMAIL'
      FieldLength = 255
      DisplayWidth = 255
      Position = 4
    end
    object ppDbBaseppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'CANDIDATO'
      FieldName = 'CANDIDATO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 5
    end
    object ppDbBaseppField7: TppField
      FieldAlias = 'NOME'
      FieldName = 'NOME'
      FieldLength = 255
      DisplayWidth = 255
      Position = 6
    end
    object ppDbBaseppField8: TppField
      FieldAlias = 'DATA_CADASTRO'
      FieldName = 'DATA_CADASTRO'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 34
      Position = 7
    end
    object ppDbBaseppField9: TppField
      FieldAlias = 'DATA_NASCIMENTO'
      FieldName = 'DATA_NASCIMENTO'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 34
      Position = 8
    end
    object ppDbBaseppField10: TppField
      FieldAlias = 'TIPO'
      FieldName = 'TIPO'
      FieldLength = 15
      DisplayWidth = 15
      Position = 9
    end
    object ppDbBaseppField11: TppField
      FieldAlias = 'LOCATARIO'
      FieldName = 'LOCATARIO'
      FieldLength = 255
      DisplayWidth = 255
      Position = 10
    end
    object ppDbBaseppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'LOCALIDADE'
      FieldName = 'LOCALIDADE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 11
    end
    object ppDbBaseppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'UF'
      FieldName = 'UF'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 12
    end
    object ppDbBaseppField14: TppField
      FieldAlias = 'BAIRRO'
      FieldName = 'BAIRRO'
      FieldLength = 100
      DisplayWidth = 100
      Position = 13
    end
    object ppDbBaseppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'IDADE'
      FieldName = 'IDADE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 14
    end
    object ppDbBaseppField16: TppField
      FieldAlias = 'CEP'
      FieldName = 'CEP'
      FieldLength = 11
      DisplayWidth = 11
      Position = 15
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 608
    Top = 74
  end
end
