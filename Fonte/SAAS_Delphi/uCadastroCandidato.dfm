inherited frmCadastroCandidato: TfrmCadastroCandidato
  Caption = 'Candidato*'
  ClientHeight = 416
  ClientWidth = 779
  ExplicitWidth = 795
  ExplicitHeight = 455
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlDadosPesquisa: TcxGroupBox
    ExplicitTop = 52
    ExplicitWidth = 779
    ExplicitHeight = 51
    Height = 51
    Width = 779
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
    Width = 779
    Height = 307
    Properties.ActivePage = tsDetalhe
    OnPageChanging = pcControleTelaPageChanging
    ExplicitTop = 109
    ExplicitWidth = 779
    ExplicitHeight = 303
    ClientRectBottom = 305
    ClientRectRight = 777
    inherited tsDados: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 26
      ExplicitWidth = 775
      ExplicitHeight = 275
      inherited cxGridBase: TcxGrid
        Width = 775
        Height = 279
        ExplicitWidth = 775
        ExplicitHeight = 275
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
            Caption = 'Candidato'
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
      ExplicitLeft = 2
      ExplicitTop = 26
      ExplicitWidth = 775
      ExplicitHeight = 275
      object pcDetalheCandidato: TcxPageControl
        Left = 0
        Top = 0
        Width = 775
        Height = 279
        Align = alClient
        TabOrder = 0
        Properties.ActivePage = tsEdereco1
        Properties.CustomButtons.Buttons = <>
        LookAndFeel.NativeStyle = False
        ExplicitHeight = 275
        ClientRectBottom = 277
        ClientRectLeft = 2
        ClientRectRight = 773
        ClientRectTop = 26
        object tsCandidato: TcxTabSheet
          Caption = 'Candidato'
          ImageIndex = 0
          ExplicitHeight = 247
          DesignSize = (
            771
            251)
          object Label2: TLabel
            Left = 256
            Top = 52
            Width = 19
            Height = 13
            Caption = 'CPF'
          end
          object Label3: TLabel
            Left = 8
            Top = 52
            Width = 23
            Height = 13
            Caption = 'RG *'
            FocusControl = cxDBTextEdit2
          end
          object Label4: TLabel
            Left = 11
            Top = 152
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
            Left = 636
            Top = 152
            Width = 59
            Height = 13
            Anchors = [akTop, akRight]
            Caption = 'Dt.Cadastro'
            Enabled = False
            FocusControl = cxDBDateEdit1
          end
          object Label8: TLabel
            Left = 636
            Top = 5
            Width = 79
            Height = 13
            Anchors = [akTop, akRight]
            Caption = 'Dt.Nascimento *'
            FocusControl = cxDBDateEdit2
            ExplicitLeft = 530
          end
          object Label1: TLabel
            Left = 8
            Top = 105
            Width = 20
            Height = 13
            Caption = 'M'#227'e'
            FocusControl = cxDBTextEdit1
          end
          object Label5: TLabel
            Left = 392
            Top = 105
            Width = 14
            Height = 13
            Caption = 'Pai'
            FocusControl = cxDBTextEdit5
          end
          object Label9: TLabel
            Left = 509
            Top = 52
            Width = 35
            Height = 13
            Anchors = [akTop, akRight]
            Caption = 'Genero'
          end
          object Label10: TLabel
            Left = 646
            Top = 52
            Width = 26
            Height = 13
            Anchors = [akTop, akRight]
            Caption = 'Etinia'
            ExplicitLeft = 633
          end
          object Label11: TLabel
            Left = 11
            Top = 5
            Width = 11
            Height = 13
            Caption = 'ID'
            FocusControl = cxDBTextEdit4
          end
          object cxDBTextEdit2: TcxDBTextEdit
            Left = 8
            Top = 68
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
            Left = 11
            Top = 168
            Anchors = [akLeft, akTop, akRight]
            DataBinding.DataField = 'EMAIL'
            DataBinding.DataSource = dm_principal.dsPessoa
            Properties.MaxLength = 60
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.BorderColor = clHighlight
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 9
            OnExit = cxDBTextEdit3Exit
            Width = 619
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
            Width = 557
          end
          object cxDBDateEdit1: TcxDBDateEdit
            Left = 636
            Top = 168
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
            TabOrder = 10
            OnKeyPress = cxDBDateEdit1KeyPress
            Width = 132
          end
          object cxDBDateEdit2: TcxDBDateEdit
            Left = 635
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
            Width = 133
          end
          object cxDBMaskEdit1: TcxDBMaskEdit
            Left = 256
            Top = 68
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
            Width = 236
          end
          object cxDBTextEdit1: TcxDBTextEdit
            Left = 12
            Top = 124
            Anchors = [akLeft, akTop, akRight]
            DataBinding.DataField = 'NOME_MAE'
            DataBinding.DataSource = dm_principal.dsCandidato
            Properties.MaxLength = 75
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.BorderColor = clHighlight
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 7
            Width = 374
          end
          object cxDBTextEdit5: TcxDBTextEdit
            Left = 407
            Top = 124
            Anchors = [akTop, akRight]
            DataBinding.DataField = 'NOME_PAI'
            DataBinding.DataSource = dm_principal.dsCandidato
            Properties.MaxLength = 75
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.BorderColor = clHighlight
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 8
            Width = 361
          end
          object cbGenero: TcxDBImageComboBox
            Left = 509
            Top = 68
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
            Width = 121
          end
          object cbEtinia2: TcxDBImageComboBox
            Left = 646
            Top = 68
            Anchors = [akTop, akRight]
            DataBinding.DataField = 'ETINIA'
            DataBinding.DataSource = dm_principal.dsCandidato
            Properties.Items = <
              item
                Description = 'Branca'
                ImageIndex = 0
                Value = 1
              end
              item
                Description = 'Preta'
                Value = 2
              end
              item
                Description = 'Amarela'
                Value = 3
              end
              item
                Description = 'Parda'
                Value = 4
              end
              item
                Description = 'Indigena'
                Value = 5
              end>
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 6
            Width = 121
          end
          object cxDBTextEdit4: TcxDBTextEdit
            Left = 12
            Top = 21
            Anchors = [akLeft, akTop, akRight]
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
            Width = 54
          end
        end
        object tsContatos: TcxTabSheet
          Caption = 'Contatos*'
          ImageIndex = 2
          ExplicitHeight = 247
          object gridContatos: TcxGrid
            Left = 0
            Top = 30
            Width = 771
            Height = 221
            Align = alClient
            PopupMenu = ppMenu
            TabOrder = 1
            OnExit = gridContatosExit
            LookAndFeel.NativeStyle = False
            ExplicitHeight = 217
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
            Width = 771
            Height = 30
            Align = alTop
            TabOrder = 0
            object ToolBar1: TToolBar
              Left = 1
              Top = 1
              Width = 769
              Height = 30
              ButtonHeight = 30
              ButtonWidth = 31
              Caption = 'ToolBar2'
              DisabledImages = dm_principal.ImgBotoesCX
              HotImages = dm_principal.ImgBotoesCX
              Images = dm_principal.ImgBotoesCX
              TabOrder = 0
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
          ExplicitHeight = 247
          object ToolBar2: TToolBar
            Left = 0
            Top = 0
            Width = 771
            Height = 30
            ButtonHeight = 30
            ButtonWidth = 31
            Caption = 'ToolBar2'
            DisabledImages = dm_principal.ImgBotoesCX
            HotImages = dm_principal.ImgBotoesCX
            Images = dm_principal.ImgBotoesCX
            TabOrder = 0
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
            Width = 771
            Height = 221
            Align = alClient
            PopupMenu = ppMenu
            TabOrder = 1
            LookAndFeel.NativeStyle = False
            ExplicitHeight = 217
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
          Caption = 'Necessidades'
          ImageIndex = 3
          ExplicitHeight = 247
          object gridNecessidades: TcxGrid
            Left = 0
            Top = 30
            Width = 771
            Height = 221
            Align = alClient
            PopupMenu = ppMenu
            TabOrder = 0
            LookAndFeel.NativeStyle = False
            ExplicitTop = 36
            ExplicitHeight = 217
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
            Width = 771
            Height = 30
            ButtonHeight = 30
            ButtonWidth = 31
            Caption = 'ToolBar2'
            DisabledImages = dm_principal.ImgBotoesCX
            HotImages = dm_principal.ImgBotoesCX
            Images = dm_principal.ImgBotoesCX
            TabOrder = 1
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
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 544
    Top = 176
    inherited actNovo: TAction
      Category = 'Tela'
      Hint = 'Novo'
    end
    inherited actEditar: TAction
      Category = 'Tela'
      Hint = 'Editar'
    end
    inherited actExcluir: TAction
      Category = 'Tela'
      Hint = 'Excluir'
    end
    inherited actSalvar: TAction
      Category = 'Tela'
      Hint = 'Salvar'
    end
    inherited actFechar: TAction
      Category = 'Tela'
      Hint = 'Fechar'
    end
    inherited actPesquisar: TAction
      Category = 'Tela'
      Hint = 'Pesquisar'
    end
    inherited actCancelar: TAction
      Category = 'Tela'
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
  end
  inherited dxBarManager1: TdxBarManager
    Categories.Visibles = (
      False)
    Left = 513
    Top = 176
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
    Left = 568
    Top = 176
  end
  inherited ppMenu: TPopupMenu
    Left = 482
    Top = 176
  end
  inherited ppRelatorioBase: TppReport
    Left = 338
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
    Left = 410
    Top = 257
  end
end
