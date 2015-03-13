object dmMain: TdmMain
  OldCreateOrder = False
  Height = 469
  Width = 600
  object fdKunde: TFDQuery
    BeforeOpen = fdKundeBeforeOpen
    Connection = dmData.FDConn
    SQL.Strings = (
      'select '
      '  K.*, '
      '  P.Poststed, B.Poststed as BesokPoststed'
      'from '
      '  Kontakt K'
      '  left join Postnr P on K.Postnr = P.Postnr'
      '  left join Postnr B on K.Besokpostnr = B.Postnr'
      'where '
      '  KlientID = :KlientID'
      '  and SerieID = '#39'KS'#39
      '  and ((Aktiv = 1) or (1 = !ShowInactive))'
      '  !FilterString')
    Left = 40
    Top = 32
    ParamData = <
      item
        Name = 'KLIENTID'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
    MacroData = <
      item
        Value = '0'
        Name = 'SHOWINACTIVE'
      end
      item
        Value = ''
        Name = 'FILTERSTRING'
      end>
  end
  object dsKunde: TDataSource
    DataSet = fdKunde
    Left = 40
    Top = 80
  end
  object fdLeverandor: TFDQuery
    Connection = dmData.FDConn
    SQL.Strings = (
      'select '
      '  K.*, '
      '  P.Poststed, B.Poststed as BesokPoststed'
      'from '
      '  Kontakt K'
      '  left join Postnr P on K.Postnr = P.Postnr'
      '  left join Postnr B on K.Besokpostnr = B.Postnr'
      'where '
      '  KlientID = :KlientID'
      '  and SerieID = '#39'LS'#39
      '  and Aktiv = 1')
    Left = 104
    Top = 32
    ParamData = <
      item
        Name = 'KLIENTID'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
  end
  object dsLeverandor: TDataSource
    DataSet = fdLeverandor
    Left = 104
    Top = 80
  end
  object cxStyleRepository: TcxStyleRepository
    Left = 208
    Top = 32
    PixelsPerInch = 96
    object cxStyleInactive: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clMaroon
    end
  end
end
