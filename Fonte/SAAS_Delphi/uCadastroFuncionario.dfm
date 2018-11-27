inherited frmCadastroFuncionario: TfrmCadastroFuncionario
  Caption = 'Funcion'#225'rio'
  ClientHeight = 358
  ExplicitHeight = 397
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlDadosPesquisa: TcxGroupBox
    ExplicitHeight = 31
    Height = 31
  end
  inherited pcControleTela: TcxPageControl
    Top = 89
    Height = 269
    ExplicitTop = 113
    ExplicitHeight = 245
    ClientRectBottom = 267
    inherited tsDados: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 26
      ExplicitWidth = 734
      ExplicitHeight = 217
      inherited cxGridBase: TcxGrid
        Width = 734
        Height = 241
        ExplicitWidth = 734
        ExplicitHeight = 217
        inherited vwGridBase: TcxGridDBTableView
          object vwGridBasePESSOA: TcxGridDBColumn
            Caption = 'ID'
            DataBinding.FieldName = 'PESSOA'
          end
          object vwGridBaseFUNCIONARIO: TcxGridDBColumn
            Caption = 'ID'
            DataBinding.FieldName = 'FUNCIONARIO'
            Visible = False
            Width = 20
          end
          object vwGridBaseNOME: TcxGridDBColumn
            Caption = 'None'
            DataBinding.FieldName = 'NOME'
            Width = 150
          end
          object vwGridBaseEMAIL: TcxGridDBColumn
            Caption = 'Email'
            DataBinding.FieldName = 'EMAIL'
            Width = 150
          end
          object vwGridBaseCPF_CNPJ: TcxGridDBColumn
            Caption = 'CPF'
            DataBinding.FieldName = 'CPF_CNPJ'
            Width = 120
          end
          object vwGridBaseRG: TcxGridDBColumn
            DataBinding.FieldName = 'RG'
            Width = 120
          end
          object vwGridBaseDATA_NASCIMENTO: TcxGridDBColumn
            Caption = 'Dt.Nascimento'
            DataBinding.FieldName = 'DATA_NASCIMENTO'
            Width = 75
          end
          object vwGridBaseTIPO: TcxGridDBColumn
            DataBinding.FieldName = 'TIPO'
            Visible = False
          end
          object vwGridBaseLOCATARIO: TcxGridDBColumn
            Caption = 'Locatario'
            DataBinding.FieldName = 'LOCATARIO'
            Width = 75
          end
          object vwGridBaseLOCALIDADE: TcxGridDBColumn
            Caption = 'Localidade'
            DataBinding.FieldName = 'LOCALIDADE'
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
            Width = 75
          end
          object vwGridBaseIDADE: TcxGridDBColumn
            Caption = 'Idade'
            DataBinding.FieldName = 'IDADE'
            Visible = False
          end
        end
      end
    end
    inherited tsDetalhe: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 26
      ExplicitWidth = 734
      ExplicitHeight = 217
      object pcDetalheCandidato: TcxPageControl
        Left = 0
        Top = 0
        Width = 734
        Height = 241
        Align = alClient
        TabOrder = 0
        Properties.ActivePage = tsEdereco1
        Properties.CustomButtons.Buttons = <>
        LookAndFeel.NativeStyle = False
        ExplicitHeight = 217
        ClientRectBottom = 239
        ClientRectLeft = 2
        ClientRectRight = 732
        ClientRectTop = 26
        object tsFuncionario: TcxTabSheet
          Caption = 'Funcionario'
          ImageIndex = 0
          ExplicitLeft = 3
          ExplicitHeight = 189
          DesignSize = (
            730
            213)
          object Label2: TLabel
            Left = 167
            Top = 51
            Width = 19
            Height = 13
            Caption = 'CPF'
          end
          object Label3: TLabel
            Left = 11
            Top = 52
            Width = 23
            Height = 13
            Caption = 'RG *'
            FocusControl = cxDBTextEdit2
          end
          object Label4: TLabel
            Left = 12
            Top = 101
            Width = 28
            Height = 13
            Caption = 'e-mail'
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
            Left = 584
            Top = 104
            Width = 59
            Height = 13
            Anchors = [akTop, akRight]
            Caption = 'Dt.Cadastro'
            Enabled = False
            FocusControl = cxDBDateEdit1
          end
          object Label8: TLabel
            Left = 584
            Top = 5
            Width = 79
            Height = 13
            Anchors = [akTop, akRight]
            Caption = 'Dt.Nascimento *'
            FocusControl = cxDBDateEdit2
            ExplicitLeft = 507
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
            Left = 11
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
            Width = 150
          end
          object cxDBTextEdit3: TcxDBTextEdit
            Left = 12
            Top = 120
            Anchors = [akLeft, akTop, akRight]
            DataBinding.DataField = 'EMAIL'
            DataBinding.DataSource = dm_principal.dsPessoa
            Properties.MaxLength = 60
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.BorderColor = clHighlight
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 5
            Width = 533
          end
          object edtNome: TcxDBTextEdit
            Left = 72
            Top = 24
            Anchors = [akLeft, akTop, akRight]
            DataBinding.DataField = 'NOME'
            DataBinding.DataSource = dm_principal.dsFuncionario
            Properties.MaxLength = 100
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.BorderColor = clHighlight
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 1
            Width = 459
          end
          object cxDBDateEdit1: TcxDBDateEdit
            Left = 584
            Top = 120
            Anchors = [akTop, akRight]
            DataBinding.DataField = 'DATA_CADASTRO'
            DataBinding.DataSource = dm_principal.dsFuncionario
            Enabled = False
            Properties.ReadOnly = True
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.BorderColor = clHighlight
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 6
            Width = 132
          end
          object cxDBDateEdit2: TcxDBDateEdit
            Left = 584
            Top = 21
            Anchors = [akTop, akRight]
            DataBinding.DataField = 'DTNASCIMENTO'
            DataBinding.DataSource = dm_principal.dsFuncionario
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.BorderColor = clHighlight
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 2
            Width = 133
          end
          object cxDBMaskEdit1: TcxDBMaskEdit
            Left = 167
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
            Width = 136
          end
          object cxDBTextEdit4: TcxDBTextEdit
            Left = 12
            Top = 21
            Anchors = [akLeft, akTop, akRight]
            DataBinding.DataField = 'PESSOA'
            DataBinding.DataSource = dm_principal.dsFuncionario
            Enabled = False
            Properties.MaxLength = 100
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.BorderColor = clHighlight
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            Width = 0
          end
          object cxDBTextEdit1: TcxDBTextEdit
            Left = 11
            Top = 24
            Anchors = [akLeft, akTop, akRight]
            DataBinding.DataField = 'FUNCIONARIO'
            DataBinding.DataSource = dm_principal.dsFuncionario
            Properties.MaxLength = 100
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.BorderColor = clHighlight
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 7
            Width = 48
          end
        end
        object tsContatos: TcxTabSheet
          Caption = 'Contatos'
          ImageIndex = 2
          ExplicitHeight = 189
          object gridContatos: TcxGrid
            Left = 0
            Top = 30
            Width = 730
            Height = 183
            Align = alClient
            PopupMenu = ppMenu
            TabOrder = 1
            LookAndFeel.NativeStyle = False
            ExplicitHeight = 159
            object vwContatos: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.DataSource = dm_principal.dsContato
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Kind = skCount
                  FieldName = 'CANDIDATO'
                end>
              DataController.Summary.SummaryGroups = <>
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
                Caption = 'Contato'
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
            Width = 730
            Height = 30
            Align = alTop
            TabOrder = 0
            object ToolBar1: TToolBar
              Left = 1
              Top = 1
              Width = 728
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
                ParentShowHint = False
                ShowHint = True
              end
              object btnContatoEditar: TToolButton
                Left = 31
                Top = 0
                Action = actContatoEditar
                ParentShowHint = False
                ShowHint = True
              end
              object btnContatoExcluir: TToolButton
                Left = 62
                Top = 0
                Action = actContatoExcluir
                ParentShowHint = False
                ShowHint = True
              end
              object btnContatoSalvar: TToolButton
                Left = 93
                Top = 0
                Action = actContatoSalvar
              end
              object btnContatoCancelar: TToolButton
                Left = 124
                Top = 0
                Action = actContatoCancelar
              end
            end
          end
        end
        object tsEdereco1: TcxTabSheet
          Caption = 'Endere'#231'o'
          ImageIndex = 3
          ExplicitHeight = 189
          object ToolBar2: TToolBar
            Left = 0
            Top = 0
            Width = 730
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
            end
            object btnEnderecoCancelar: TToolButton
              Left = 124
              Top = 0
              Action = actEnderecoCancelar
            end
          end
          object cxGrid1: TcxGrid
            Left = 0
            Top = 30
            Width = 730
            Height = 183
            Align = alClient
            PopupMenu = ppMenu
            TabOrder = 1
            LookAndFeel.NativeStyle = False
            ExplicitLeft = 3
            ExplicitTop = 36
            ExplicitHeight = 159
            object cxGridDBTableView1: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.DataModeController.GridMode = True
              DataController.DataSource = dm_principal.dsEndereco
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Kind = skCount
                  FieldName = 'CANDIDATO'
                end>
              DataController.Summary.SummaryGroups = <>
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
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 152
    Top = 312
    inherited actNovo: TAction
      Category = 'Tela'
    end
    inherited actEditar: TAction
      Category = 'Tela'
    end
    inherited actExcluir: TAction
      Category = 'Tela'
    end
    inherited actSalvar: TAction
      Category = 'Tela'
    end
    inherited actFechar: TAction
      Category = 'Tela'
    end
    inherited actPesquisar: TAction
      Category = 'Tela'
    end
    inherited actCancelar: TAction
      Category = 'Tela'
    end
    inherited actExportarExcel: TAction
      Category = 'Tela'
    end
    inherited actImprimirRelatorio: TAction
      Category = 'Tela'
    end
    object actContatoNovo: TAction
      Category = 'Contatos'
      Caption = 'actContatoNovo'
      ImageIndex = 49
      OnExecute = actContatoNovoExecute
    end
    object actContatoEditar: TAction
      Category = 'Contatos'
      Caption = 'actContatoEditar'
      ImageIndex = 53
    end
    object actContatoExcluir: TAction
      Category = 'Contatos'
      Caption = 'actContatoExcluir'
      ImageIndex = 52
    end
    object actContatoSalvar: TAction
      Category = 'Contatos'
      Caption = 'actContatoSalvar'
      ImageIndex = 55
    end
    object actContatoCancelar: TAction
      Category = 'Contatos'
      Caption = 'actContatoCancelar'
      ImageIndex = 38
    end
    object actEnderecoNovo: TAction
      Category = 'Endereco'
      Caption = 'actEnderecoNovo'
      ImageIndex = 49
      OnExecute = actEnderecoNovoExecute
    end
    object actEnderecoEditar: TAction
      Category = 'Endereco'
      Caption = 'actEnderecoEditar'
      ImageIndex = 53
      OnExecute = actEnderecoNovoExecute
    end
    object actEnderecoExcluir: TAction
      Category = 'Endereco'
      Caption = 'actEnderecoExcluir'
      ImageIndex = 52
      OnExecute = actEnderecoNovoExecute
    end
    object actEnderecoSalvar: TAction
      Category = 'Endereco'
      Caption = 'actEnderecoSalvar'
      ImageIndex = 55
      OnExecute = actEnderecoNovoExecute
    end
    object actEnderecoCancelar: TAction
      Category = 'Endereco'
      Caption = 'actEnderecoCancelar'
      ImageIndex = 38
      OnExecute = actEnderecoNovoExecute
    end
  end
  inherited dxBarManager1: TdxBarManager
    Left = 208
    Top = 304
    PixelsPerInch = 96
  end
  inherited dsBase: TDataSource
    DataSet = dm_principal.cdsTelaFuncionario
    Left = 328
    Top = 312
  end
  inherited ppMenu: TPopupMenu
    Left = 280
    Top = 320
  end
  inherited ppRelatorioBase: TppReport
    Left = 466
    Top = 321
    DataPipelineName = 'ppDbBase'
    inherited ppTituloRelatorio: TppHeaderBand
      inherited ppImage2: TppImage
        LayerName = Foreground
      end
      inherited ppLabel1: TppLabel
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited ppLine1: TppLine
        LayerName = Foreground
      end
    end
    inherited ppFooterBand1: TppFooterBand
      inherited ppSystemVariable2: TppSystemVariable
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited ppLabel2: TppLabel
        SaveOrder = -1
        LayerName = Foreground
      end
    end
  end
  inherited ppDbBase: TppDBPipeline
    Left = 394
    Top = 313
  end
end
