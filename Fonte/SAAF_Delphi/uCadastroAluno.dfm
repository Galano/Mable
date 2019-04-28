inherited frmCadastroAluno: TfrmCadastroAluno
  Caption = 'Usuario'
  ClientHeight = 477
  ClientWidth = 853
  ExplicitWidth = 869
  ExplicitHeight = 516
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlDadosPesquisa: TcxGroupBox
    ExplicitWidth = 853
    ExplicitHeight = 38
    Height = 38
    Width = 853
    inherited rgTipoConsulta: TRadioGroup
      Width = 176
      Height = 32
      Items.Strings = (
        'Nome'
        'Matricula')
      OnClick = rgTipoConsultaClick
      ExplicitWidth = 176
      ExplicitHeight = 32
    end
    inherited edtConsulta: TcxTextEdit
      Left = 203
      Top = 11
      OnKeyPress = edtConsultaKeyPress
      ExplicitLeft = 203
      ExplicitTop = 11
    end
  end
  inherited pcControleTela: TcxPageControl
    Top = 96
    Width = 853
    Height = 381
    TabOrder = 1
    Properties.ActivePage = tsDados
    ExplicitTop = 96
    ExplicitWidth = 853
    ExplicitHeight = 381
    ClientRectBottom = 379
    ClientRectRight = 851
    inherited tsDados: TcxTabSheet
      Caption = 'Usuario'
      ExplicitLeft = 2
      ExplicitTop = 26
      ExplicitWidth = 849
      ExplicitHeight = 353
      inherited cxGridBase: TcxGrid
        Width = 849
        Height = 353
        ExplicitWidth = 849
        ExplicitHeight = 353
        inherited vwGridBase: TcxGridDBTableView
          OnCellClick = vwGridBaseCellClick
          DataController.DataModeController.GridMode = True
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              FieldName = 'CANDIDATO'
              Column = vwGridBaseSEL
            end>
          inherited vwGridBaseSEL: TcxGridDBColumn
            Properties.OnEditValueChanged = vwGridBaseSELPropertiesEditValueChanged
          end
          inherited vwGridBaseCANDIDATO: TcxGridDBColumn
            Visible = False
          end
          object vwGridBaseMATRICULA: TcxGridDBColumn [2]
            Caption = 'Matricula'
            DataBinding.FieldName = 'MATRICULA'
          end
          object vwGridBaseDATA_MATRICULA: TcxGridDBColumn
            Caption = 'Dt. Matricula'
            DataBinding.FieldName = 'DATA_MATRICULA'
            Width = 141
          end
        end
      end
    end
    inherited tsDetalhe: TcxTabSheet
      Caption = 'Dados Cadastrais'
      ExplicitWidth = 849
      ExplicitHeight = 353
      inherited pcDetalheCandidato: TcxPageControl
        Width = 849
        Height = 321
        Properties.ActivePage = cxTabSheet2
        ExplicitWidth = 849
        ExplicitHeight = 321
        ClientRectBottom = 319
        ClientRectRight = 847
        inherited tsCandidato: TcxTabSheet
          ExplicitWidth = 845
          ExplicitHeight = 293
          inherited cxDBTextEdit2: TcxDBTextEdit
            TabOrder = 0
          end
          inherited cxDBTextEdit3: TcxDBTextEdit
            TabOrder = 1
          end
          inherited edtNome: TcxDBTextEdit
            TabOrder = 2
          end
          inherited cxDBDateEdit1: TcxDBDateEdit
            TabOrder = 3
          end
          inherited cxDBDateEdit2: TcxDBDateEdit
            TabOrder = 4
          end
          inherited cxDBMaskEdit1: TcxDBMaskEdit
            TabOrder = 5
          end
          inherited cxDBTextEdit5: TcxDBTextEdit
            TabOrder = 7
          end
          inherited cbGenero: TcxDBImageComboBox
            TabOrder = 8
          end
          inherited cxDBTextEdit4: TcxDBTextEdit
            TabOrder = 9
          end
          inherited edtResponsavel: TcxDBTextEdit
            TabOrder = 10
          end
          inherited edtParentesco: TcxDBTextEdit
            TabOrder = 11
          end
          inherited cxDBTextEdit6: TcxDBTextEdit
            TabOrder = 12
          end
          inherited cxDBTextEdit7: TcxDBTextEdit
            TabOrder = 13
          end
          inherited edtImage: TcxDBImage
            TabOrder = 14
          end
          inherited btnCarregarFoto: TcxButton
            TabOrder = 15
          end
          inherited btnLimparFoto: TcxButton
            TabOrder = 16
          end
          inherited cxDBTextEdit8: TcxDBTextEdit
            TabOrder = 17
          end
          inherited cxDBDateEdit3: TcxDBDateEdit
            TabOrder = 18
          end
          inherited cxDBDateEdit4: TcxDBDateEdit
            TabOrder = 19
          end
          inherited cxDBTextEdit22: TcxDBTextEdit
            TabOrder = 20
          end
          inherited cxDBTextEdit24: TcxDBTextEdit
            TabOrder = 21
          end
        end
        inherited tsContatos: TcxTabSheet
          ExplicitLeft = 2
          ExplicitTop = 26
          ExplicitWidth = 827
          ExplicitHeight = 325
          inherited gridContatos: TcxGrid
            Width = 845
            Height = 295
            ExplicitWidth = 827
            ExplicitHeight = 295
          end
          inherited pnlContatosDireito: TPanel
            Width = 845
            ExplicitWidth = 827
            inherited ToolBar1: TToolBar
              Width = 843
              ExplicitWidth = 825
            end
          end
        end
        inherited tsEdereco1: TcxTabSheet
          ExplicitLeft = 2
          ExplicitTop = 26
          ExplicitWidth = 827
          ExplicitHeight = 325
          inherited ToolBar2: TToolBar
            Width = 845
            ExplicitWidth = 827
          end
          inherited cxGrid1: TcxGrid
            Width = 845
            Height = 295
            ExplicitWidth = 827
            ExplicitHeight = 295
          end
        end
        inherited tsNecessidades: TcxTabSheet
          ExplicitLeft = 2
          ExplicitTop = 26
          ExplicitWidth = 827
          ExplicitHeight = 325
          inherited gridNecessidades: TcxGrid
            Width = 845
            Height = 295
            ExplicitWidth = 827
            ExplicitHeight = 295
          end
          inherited ToolBar3: TToolBar
            Width = 845
            ExplicitWidth = 827
          end
        end
        inherited tsProntuario: TcxTabSheet
          ExplicitLeft = 2
          ExplicitTop = 26
          ExplicitWidth = 827
          ExplicitHeight = 325
          inherited DBMemo1: TDBMemo
            Width = 845
            Height = 325
            ExplicitWidth = 827
            ExplicitHeight = 325
          end
        end
        inherited tsMedico: TcxTabSheet
          ExplicitWidth = 845
          ExplicitHeight = 293
          inherited cxGroupBox1: TcxGroupBox
            ExplicitWidth = 845
            Width = 845
            inherited cxLabel2: TcxLabel
              AnchorX = 55
            end
            inherited cxDBTextEdit9: TcxDBTextEdit
              ExplicitWidth = 406
              Width = 406
            end
            inherited cxDBTextEdit11: TcxDBTextEdit
              ExplicitWidth = 406
              Width = 406
            end
          end
          inherited cxGroupBox2: TcxGroupBox
            ExplicitWidth = 845
            Width = 845
            inherited Label25: TLabel
              Left = 560
              ExplicitLeft = 542
            end
            inherited cxDBTextEdit17: TcxDBTextEdit
              ExplicitWidth = 542
              Width = 542
            end
            inherited cxDBTextEdit18: TcxDBTextEdit
              ExplicitWidth = 510
              Width = 510
            end
            inherited cxDBTextEdit19: TcxDBTextEdit
              Left = 578
              ExplicitLeft = 560
            end
          end
          inherited cxGroupBox5: TcxGroupBox
            ExplicitWidth = 845
            Width = 845
            inherited cxDBTextEdit12: TcxDBTextEdit
              ExplicitWidth = 332
              Width = 332
            end
          end
          inherited cxGroupBox11: TcxGroupBox
            ExplicitWidth = 845
            Width = 845
          end
        end
        inherited cxTabSheet1: TcxTabSheet
          ExplicitWidth = 845
          ExplicitHeight = 293
          inherited cxGroupBox6: TcxGroupBox
            Top = 53
            TabOrder = 0
            ExplicitTop = 53
            ExplicitWidth = 845
            Width = 845
          end
          inherited cxGroupBox4: TcxGroupBox
            Top = 166
            ExplicitTop = 166
            ExplicitWidth = 845
            Width = 845
          end
          inherited cxGroupBox3: TcxGroupBox
            TabOrder = 2
            ExplicitWidth = 845
            Width = 845
          end
          inherited cxGroupBox7: TcxGroupBox
            Top = 116
            TabOrder = 3
            ExplicitTop = 116
            ExplicitWidth = 845
            Width = 845
          end
          inherited GroupBox1: TGroupBox
            Width = 845
            ExplicitWidth = 845
            inherited cxGroupBox10: TcxGroupBox
              ExplicitWidth = 369
              Width = 369
            end
          end
        end
        inherited cxTabSheet2: TcxTabSheet
          ExplicitWidth = 845
          ExplicitHeight = 293
          inherited cxGroupBox12: TcxGroupBox
            ExplicitWidth = 845
            Width = 845
            inherited cxDBTextEdit23: TcxDBTextEdit
              Width = 238
            end
          end
          inherited cxGroupBox13: TcxGroupBox
            ExplicitWidth = 845
            Width = 845
            inherited cxDBTextEdit20: TcxDBTextEdit
              Width = 635
            end
          end
          inherited cxGroupBox14: TcxGroupBox
            ExplicitWidth = 845
            Width = 845
            inherited cxDBTextEdit21: TcxDBTextEdit
              Width = 635
            end
          end
        end
      end
      inherited cxGroupBox15: TcxGroupBox
        Top = 321
        ExplicitTop = 321
        ExplicitWidth = 849
        Width = 849
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 408
    Top = 128
  end
  inherited dxBarManager1: TdxBarManager
    Categories.Visibles = (
      True)
    Left = 520
    Top = 32
    PixelsPerInch = 96
    inherited btnNovo: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btnExcluir: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btnGerarMatricula: TdxBarLargeButton
      Visible = ivNever
    end
  end
  inherited dsBase: TDataSource
    DataSet = cdsTelaAluno
    Left = 784
    Top = 8
  end
  inherited ppRelatorioBase: TppReport
    DataPipelineName = 'ppDbBase'
    inherited ppTituloRelatorio: TppHeaderBand
      inherited ppLabel3: TppLabel [0]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited ppLabel4: TppLabel [1]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited ppLabel5: TppLabel [2]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited ppVariable1: TppVariable [3]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited ppLabel6: TppLabel [4]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited ppImage2: TppImage [5]
        LayerName = Foreground
      end
      inherited ppLabel1: TppLabel [6]
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited ppLine1: TppLine [7]
        LayerName = Foreground
      end
    end
    inherited ppDetailBand1: TppDetailBand
      inherited ppDBText1: TppDBText
        SaveOrder = -1
        DataPipelineName = 'ppDbBase'
        LayerName = Foreground
      end
      inherited ppDBText2: TppDBText
        SaveOrder = -1
        DataPipelineName = 'ppDbBase'
        LayerName = Foreground
      end
      inherited ppDBText3: TppDBText
        SaveOrder = -1
        DataPipelineName = 'ppDbBase'
        LayerName = Foreground
      end
      inherited ppDBText4: TppDBText
        SaveOrder = -1
        DataPipelineName = 'ppDbBase'
        LayerName = Foreground
      end
    end
    inherited ppFooterBand1: TppFooterBand
      inherited ppLabel2: TppLabel
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited ppSystemVariable2: TppSystemVariable
        SaveOrder = -1
        LayerName = Foreground
      end
    end
  end
  object cdsTelaAluno: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'MATRICULA'
        ParamType = ptInput
        Size = 2
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'NOME'
        ParamType = ptInput
        Value = 'a'
      end>
    ProviderName = 'dspTelaAluno'
    Left = 784
    Top = 40
    object cdsTelaAlunoPESSOA: TIntegerField
      FieldName = 'PESSOA'
    end
    object cdsTelaAlunoCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Size = 15
    end
    object cdsTelaAlunoRG: TStringField
      FieldName = 'RG'
      Size = 15
    end
    object cdsTelaAlunoEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 255
    end
    object cdsTelaAlunoCANDIDATO: TIntegerField
      FieldName = 'CANDIDATO'
    end
    object cdsTelaAlunoNOME: TStringField
      FieldName = 'NOME'
      Size = 255
    end
    object cdsTelaAlunoDATA_CADASTRO: TSQLTimeStampField
      FieldName = 'DATA_CADASTRO'
    end
    object cdsTelaAlunoMATRICULA: TIntegerField
      FieldName = 'MATRICULA'
    end
    object cdsTelaAlunoDATA_MATRICULA: TSQLTimeStampField
      FieldName = 'DATA_MATRICULA'
    end
    object cdsTelaAlunoTIPO: TStringField
      FieldName = 'TIPO'
      Size = 15
    end
    object cdsTelaAlunoLOCATARIO: TStringField
      FieldName = 'LOCATARIO'
      Size = 255
    end
    object cdsTelaAlunoLOCALIDADE: TIntegerField
      FieldName = 'LOCALIDADE'
    end
    object cdsTelaAlunoUF: TIntegerField
      FieldName = 'UF'
    end
    object cdsTelaAlunoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 100
    end
    object cdsTelaAlunoDATA_NASCIMENTO: TSQLTimeStampField
      FieldName = 'DATA_NASCIMENTO'
    end
    object cdsTelaAlunoIDADE: TIntegerField
      FieldName = 'IDADE'
      ProviderFlags = []
    end
    object cdsTelaAlunoCEP: TStringField
      FieldName = 'CEP'
      Size = 11
    end
    object cdsTelaAlunoALUNO: TAutoIncField
      FieldName = 'ALUNO'
      Origin = 'ALUNO'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
    end
  end
  object dspTelaAluno: TDataSetProvider
    DataSet = dm_principal.sqlTelaAluno
    Left = 784
    Top = 72
  end
end
