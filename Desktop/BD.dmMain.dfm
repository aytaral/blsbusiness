object dmMain: TdmMain
  OldCreateOrder = False
  Height = 527
  Width = 843
  object fdKunde: TFDQuery
    BeforeOpen = fdKundeBeforeOpen
    Connection = dmData.FDConn
    SQL.Strings = (
      'select '
      '  * '
      'from '
      '  Kontakt'
      'where '
      '  KlientID = :KlientID'
      '  and SerieID = '#39'KS'#39)
    Left = 40
    Top = 32
    ParamData = <
      item
        Name = 'KLIENTID'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
  end
  object dsKunde: TDataSource
    DataSet = fdKunde
    Left = 40
    Top = 80
  end
end
