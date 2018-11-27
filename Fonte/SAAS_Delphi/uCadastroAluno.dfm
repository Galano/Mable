inherited frmCadastroAluno: TfrmCadastroAluno
  Caption = 'Aluno'
  ClientHeight = 377
  ClientWidth = 836
  ExplicitWidth = 852
  ExplicitHeight = 416
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlDadosPesquisa: TcxGroupBox
    ExplicitWidth = 836
    ExplicitHeight = 38
    Height = 38
    Width = 836
    inherited rgTipoConsulta: TRadioGroup
      Width = 176
      Height = 32
      Items.Strings = (
        'Nome'
        'Matricula')
      ExplicitWidth = 176
      ExplicitHeight = 32
    end
    inherited edtConsulta: TcxTextEdit
      Left = 187
      Top = 12
      ExplicitLeft = 187
      ExplicitTop = 12
    end
  end
  inherited pcControleTela: TcxPageControl
    Top = 96
    Width = 836
    Height = 281
    TabOrder = 1
    ExplicitTop = 96
    ExplicitWidth = 836
    ExplicitHeight = 281
    ClientRectBottom = 279
    ClientRectRight = 834
    inherited tsDados: TcxTabSheet
      Caption = 'Alunos'
      ExplicitWidth = 832
      ExplicitHeight = 362
      inherited cxGridBase: TcxGrid
        Width = 832
        Height = 253
        ExplicitWidth = 832
        ExplicitHeight = 362
        inherited vwGridBase: TcxGridDBTableView
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
      ExplicitWidth = 832
      ExplicitHeight = 253
      inherited pcDetalheCandidato: TcxPageControl
        Width = 832
        Height = 253
        Properties.ActivePage = tsNecessidades
        ExplicitWidth = 832
        ExplicitHeight = 253
        ClientRectBottom = 251
        ClientRectRight = 830
        inherited tsCandidato: TcxTabSheet
          ExplicitLeft = 3
          ExplicitTop = 0
          ExplicitWidth = 828
          ExplicitHeight = 334
          inherited Label3: TLabel
            Left = 11
            ExplicitLeft = 11
          end
          inherited Label7: TLabel
            Left = 682
            ExplicitLeft = 682
          end
          inherited Label8: TLabel
            Left = 682
            ExplicitLeft = 507
          end
          inherited Label1: TLabel
            Left = 11
            ExplicitLeft = 11
          end
          inherited Label5: TLabel
            Left = 405
            ExplicitLeft = 405
          end
          inherited cxDBTextEdit2: TcxDBTextEdit
            Left = 11
            ExplicitLeft = 11
          end
          inherited cxDBTextEdit3: TcxDBTextEdit
            ExplicitWidth = 631
            Width = 631
          end
          inherited cxDBDateEdit1: TcxDBDateEdit
            Left = 682
            ExplicitLeft = 682
          end
          inherited cxDBDateEdit2: TcxDBDateEdit
            Left = 682
            ExplicitLeft = 682
          end
          inherited cxDBMaskEdit1: TcxDBMaskEdit
            ExplicitWidth = 234
            Width = 234
          end
          inherited cxDBTextEdit1: TcxDBTextEdit
            Left = 11
            Top = 120
            ExplicitLeft = 11
            ExplicitTop = 120
          end
          inherited cxDBTextEdit4: TcxDBTextEdit
            ExplicitWidth = 46
            Width = 46
          end
        end
        inherited tsContatos: TcxTabSheet
          ExplicitWidth = 828
          ExplicitHeight = 334
          inherited gridContatos: TcxGrid
            Width = 828
            Height = 195
            ExplicitWidth = 828
            ExplicitHeight = 304
          end
          inherited pnlContatosDireito: TPanel
            Width = 828
            ExplicitWidth = 828
            inherited ToolBar1: TToolBar
              Width = 826
              ExplicitWidth = 826
            end
          end
        end
        inherited tsEdereco1: TcxTabSheet
          ExplicitWidth = 828
          ExplicitHeight = 334
          inherited ToolBar2: TToolBar
            Width = 828
            ExplicitWidth = 828
          end
          inherited cxGrid1: TcxGrid
            Width = 828
            Height = 195
            ExplicitWidth = 828
            ExplicitHeight = 304
          end
        end
        inherited tsNecessidades: TcxTabSheet
          ExplicitWidth = 828
          ExplicitHeight = 225
        end
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
    Left = 600
    Top = 304
  end
  inherited ppRelatorioBase: TppReport
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
    Left = 600
    Top = 336
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
    end
    object cdsTelaAlunoCEP: TStringField
      FieldName = 'CEP'
      Size = 11
    end
  end
  object dspTelaAluno: TDataSetProvider
    DataSet = dm_principal.sqlTelaAluno
    Left = 600
    Top = 368
  end
end
