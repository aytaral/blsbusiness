object dmData: TdmData
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 269
  Width = 712
  object FDConn: TFDConnection
    ConnectionName = 'BlsDB'
    Params.Strings = (
      'Database=Business'
      'User_Name=tmpuser'
      'Password=abc123'
      'Server=ds.labit.no,443'
      'DriverID=MSSQL')
    ConnectedStoredUsage = [auDesignTime]
    Connected = True
    LoginPrompt = False
    BeforeConnect = FDConnBeforeConnect
    Left = 64
    Top = 24
  end
  object FDCmd: TFDCommand
    Connection = FDConn
    Left = 64
    Top = 184
  end
  object FDPhysMSSQLDriverLink: TFDPhysMSSQLDriverLink
    Left = 64
    Top = 80
  end
  object FDGUIxWaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    ScreenCursor = gcrHourGlass
    Left = 64
    Top = 128
  end
  object fdFylke: TFDQuery
    CachedUpdates = True
    IndexFieldNames = 'Fylkenr'
    Connection = FDConn
    SQL.Strings = (
      'select '
      '  * '
      'from '
      '  Fylke')
    Left = 616
    Top = 32
  end
  object fdKommune: TFDQuery
    CachedUpdates = True
    IndexFieldNames = 'Kommunenr'
    Connection = FDConn
    SQL.Strings = (
      'select '
      '  *'
      'from '
      '  Kommune')
    Left = 616
    Top = 80
  end
  object fdPostnr: TFDQuery
    CachedUpdates = True
    Connection = FDConn
    SQL.Strings = (
      'select '
      '  *'
      'from '
      '  Postnr'
      'order by '
      '  Postnr')
    Left = 544
    Top = 32
  end
  object fdPrintType: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select '
      '  *'
      ''
      'from '
      '  PrintType'
      ''
      'order by'
      '  PrintID')
    Left = 432
    Top = 32
  end
  object dsPrintType: TDataSource
    DataSet = fdPrintType
    Left = 432
    Top = 80
  end
  object fdLand: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select'
      '  *'
      'from '
      '  Land'
      'order by '
      '  Land')
    Left = 488
    Top = 32
  end
  object dsLand: TDataSource
    DataSet = fdLand
    Left = 488
    Top = 80
  end
  object dsPostnr: TDataSource
    DataSet = fdPostnr
    Left = 544
    Top = 80
  end
end
