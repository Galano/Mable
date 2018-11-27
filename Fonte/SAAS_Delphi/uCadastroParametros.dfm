inherited frmCadastroParametros: TfrmCadastroParametros
  Caption = 'Cadastro Parametros'
  ClientHeight = 338
  ClientWidth = 397
  ExplicitWidth = 413
  ExplicitHeight = 377
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlDadosPesquisa: TcxGroupBox
    ExplicitWidth = 397
    ExplicitHeight = 7
    Height = 7
    Width = 397
  end
  inherited pcControleTela: TcxPageControl
    Top = 65
    Width = 397
    Height = 273
    ExplicitTop = 65
    ExplicitWidth = 397
    ExplicitHeight = 273
    ClientRectBottom = 271
    ClientRectRight = 395
    inherited tsDados: TcxTabSheet
      ExplicitWidth = 393
      ExplicitHeight = 245
      inherited cxGridBase: TcxGrid
        Width = 393
        Height = 245
        ExplicitWidth = 393
        ExplicitHeight = 245
        inherited vwGridBase: TcxGridDBTableView
          object vwGridBasePARAMETROS: TcxGridDBColumn
            Caption = 'Parametros'
            DataBinding.FieldName = 'PARAMETROS'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.ReadOnly = True
            Width = 73
          end
          object vwGridBasePARAMETRO: TcxGridDBColumn
            Caption = 'Parametro'
            DataBinding.FieldName = 'PARAMETRO'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.ReadOnly = True
            Width = 136
          end
          object vwGridBaseVALOR: TcxGridDBColumn
            Caption = 'Valor'
            DataBinding.FieldName = 'VALOR'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.ReadOnly = True
            Width = 100
          end
          object vwGridBaseSITUACAO: TcxGridDBColumn
            Caption = 'Situa'#231#227'o'
            DataBinding.FieldName = 'SITUACAO'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.ReadOnly = True
          end
        end
      end
    end
    inherited tsDetalhe: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 26
      ExplicitWidth = 393
      ExplicitHeight = 245
      object Label1: TLabel
        Left = 35
        Top = 24
        Width = 50
        Height = 13
        Caption = 'Parametro'
        FocusControl = cxDBTextEdit1
      end
      object Label2: TLabel
        Left = 60
        Top = 52
        Width = 24
        Height = 13
        Caption = 'Valor'
        FocusControl = cxDBTextEdit2
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 88
        Top = 21
        DataBinding.DataField = 'PARAMETRO'
        DataBinding.DataSource = dsBase
        Enabled = False
        Properties.ReadOnly = False
        TabOrder = 0
        Width = 121
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 88
        Top = 48
        DataBinding.DataField = 'VALOR'
        DataBinding.DataSource = dsBase
        TabOrder = 1
        Width = 121
      end
      object cxDBCheckBox1: TcxDBCheckBox
        Left = 88
        Top = 73
        Caption = 'Situa'#231#227'o'
        DataBinding.DataField = 'SITUACAO'
        DataBinding.DataSource = dsBase
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        TabOrder = 2
      end
    end
  end
  inherited dxBarManager1: TdxBarManager
    Left = 264
    Top = 184
    PixelsPerInch = 96
    inherited dxBarManager1Bar1: TdxBar
      DockedLeft = 0
    end
    inherited btnNovo: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btnExcluir: TdxBarLargeButton
      Visible = ivNever
    end
  end
  inherited dsBase: TDataSource
    DataSet = dm_principal.cdsParametros
    Left = 336
  end
  inherited ppMenu: TPopupMenu
    Top = 168
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
