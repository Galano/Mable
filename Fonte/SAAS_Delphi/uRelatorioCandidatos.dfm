inherited frmRelatorioCandidatos: TfrmRelatorioCandidatos
  Caption = 'frmRelatorioCandidatos'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlDadosPesquisa: TcxGroupBox
    Visible = False
  end
  inherited pcControleTela: TcxPageControl
    inherited tsDados: TcxTabSheet
      inherited cxGridBase: TcxGrid
        Width = 738
        Height = 220
        inherited vwGridBase: TcxGridDBTableView
          object vwGridBaseSEL: TcxGridDBColumn
            DataBinding.FieldName = 'SEL'
            Visible = False
          end
          object vwGridBasePESSOA: TcxGridDBColumn
            DataBinding.FieldName = 'PESSOA'
          end
          object vwGridBaseCPF_CNPJ: TcxGridDBColumn
            DataBinding.FieldName = 'CPF_CNPJ'
          end
          object vwGridBaseRG: TcxGridDBColumn
            DataBinding.FieldName = 'RG'
          end
          object vwGridBaseEMAIL: TcxGridDBColumn
            DataBinding.FieldName = 'EMAIL'
          end
          object vwGridBaseCANDIDATO: TcxGridDBColumn
            DataBinding.FieldName = 'CANDIDATO'
          end
          object vwGridBaseNOME: TcxGridDBColumn
            DataBinding.FieldName = 'NOME'
          end
          object vwGridBaseDATA_CADASTRO: TcxGridDBColumn
            DataBinding.FieldName = 'DATA_CADASTRO'
          end
          object vwGridBaseDATA_NASCIMENTO: TcxGridDBColumn
            DataBinding.FieldName = 'DATA_NASCIMENTO'
          end
          object vwGridBaseTIPO: TcxGridDBColumn
            DataBinding.FieldName = 'TIPO'
          end
          object vwGridBaseLOCATARIO: TcxGridDBColumn
            DataBinding.FieldName = 'LOCATARIO'
          end
          object vwGridBaseLOCALIDADE: TcxGridDBColumn
            DataBinding.FieldName = 'LOCALIDADE'
          end
          object vwGridBaseUF: TcxGridDBColumn
            DataBinding.FieldName = 'UF'
          end
          object vwGridBaseBAIRRO: TcxGridDBColumn
            DataBinding.FieldName = 'BAIRRO'
          end
          object vwGridBaseIDADE: TcxGridDBColumn
            DataBinding.FieldName = 'IDADE'
          end
          object vwGridBaseCEP: TcxGridDBColumn
            DataBinding.FieldName = 'CEP'
          end
          object vwGridBaseMATRICULA: TcxGridDBColumn
            DataBinding.FieldName = 'MATRICULA'
          end
        end
      end
    end
    inherited tsDetalhe: TcxTabSheet
      ExplicitTop = 24
      ExplicitWidth = 738
      ExplicitHeight = 220
    end
  end
  inherited dxBarManager1: TdxBarManager
    PixelsPerInch = 96
  end
  inherited dsBase: TDataSource
    DataSet = dm_principal.cdsRelatorioCandidatos
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
end
