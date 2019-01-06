inherited frmRelatorioAlunos: TfrmRelatorioAlunos
  Caption = 'Relatorio de Alunos'
  ClientHeight = 461
  ClientWidth = 673
  ExplicitWidth = 689
  ExplicitHeight = 500
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlDadosPesquisa: TcxGroupBox
    ExplicitWidth = 673
    ExplicitHeight = 37
    Height = 37
    Width = 673
  end
  inherited pcControleTela: TcxPageControl
    Top = 95
    Width = 673
    Height = 366
    ExplicitTop = 95
    ExplicitWidth = 673
    ExplicitHeight = 366
    ClientRectBottom = 364
    ClientRectRight = 671
    inherited tsDados: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 26
      ExplicitWidth = 669
      ExplicitHeight = 338
      inherited cxGridBase: TcxGrid
        Width = 669
        Height = 338
        ExplicitWidth = 669
        ExplicitHeight = 338
        inherited vwGridBase: TcxGridDBTableView
          object vwGridBaseSEL: TcxGridDBColumn
            DataBinding.FieldName = 'SEL'
            Visible = False
          end
          object vwGridBaseMATRICULA: TcxGridDBColumn
            DataBinding.FieldName = 'MATRICULA'
          end
          object vwGridBasePESSOA: TcxGridDBColumn
            DataBinding.FieldName = 'PESSOA'
            Visible = False
          end
          object vwGridBaseCPF_CNPJ: TcxGridDBColumn
            DataBinding.FieldName = 'CPF_CNPJ'
          end
          object vwGridBaseRG: TcxGridDBColumn
            DataBinding.FieldName = 'RG'
          end
          object vwGridBaseEMAIL: TcxGridDBColumn
            DataBinding.FieldName = 'EMAIL'
            Width = 200
          end
          object vwGridBaseCANDIDATO: TcxGridDBColumn
            DataBinding.FieldName = 'CANDIDATO'
            Visible = False
          end
          object vwGridBaseNOME: TcxGridDBColumn
            DataBinding.FieldName = 'NOME'
            Width = 200
          end
          object vwGridBaseIDADE: TcxGridDBColumn
            DataBinding.FieldName = 'IDADE'
          end
          object vwGridBaseDATA_CADASTRO: TcxGridDBColumn
            DataBinding.FieldName = 'DATA_CADASTRO'
            Width = 170
          end
          object vwGridBaseDATA_NASCIMENTO: TcxGridDBColumn
            DataBinding.FieldName = 'DATA_NASCIMENTO'
            Width = 170
          end
          object vwGridBaseTIPO: TcxGridDBColumn
            DataBinding.FieldName = 'TIPO'
            Visible = False
          end
          object vwGridBaseLOCATARIO: TcxGridDBColumn
            DataBinding.FieldName = 'LOCATARIO'
            Width = 200
          end
          object vwGridBaseLOCALIDADE: TcxGridDBColumn
            DataBinding.FieldName = 'LOCALIDADE'
            Visible = False
          end
          object vwGridBaseUF: TcxGridDBColumn
            DataBinding.FieldName = 'UF'
            Visible = False
          end
          object vwGridBaseBAIRRO: TcxGridDBColumn
            DataBinding.FieldName = 'BAIRRO'
            Visible = False
          end
          object vwGridBaseCEP: TcxGridDBColumn
            DataBinding.FieldName = 'CEP'
          end
        end
      end
    end
    inherited tsDetalhe: TcxTabSheet
      TabVisible = False
      ExplicitLeft = 2
      ExplicitTop = 26
      ExplicitWidth = 669
      ExplicitHeight = 338
    end
  end
  inherited ActionList1: TActionList
    Top = 200
  end
  inherited dxBarManager1: TdxBarManager
    PixelsPerInch = 96
    inherited btnEditar: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btnSalvar: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btnNovo: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btnExcluir: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btnCancelar: TdxBarLargeButton
      Visible = ivNever
    end
  end
  inherited dsBase: TDataSource
    DataSet = dm_principal.sqlRelatorioAlunos
    Left = 392
    Top = 232
  end
  inherited ppRelatorioBase: TppReport
    Template.FileName = 
      'C:\Users\BrunoGalanoSilva\Documents\Pos-Engenharia\SAAF\SAAS_Del' +
      'phi\rel_alun.rtm'
    Left = 490
    Top = 177
    DataPipelineName = 'ppDbBase'
    inherited ppTituloRelatorio: TppHeaderBand
      mmHeight = 33338
      inherited ppLine1: TppLine [0]
        mmTop = 32812
        LayerName = Foreground
      end
      inherited ppImage2: TppImage [1]
        LayerName = Foreground
      end
      inherited ppLabel1: TppLabel [2]
        SaveOrder = -1
        Caption = 'Relat'#243'rio de Alunos'
        mmLeft = 43127
        mmWidth = 93134
        LayerName = Foreground
      end
      object pplblMAtricula: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lblMAtricula'
        Caption = 'Matricula'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3705
        mmLeft = 2117
        mmTop = 29370
        mmWidth = 11377
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lblMAtricula1'
        Caption = 'Idade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3705
        mmLeft = 83079
        mmTop = 29370
        mmWidth = 6880
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
        mmHeight = 3705
        mmLeft = 27252
        mmTop = 29370
        mmWidth = 7144
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        Caption = 'E-mail'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3705
        mmLeft = 98690
        mmTop = 29370
        mmWidth = 7408
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        Caption = 'Dt.Matr'#237'cula'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 153723
        mmTop = 29369
        mmWidth = 14817
        BandType = 0
        LayerName = Foreground
      end
    end
    inherited ppDetailBand1: TppDetailBand
      mmHeight = 4763
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        DataField = 'IDADE'
        DataPipeline = ppDbBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDbBase'
        mmHeight = 4763
        mmLeft = 83079
        mmTop = 0
        mmWidth = 9525
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        HyperlinkColor = clWindowText
        DataField = 'EMAIL'
        DataPipeline = ppDbBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDbBase'
        mmHeight = 4763
        mmLeft = 98690
        mmTop = 0
        mmWidth = 51594
        BandType = 4
        LayerName = Foreground
      end
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
        mmLeft = 27252
        mmTop = 0
        mmWidth = 53975
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        DataField = 'MATRICULA'
        DataPipeline = ppDbBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDbBase'
        mmHeight = 4763
        mmLeft = 2117
        mmTop = 0
        mmWidth = 21960
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        HyperlinkColor = clWindowText
        DataField = 'DATA_CADASTRO'
        DataPipeline = ppDbBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDbBase'
        mmHeight = 4763
        mmLeft = 153723
        mmTop = 0
        mmWidth = 28046
        BandType = 4
        LayerName = Foreground
      end
    end
    inherited ppFooterBand1: TppFooterBand
      mmHeight = 3704
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
    DataSource = dsBase
    Left = 482
    Top = 265
  end
end
