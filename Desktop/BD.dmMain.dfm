object dmMain: TdmMain
  OldCreateOrder = False
  Height = 527
  Width = 843
  object fqKunde: TFDQuery
    Active = True
    BeforeOpen = fqKundeBeforeOpen
    Connection = dmData.FDConn
    SQL.Strings = (
      'select * '
      'from Kontakt'
      'where KlientID = :KlientID'
      'and SerieID = '#39'KS'#39)
    Left = 32
    Top = 24
    ParamData = <
      item
        Name = 'KLIENTID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object dsKunde: TDataSource
    DataSet = fqKunde
    Left = 32
    Top = 72
  end
end
