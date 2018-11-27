inherited frmAcompanhamento: TfrmAcompanhamento
  Caption = 'Acompanhamento'
  ClientHeight = 455
  ClientWidth = 646
  ExplicitWidth = 662
  ExplicitHeight = 494
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlDadosPesquisa: TcxGroupBox
    ExplicitWidth = 646
    ExplicitHeight = 23
    Height = 23
    Width = 646
  end
  inherited pcControleTela: TcxPageControl
    Top = 81
    Width = 646
    Height = 374
    ExplicitTop = 81
    ExplicitWidth = 646
    ExplicitHeight = 374
    ClientRectBottom = 372
    ClientRectRight = 644
    inherited tsDados: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 26
      ExplicitWidth = 642
      ExplicitHeight = 346
      inherited cxGridBase: TcxGrid
        Width = 642
        Height = 346
        ExplicitWidth = 642
        ExplicitHeight = 346
        inherited vwGridBase: TcxGridDBTableView
          object vwGridBaseACOMPANHAMENTO: TcxGridDBColumn
            Caption = 'ID'
            DataBinding.FieldName = 'ACOMPANHAMENTO'
            Width = 65
          end
          object vwGridBaseALUNO: TcxGridDBColumn
            DataBinding.FieldName = 'ALUNO'
            Visible = False
          end
          object vwGridBaseFUNCIONARIO: TcxGridDBColumn
            DataBinding.FieldName = 'FUNCIONARIO'
            Visible = False
            Width = 149
          end
          object vwGridBaseNOME: TcxGridDBColumn
            Caption = 'Nome'
            DataBinding.FieldName = 'NOME'
            Width = 250
          end
          object vwGridBaseDATA: TcxGridDBColumn
            Caption = 'Data Agendada'
            DataBinding.FieldName = 'DATA'
            Width = 161
          end
          object vwGridBaseOBSERVACOES: TcxGridDBColumn
            Caption = 'Observa'#231#245'es'
            DataBinding.FieldName = 'OBSERVACOES'
            Width = 200
          end
        end
      end
    end
    inherited tsDetalhe: TcxTabSheet
      ExplicitWidth = 642
      ExplicitHeight = 308
      object Label1: TLabel
        Left = 70
        Top = 20
        Width = 27
        Height = 13
        Alignment = taRightJustify
        Caption = 'Aluno'
      end
      object Label2: TLabel
        Left = 18
        Top = 47
        Width = 79
        Height = 13
        Alignment = taRightJustify
        Caption = 'Dt. Atendimento'
      end
      object Label3: TLabel
        Left = 34
        Top = 74
        Width = 63
        Height = 13
        Alignment = taRightJustify
        Caption = 'Observa'#231#245'es'
      end
      object Label4: TLabel
        Left = 250
        Top = 47
        Width = 39
        Height = 13
        Alignment = taRightJustify
        Caption = 'Retorno'
      end
      object cbDataMov: TcxDBDateEdit
        Left = 103
        Top = 43
        DataBinding.DataField = 'DATA'
        DataBinding.DataSource = dm_principal.dsAcompanhamento
        Properties.AssignedValues.DisplayFormat = True
        Properties.AssignedValues.EditFormat = True
        Properties.ReadOnly = False
        Properties.ShowTime = False
        TabOrder = 1
        Width = 121
      end
      object mmObservacao: TcxDBMemo
        Left = 103
        Top = 71
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataBinding.DataField = 'OBSERVACOES'
        DataBinding.DataSource = dm_principal.dsAcompanhamento
        TabOrder = 2
        Height = 258
        Width = 522
      end
      object dbcbAluno: TcxDBLookupComboBox
        Left = 103
        Top = 16
        DataBinding.DataField = 'ALUNO'
        DataBinding.DataSource = dm_principal.dsAcompanhamento
        Properties.KeyFieldNames = 'ALUNO'
        Properties.ListColumns = <
          item
            FieldName = 'NOME'
          end>
        Properties.ListSource = dm_principal.dsListarAlunos
        TabOrder = 0
        Width = 313
      end
      object cbDataRetorno: TcxDBDateEdit
        Left = 295
        Top = 44
        DataBinding.DataField = 'DATARETORNO'
        DataBinding.DataSource = dm_principal.dsAcompanhamento
        Properties.SaveTime = False
        Properties.ShowTime = False
        TabOrder = 3
        OnExit = cbDataMovExit
        Width = 121
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 432
    Top = 288
  end
  inherited dxBarManager1: TdxBarManager
    Left = 352
    Top = 288
    PixelsPerInch = 96
    inherited btnExcluir: TdxBarLargeButton
      Visible = ivNever
    end
  end
  inherited dsBase: TDataSource
    DataSet = dm_principal.cdsAcompanhamento
    Left = 472
    Top = 288
  end
  inherited ppMenu: TPopupMenu
    Left = 392
    Top = 288
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
end
