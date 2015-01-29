object dmData: TdmData
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 527
  Width = 933
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
    Left = 64
    Top = 128
  end
  object fdKontakt: TFDQuery
    OnNewRecord = fdKontaktNewRecord
    CachedUpdates = True
    Connection = FDConn
    SQL.Strings = (
      'select *'
      'from Kontakt')
    Left = 192
    Top = 32
    object fdKontaktKlientID: TIntegerField
      FieldName = 'KlientID'
      Origin = 'KlientID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdKontaktKontaktnr: TIntegerField
      FieldName = 'Kontaktnr'
      Origin = 'Kontaktnr'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdKontaktNavn: TStringField
      FieldName = 'Navn'
      Origin = 'Navn'
      Size = 80
    end
    object fdKontaktPostAdr1: TStringField
      FieldName = 'PostAdr1'
      Origin = 'PostAdr1'
      Size = 60
    end
    object fdKontaktPostAdr2: TStringField
      FieldName = 'PostAdr2'
      Origin = 'PostAdr2'
      Size = 60
    end
    object fdKontaktPostnr: TStringField
      FieldName = 'Postnr'
      Origin = 'Postnr'
      Size = 6
    end
    object fdKontaktBesokAdr1: TStringField
      FieldName = 'BesokAdr1'
      Origin = 'BesokAdr1'
      Size = 60
    end
    object fdKontaktBesokAdr2: TStringField
      FieldName = 'BesokAdr2'
      Origin = 'BesokAdr2'
      Size = 60
    end
    object fdKontaktBesokPostnr: TStringField
      FieldName = 'BesokPostnr'
      Origin = 'BesokPostnr'
      Size = 6
    end
    object fdKontaktLandKode: TStringField
      FieldName = 'LandKode'
      Origin = 'LandKode'
      Size = 3
    end
    object fdKontaktOrgnr: TStringField
      FieldName = 'Orgnr'
      Origin = 'Orgnr'
      Size = 25
    end
    object fdKontaktTelefon: TStringField
      FieldName = 'Telefon'
      Origin = 'Telefon'
      Size = 15
    end
    object fdKontaktFaks: TStringField
      FieldName = 'Faks'
      Origin = 'Faks'
      Size = 15
    end
    object fdKontaktMobil: TStringField
      FieldName = 'Mobil'
      Origin = 'Mobil'
      Size = 15
    end
    object fdKontaktEpost: TStringField
      FieldName = 'Epost'
      Origin = 'Epost'
      Size = 80
    end
    object fdKontaktWeb: TStringField
      FieldName = 'Web'
      Origin = 'Web'
      Size = 100
    end
    object fdKontaktBankkonto: TStringField
      FieldName = 'Bankkonto'
      Origin = 'Bankkonto'
      Size = 15
    end
    object fdKontaktKontakt: TStringField
      FieldName = 'Kontakt'
      Origin = 'Kontakt'
      Size = 30
    end
    object fdKontaktForfallsdager: TSmallintField
      FieldName = 'Forfallsdager'
      Origin = 'Forfallsdager'
    end
    object fdKontaktKreditt: TIntegerField
      FieldName = 'Kreditt'
      Origin = 'Kreditt'
    end
    object fdKontaktRabatt: TBCDField
      FieldName = 'Rabatt'
      Origin = 'Rabatt'
      Precision = 18
      Size = 2
    end
    object fdKontaktInfo: TMemoField
      FieldName = 'Info'
      Origin = 'Info'
      BlobType = ftMemo
      Size = 2147483647
    end
    object fdKontaktSerieID: TStringField
      FieldName = 'SerieID'
      Origin = 'SerieID'
      Required = True
      Size = 2
    end
    object fdKontaktKontaktTypeID: TSmallintField
      FieldName = 'KontaktTypeID'
      Origin = 'KontaktTypeID'
    end
    object fdKontaktSektorKode: TSmallintField
      FieldName = 'SektorKode'
      Origin = 'SektorKode'
    end
    object fdKontaktBransjeKode: TStringField
      FieldName = 'BransjeKode'
      Origin = 'BransjeKode'
      Size = 10
    end
    object fdKontaktRegDato: TSQLTimeStampField
      FieldName = 'RegDato'
      Origin = 'RegDato'
    end
    object fdKontaktEndretDato: TSQLTimeStampField
      FieldName = 'EndretDato'
      Origin = 'EndretDato'
    end
    object fdKontaktAktiv: TSmallintField
      FieldName = 'Aktiv'
      Origin = 'Aktiv'
    end
    object fdKontaktBrukerID: TStringField
      FieldName = 'BrukerID'
      Origin = 'BrukerID'
      Size = 30
    end
  end
  object dsKontakt: TDataSource
    DataSet = fdKontakt
    Left = 192
    Top = 80
  end
  object fdFylke: TFDQuery
    CachedUpdates = True
    IndexFieldNames = 'Fylkenr'
    Connection = FDConn
    SQL.Strings = (
      'select * '
      'from Fylke')
    Left = 616
    Top = 32
  end
  object fdKommune: TFDQuery
    CachedUpdates = True
    IndexFieldNames = 'Kommunenr'
    Connection = FDConn
    SQL.Strings = (
      'select *'
      'from Kommune')
    Left = 616
    Top = 80
  end
  object fdPostnr: TFDQuery
    CachedUpdates = True
    Connection = FDConn
    SQL.Strings = (
      'select *'
      'from Postnr')
    Left = 616
    Top = 128
  end
end
