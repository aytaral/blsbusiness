object frmKunde: TfrmKunde
  Left = 369
  Top = 189
  BorderStyle = bsDialog
  Caption = 'Registrering kunde'
  ClientHeight = 539
  ClientWidth = 611
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 507
    Width = 611
    Height = 32
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      611
      32)
    object Label15: TLabel
      Left = 8
      Top = 0
      Width = 43
      Height = 11
      Caption = 'Opprettet:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7105644
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 8
      Top = 12
      Width = 47
      Height = 11
      Caption = 'Sist endret:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7105644
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 60
      Top = 0
      Width = 36
      Height = 11
      AutoSize = True
      DataField = 'RegDato'
      DataSource = dsKunde
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7105644
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 60
      Top = 12
      Width = 36
      Height = 11
      AutoSize = True
      DataField = 'EndretDato'
      DataSource = dsKunde
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7105644
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object btnAvbryt: TButton
      Left = 523
      Top = 2
      Width = 83
      Height = 25
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = '&Avbryt'
      ModalResult = 2
      TabOrder = 1
    end
    object btnOK: TButton
      Left = 435
      Top = 2
      Width = 83
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&OK'
      Default = True
      TabOrder = 0
      OnClick = btnOKClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 611
    Height = 507
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 5
    TabOrder = 0
    object Pc: TPageControl
      Left = 5
      Top = 5
      Width = 601
      Height = 497
      ActivePage = tsMerknader
      Align = alClient
      TabOrder = 0
      OnChange = PcChange
      object tsKunde: TTabSheet
        Caption = 'Generelt'
        ImageIndex = -1
        object GroupBox1: TGroupBox
          Left = 8
          Top = 8
          Width = 379
          Height = 268
          Caption = 'Navn && Adresse:'
          TabOrder = 0
          object Label1: TLabel
            Left = 15
            Top = 20
            Width = 29
            Height = 13
            Caption = 'Navn:'
          end
          object Label13: TLabel
            Left = 15
            Top = 69
            Width = 63
            Height = 13
            Caption = 'Postadresse:'
          end
          object Label14: TLabel
            Left = 15
            Top = 166
            Width = 75
            Height = 13
            Caption = 'Bes'#248'ksadresse:'
          end
          object Label2: TLabel
            Left = 291
            Top = 20
            Width = 44
            Height = 13
            Caption = 'Kundenr:'
          end
          object dbeNavn: TDBEdit
            Left = 14
            Top = 36
            Width = 269
            Height = 21
            DataField = 'Navn'
            DataSource = dsKunde
            TabOrder = 0
          end
          object DBEdit10: TDBEdit
            Left = 14
            Top = 85
            Width = 349
            Height = 21
            DataField = 'PostAdr1'
            DataSource = dsKunde
            TabOrder = 2
          end
          object DBEdit11: TDBEdit
            Left = 14
            Top = 133
            Width = 117
            Height = 21
            DataField = 'Postnr'
            DataSource = dsKunde
            TabOrder = 4
          end
          object DBEdit12: TDBEdit
            Left = 134
            Top = 133
            Width = 201
            Height = 21
            TabStop = False
            Color = clBtnFace
            DataSource = dsKunde
            ReadOnly = True
            TabOrder = 5
          end
          object DBEdit13: TDBEdit
            Left = 14
            Top = 109
            Width = 349
            Height = 21
            DataField = 'PostAdr2'
            DataSource = dsKunde
            TabOrder = 3
          end
          object DBEdit14: TDBEdit
            Left = 14
            Top = 182
            Width = 349
            Height = 21
            DataField = 'BesokAdr1'
            DataSource = dsKunde
            TabOrder = 7
          end
          object DBEdit15: TDBEdit
            Left = 14
            Top = 206
            Width = 349
            Height = 21
            DataField = 'BesokAdr2'
            DataSource = dsKunde
            TabOrder = 8
          end
          object DBEdit16: TDBEdit
            Left = 14
            Top = 230
            Width = 117
            Height = 21
            DataField = 'BesokPostnr'
            DataSource = dsKunde
            TabOrder = 9
          end
          object DBEdit17: TDBEdit
            Left = 134
            Top = 230
            Width = 201
            Height = 21
            TabStop = False
            Color = clBtnFace
            DataSource = dsKunde
            ReadOnly = True
            TabOrder = 10
          end
          object btnPostnr: TButton
            Left = 338
            Top = 133
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 6
            OnClick = btnPostnrClick
          end
          object btnBesokPostnr: TButton
            Left = 338
            Top = 230
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 11
            OnClick = btnBesokPostnrClick
          end
          object DBEdit2: TDBEdit
            Left = 290
            Top = 36
            Width = 73
            Height = 21
            TabStop = False
            Color = clBtnFace
            DataField = 'Kontaktnr'
            DataSource = dsKunde
            ReadOnly = True
            TabOrder = 1
          end
        end
        object GroupBox3: TGroupBox
          Left = 8
          Top = 290
          Width = 379
          Height = 131
          Caption = 'Internett:'
          TabOrder = 1
          object Label3: TLabel
            Left = 14
            Top = 20
            Width = 61
            Height = 13
            Caption = 'Hjemmeside:'
          end
          object Label4: TLabel
            Left = 14
            Top = 60
            Width = 35
            Height = 13
            Caption = 'E-post:'
          end
          object DBEdit3: TDBEdit
            Left = 14
            Top = 36
            Width = 349
            Height = 21
            DataField = 'Web'
            DataSource = dsKunde
            TabOrder = 0
          end
          object DBEdit4: TDBEdit
            Left = 14
            Top = 76
            Width = 349
            Height = 21
            DataField = 'Epost'
            DataSource = dsKunde
            TabOrder = 1
          end
        end
        object GroupBox4: TGroupBox
          Left = 404
          Top = 228
          Width = 178
          Height = 193
          Caption = 'Kontaktinfo:'
          TabOrder = 3
          object Label5: TLabel
            Left = 14
            Top = 20
            Width = 40
            Height = 13
            Caption = 'Telefon:'
          end
          object Label6: TLabel
            Left = 14
            Top = 100
            Width = 44
            Height = 13
            Caption = 'Telefaks:'
          end
          object Label7: TLabel
            Left = 14
            Top = 60
            Width = 28
            Height = 13
            Caption = 'Mobil:'
          end
          object Label8: TLabel
            Left = 14
            Top = 140
            Width = 74
            Height = 13
            Caption = 'Kontaktperson:'
          end
          object DBEdit5: TDBEdit
            Left = 14
            Top = 36
            Width = 149
            Height = 21
            DataField = 'Telefon'
            DataSource = dsKunde
            TabOrder = 0
          end
          object DBEdit6: TDBEdit
            Left = 14
            Top = 116
            Width = 149
            Height = 21
            DataField = 'Faks'
            DataSource = dsKunde
            TabOrder = 2
          end
          object DBEdit7: TDBEdit
            Left = 14
            Top = 76
            Width = 149
            Height = 21
            DataField = 'Mobil'
            DataSource = dsKunde
            TabOrder = 1
          end
          object DBEdit8: TDBEdit
            Left = 14
            Top = 156
            Width = 149
            Height = 21
            DataField = 'Kontakt'
            DataSource = dsKunde
            TabOrder = 3
          end
        end
        object GroupBox5: TGroupBox
          Left = 404
          Top = 8
          Width = 178
          Height = 209
          Caption = 'Informasjon:'
          TabOrder = 2
          object Label9: TLabel
            Left = 14
            Top = 140
            Width = 68
            Height = 13
            Caption = 'Kundegruppe:'
          end
          object Label10: TLabel
            Left = 14
            Top = 100
            Width = 56
            Height = 13
            Caption = 'Kundetype:'
          end
          object Label11: TLabel
            Left = 14
            Top = 20
            Width = 82
            Height = 13
            Caption = 'Organisasjonsnr:'
          end
          object Label12: TLabel
            Left = 14
            Top = 60
            Width = 27
            Height = 13
            Caption = 'Land:'
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 14
            Top = 156
            Width = 149
            Height = 21
            DataField = 'IDGRUPPE'
            DataSource = dsKunde
            DropDownAlign = daRight
            KeyField = 'IDGRUPPE'
            ListField = 'GRUPPE'
            ListSource = dsGruppe
            NullValueKey = 46
            TabOrder = 3
          end
          object DBLookupComboBox2: TDBLookupComboBox
            Left = 14
            Top = 116
            Width = 149
            Height = 21
            DataField = 'IDKUNDETYPE'
            DataSource = dsKunde
            DropDownAlign = daRight
            DropDownRows = 5
            KeyField = 'IDKUNDETYPE'
            ListField = 'KUNDETYPE'
            ListSource = dsKundeType
            NullValueKey = 46
            TabOrder = 2
          end
          object dbeOrgnr: TDBEdit
            Left = 14
            Top = 36
            Width = 149
            Height = 21
            DataField = 'Orgnr'
            DataSource = dsKunde
            TabOrder = 0
            OnChange = dbeOrgnrChange
          end
          object DBLookupComboBox3: TDBLookupComboBox
            Left = 14
            Top = 76
            Width = 149
            Height = 21
            DataField = 'LandKode'
            DataSource = dsKunde
            KeyField = 'LandKode'
            ListField = 'Land'
            TabOrder = 1
          end
          object DBCheckBox1: TDBCheckBox
            Left = 14
            Top = 183
            Width = 53
            Height = 17
            Caption = 'Aktiv'
            DataField = 'Aktiv'
            DataSource = dsKunde
            TabOrder = 4
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
        end
      end
      object tsMerknader: TTabSheet
        Caption = '&Merknader'
        DesignSize = (
          593
          469)
        object GroupBox2: TGroupBox
          Left = 8
          Top = 7
          Width = 574
          Height = 448
          Anchors = [akLeft, akTop, akRight, akBottom]
          Caption = 'Kundeinformasjon:'
          TabOrder = 0
          DesignSize = (
            574
            448)
          object DBMemo1: TDBMemo
            Left = 14
            Top = 24
            Width = 546
            Height = 408
            Anchors = [akLeft, akTop, akRight, akBottom]
            DataField = 'Info'
            DataSource = dsKunde
            ScrollBars = ssVertical
            TabOrder = 0
          end
        end
      end
      object tsOkonomi: TTabSheet
        Caption = #216'konomi'
        ImageIndex = -1
        object GroupBox6: TGroupBox
          Left = 8
          Top = 8
          Width = 309
          Height = 73
          Caption = 'Betingelser:'
          TabOrder = 0
          object Label17: TLabel
            Left = 14
            Top = 20
            Width = 67
            Height = 13
            Caption = 'Forfallsdager:'
          end
          object Label18: TLabel
            Left = 96
            Top = 20
            Width = 69
            Height = 13
            Caption = 'Kredittgrense:'
          end
          object Label19: TLabel
            Left = 211
            Top = 20
            Width = 56
            Height = 13
            Caption = 'Rabatt i %:'
          end
          object DBEdit18: TDBEdit
            Left = 14
            Top = 36
            Width = 69
            Height = 21
            DataField = 'Forfallsdager'
            DataSource = dsKunde
            TabOrder = 0
          end
          object DBEdit19: TDBEdit
            Left = 96
            Top = 36
            Width = 101
            Height = 21
            DataField = 'Kreditt'
            DataSource = dsKunde
            TabOrder = 1
          end
          object DBEdit20: TDBEdit
            Left = 211
            Top = 36
            Width = 73
            Height = 21
            DataField = 'Rabatt'
            DataSource = dsKunde
            TabOrder = 2
          end
        end
        object GroupBox8: TGroupBox
          Left = 8
          Top = 169
          Width = 574
          Height = 252
          Caption = 'Utest'#229'ende fordringer:'
          TabOrder = 4
          object dbgFordring: TJvDBGrid
            Left = 14
            Top = 22
            Width = 545
            Height = 217
            DataSource = dsFordringer
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -9
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            AutoAppend = False
            TitleButtons = True
            OnTitleBtnClick = dbgFordringTitleBtnClick
            AutoSizeColumns = True
            AutoSizeColumnIndex = 3
            SelectColumnsDialogStrings.Caption = 'Select columns'
            SelectColumnsDialogStrings.OK = '&OK'
            SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
            CanDelete = False
            EditControls = <>
            RowsHeight = 15
            TitleRowHeight = 15
            Columns = <
              item
                Expanded = False
                FieldName = 'FAKTURANR'
                Title.Caption = 'Fakturanr'
                Width = 52
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FAKTURADATO'
                Title.Caption = 'Fakturadato'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FORFALLDATO'
                Title.Caption = 'Forfallsdato'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NAVN'
                Title.Caption = 'Kundenavn'
                Width = 165
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SUMEKS'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGreen
                Font.Height = -9
                Font.Name = 'Tahoma'
                Font.Style = []
                Title.Caption = 'Sum eks.'
                Width = 55
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SUMMVA'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGreen
                Font.Height = -9
                Font.Name = 'Tahoma'
                Font.Style = []
                Title.Caption = 'Mva.'
                Width = 46
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SUMRAB'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGreen
                Font.Height = -9
                Font.Name = 'Tahoma'
                Font.Style = []
                Title.Caption = 'Rabatt'
                Width = 40
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SUMTOT'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGreen
                Font.Height = -9
                Font.Name = 'Tahoma'
                Font.Style = []
                Title.Caption = 'Totalt'
                Width = 55
                Visible = True
              end>
          end
        end
        object GroupBox7: TGroupBox
          Left = 328
          Top = 8
          Width = 253
          Height = 73
          Caption = 'Kontonummer:'
          TabOrder = 2
          object Label20: TLabel
            Left = 16
            Top = 20
            Width = 201
            Height = 13
            Caption = 'Kontonummer for utbetaling av kreditnota'
          end
          object DBEdit1: TDBEdit
            Left = 16
            Top = 36
            Width = 223
            Height = 21
            DataField = 'Bankkonto'
            DataSource = dsKunde
            TabOrder = 0
          end
        end
        object GroupBox9: TGroupBox
          Left = 8
          Top = 88
          Width = 309
          Height = 73
          Caption = 'Omsetning:'
          TabOrder = 1
        end
        object GroupBox10: TGroupBox
          Left = 328
          Top = 88
          Width = 253
          Height = 73
          Caption = 'Fakturautsendelse:'
          TabOrder = 3
          object Label21: TLabel
            Left = 16
            Top = 20
            Width = 85
            Height = 13
            Caption = 'Send faktura per:'
          end
          object dblUtsendelse: TDBLookupComboBox
            Left = 16
            Top = 36
            Width = 223
            Height = 21
            DataField = 'PrintID'
            DataSource = dsKunde
            KeyField = 'PrintID'
            ListField = 'PrintType'
            ListSource = dmData.dsPrintType
            NullValueKey = 46
            TabOrder = 0
          end
        end
      end
      object tsKontakt: TTabSheet
        BorderWidth = 8
        Caption = 'Kontakter'
        ImageIndex = -1
        object dbgPerson: TcxGrid
          Left = 0
          Top = 0
          Width = 577
          Height = 453
          Align = alClient
          TabOrder = 0
          object tvPerson: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsPerson
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            object tvPersonIDPERSON: TcxGridDBColumn
              DataBinding.FieldName = 'IDPERSON'
              Visible = False
              VisibleForCustomization = False
            end
            object tvPersonIDKLIENT: TcxGridDBColumn
              DataBinding.FieldName = 'IDKLIENT'
              Visible = False
              VisibleForCustomization = False
            end
            object tvPersonKONTAKTNR: TcxGridDBColumn
              DataBinding.FieldName = 'KONTAKTNR'
              Visible = False
              VisibleForCustomization = False
            end
            object tvPersonNAVN: TcxGridDBColumn
              DataBinding.FieldName = 'NAVN'
              Width = 133
            end
            object tvPersonEPOST: TcxGridDBColumn
              DataBinding.FieldName = 'EPOST'
              Width = 120
            end
            object tvPersonTELEFON: TcxGridDBColumn
              DataBinding.FieldName = 'TELEFON'
            end
            object tvPersonMOBIL: TcxGridDBColumn
              DataBinding.FieldName = 'MOBIL'
            end
            object tvPersonINFO: TcxGridDBColumn
              DataBinding.FieldName = 'INFO'
              Width = 49
            end
          end
          object dbgPersonLevel: TcxGridLevel
            GridView = tvPerson
          end
        end
      end
    end
  end
  object ActionList: TActionList
    Left = 493
    Top = 3
    object acFirst: TDataSetFirst
      Category = 'Dataset'
      Caption = 'G'#229' til f'#248'rste kunde'
      Hint = 'G'#229' til f'#248'rste kunde'
      ImageIndex = 0
      DataSource = dmMain.dsKunde
    end
    object acPrior: TDataSetPrior
      Category = 'Dataset'
      Caption = 'G'#229' til forrige kunde'
      Hint = 'G'#229' til forrige kunde'
      ImageIndex = 1
      DataSource = dmMain.dsKunde
    end
    object acNext: TDataSetNext
      Category = 'Dataset'
      Caption = 'G'#229' til neste kunde'
      Hint = 'G'#229' til neste kunde'
      ImageIndex = 2
      DataSource = dmMain.dsKunde
    end
    object acLast: TDataSetLast
      Category = 'Dataset'
      Caption = 'G'#229' til siste kunde'
      Hint = 'G'#229' til siste kunde'
      ImageIndex = 3
      DataSource = dmMain.dsKunde
    end
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = 'Angre endringer'
      Enabled = False
      Hint = 'Angre endringer'
      ImageIndex = 5
      DataSource = dsKunde
    end
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'Lagre endringer'
      Enabled = False
      Hint = 'Lagre endringer'
      ImageIndex = 6
      DataSource = dsKunde
    end
    object acNy: TAction
      Category = 'Dataset'
      Caption = 'Ny'
      Hint = 'Ny kunde'
      ImageIndex = 4
      ShortCut = 16462
      OnExecute = acNyExecute
    end
    object acWebInfo: TAction
      Caption = 'acWebInfo'
      ImageIndex = 7
      OnExecute = acWebInfoExecute
    end
    object acSettings: TAction
      Caption = 'Grupper'
      Hint = 'Endre grupper'
      ImageIndex = 8
      OnExecute = acSettingsExecute
    end
  end
  object dspKunde: TDataSetProvider
    DataSet = fdKunde
    UpdateMode = upWhereKeyOnly
    Left = 280
    Top = 480
  end
  object cdsKunde: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspKunde'
    Left = 312
    Top = 480
    object cdsKundeKlientID: TIntegerField
      FieldName = 'KlientID'
      Required = True
    end
    object cdsKundeKontaktnr: TIntegerField
      FieldName = 'Kontaktnr'
      Required = True
    end
    object cdsKundeNavn: TStringField
      FieldName = 'Navn'
      Size = 80
    end
    object cdsKundePostAdr1: TStringField
      FieldName = 'PostAdr1'
      Size = 60
    end
    object cdsKundePostAdr2: TStringField
      FieldName = 'PostAdr2'
      Size = 60
    end
    object cdsKundePostnr: TStringField
      FieldName = 'Postnr'
      Size = 6
    end
    object cdsKundeBesokAdr1: TStringField
      FieldName = 'BesokAdr1'
      Size = 60
    end
    object cdsKundeBesokAdr2: TStringField
      FieldName = 'BesokAdr2'
      Size = 60
    end
    object cdsKundeBesokPostnr: TStringField
      FieldName = 'BesokPostnr'
      Size = 6
    end
    object cdsKundeLandKode: TStringField
      FieldName = 'LandKode'
      Size = 3
    end
    object cdsKundeOrgnr: TStringField
      FieldName = 'Orgnr'
      Size = 25
    end
    object cdsKundeTelefon: TStringField
      FieldName = 'Telefon'
      Size = 15
    end
    object cdsKundeFaks: TStringField
      FieldName = 'Faks'
      Size = 15
    end
    object cdsKundeMobil: TStringField
      FieldName = 'Mobil'
      Size = 15
    end
    object cdsKundeEpost: TStringField
      FieldName = 'Epost'
      Size = 80
    end
    object cdsKundeWeb: TStringField
      FieldName = 'Web'
      Size = 100
    end
    object cdsKundeBankkonto: TStringField
      FieldName = 'Bankkonto'
      Size = 15
    end
    object cdsKundeKontakt: TStringField
      FieldName = 'Kontakt'
      Size = 30
    end
    object cdsKundeForfallsdager: TSmallintField
      FieldName = 'Forfallsdager'
    end
    object cdsKundeKreditt: TIntegerField
      FieldName = 'Kreditt'
    end
    object cdsKundeRabatt: TBCDField
      FieldName = 'Rabatt'
      Precision = 18
      Size = 2
    end
    object cdsKundeInfo: TMemoField
      FieldName = 'Info'
      BlobType = ftMemo
      Size = 2147483647
    end
    object cdsKundeSerieID: TStringField
      FieldName = 'SerieID'
      Required = True
      Size = 2
    end
    object cdsKundeKontaktTypeID: TSmallintField
      FieldName = 'KontaktTypeID'
    end
    object cdsKundePrintID: TStringField
      FieldName = 'PrintID'
      Size = 5
    end
    object cdsKundeSektorKode: TSmallintField
      FieldName = 'SektorKode'
    end
    object cdsKundeBransjeKode: TStringField
      FieldName = 'BransjeKode'
      Size = 10
    end
    object cdsKundeRegDato: TSQLTimeStampField
      FieldName = 'RegDato'
    end
    object cdsKundeEndretDato: TSQLTimeStampField
      FieldName = 'EndretDato'
    end
    object cdsKundeAktiv: TSmallintField
      FieldName = 'Aktiv'
    end
    object cdsKundeBrukerID: TStringField
      FieldName = 'BrukerID'
      Size = 30
    end
  end
  object dsKunde: TDataSource
    DataSet = cdsKunde
    OnDataChange = dsKundeDataChange
    Left = 344
    Top = 480
  end
  object adoGruppe: TADODataSet
    CommandText = 
      'select IDGRUPPE, GRUPPE'#13#10'from GRUPPE'#13#10'where IDSERIE = '#39'KS'#39' '#13#10'and' +
      ' IDKLIENT = :IdKlient'#13#10'order by GRUPPE;'
    Parameters = <
      item
        Name = 'IdKlient'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 520
    Top = 232
  end
  object dsGruppe: TDataSource
    DataSet = adoGruppe
    Left = 552
    Top = 232
  end
  object adoKundeType: TADODataSet
    CommandText = 'select * from KUNDETYPE'#13#10'order by KUNDETYPE'
    Parameters = <>
    Left = 520
    Top = 200
  end
  object dsKundeType: TDataSource
    DataSet = adoKundeType
    Left = 552
    Top = 200
  end
  object dsMasterKunde: TDataSource
    OnDataChange = dsMasterKundeDataChange
    Left = 556
    Top = 4
  end
  object dsFordringer: TDataSource
    DataSet = fdFordringer
    Left = 160
    Top = 480
  end
  object dspPerson: TDataSetProvider
    DataSet = fdPerson
    UpdateMode = upWhereKeyOnly
    Left = 288
    Top = 8
  end
  object cdsPerson: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPerson'
    OnNewRecord = cdsPersonNewRecord
    Left = 320
    Top = 8
    object cdsPersonIDPERSON: TIntegerField
      FieldName = 'IDPERSON'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsPersonIDKLIENT: TIntegerField
      FieldName = 'IDKLIENT'
    end
    object cdsPersonKONTAKTNR: TIntegerField
      FieldName = 'KONTAKTNR'
    end
    object cdsPersonNAVN: TStringField
      FieldName = 'NAVN'
      Size = 80
    end
    object cdsPersonEPOST: TStringField
      FieldName = 'EPOST'
      Size = 50
    end
    object cdsPersonTELEFON: TStringField
      FieldName = 'TELEFON'
      Size = 14
    end
    object cdsPersonMOBIL: TStringField
      FieldName = 'MOBIL'
      Size = 14
    end
    object cdsPersonINFO: TStringField
      FieldName = 'INFO'
      Size = 100
    end
  end
  object dsPerson: TDataSource
    DataSet = cdsPerson
    Left = 352
    Top = 8
  end
  object fdKunde: TFDQuery
    Connection = dmData.FDConn
    SQL.Strings = (
      'select '
      '  *'
      'from '
      '  Kontakt'
      'where '
      '  KlientID = :KlientID'
      '  and Kontaktnr = :Kontaktnr'
      '  and SerieID = '#39'KS'#39)
    Left = 248
    Top = 480
    ParamData = <
      item
        Name = 'KLIENTID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'KONTAKTNR'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object fdKundeKlientID: TIntegerField
      FieldName = 'KlientID'
      Origin = 'KlientID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdKundeKontaktnr: TIntegerField
      FieldName = 'Kontaktnr'
      Origin = 'Kontaktnr'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdKundeNavn: TStringField
      FieldName = 'Navn'
      Origin = 'Navn'
      Size = 80
    end
    object fdKundePostAdr1: TStringField
      FieldName = 'PostAdr1'
      Origin = 'PostAdr1'
      Size = 60
    end
    object fdKundePostAdr2: TStringField
      FieldName = 'PostAdr2'
      Origin = 'PostAdr2'
      Size = 60
    end
    object fdKundePostnr: TStringField
      FieldName = 'Postnr'
      Origin = 'Postnr'
      Size = 6
    end
    object fdKundeBesokAdr1: TStringField
      FieldName = 'BesokAdr1'
      Origin = 'BesokAdr1'
      Size = 60
    end
    object fdKundeBesokAdr2: TStringField
      FieldName = 'BesokAdr2'
      Origin = 'BesokAdr2'
      Size = 60
    end
    object fdKundeBesokPostnr: TStringField
      FieldName = 'BesokPostnr'
      Origin = 'BesokPostnr'
      Size = 6
    end
    object fdKundeLandKode: TStringField
      FieldName = 'LandKode'
      Origin = 'LandKode'
      Size = 3
    end
    object fdKundeOrgnr: TStringField
      FieldName = 'Orgnr'
      Origin = 'Orgnr'
      Size = 25
    end
    object fdKundeTelefon: TStringField
      FieldName = 'Telefon'
      Origin = 'Telefon'
      Size = 15
    end
    object fdKundeFaks: TStringField
      FieldName = 'Faks'
      Origin = 'Faks'
      Size = 15
    end
    object fdKundeMobil: TStringField
      FieldName = 'Mobil'
      Origin = 'Mobil'
      Size = 15
    end
    object fdKundeEpost: TStringField
      FieldName = 'Epost'
      Origin = 'Epost'
      Size = 80
    end
    object fdKundeWeb: TStringField
      FieldName = 'Web'
      Origin = 'Web'
      Size = 100
    end
    object fdKundeBankkonto: TStringField
      FieldName = 'Bankkonto'
      Origin = 'Bankkonto'
      Size = 15
    end
    object fdKundeKontakt: TStringField
      FieldName = 'Kontakt'
      Origin = 'Kontakt'
      Size = 30
    end
    object fdKundeForfallsdager: TSmallintField
      FieldName = 'Forfallsdager'
      Origin = 'Forfallsdager'
    end
    object fdKundeKreditt: TIntegerField
      FieldName = 'Kreditt'
      Origin = 'Kreditt'
    end
    object fdKundeRabatt: TBCDField
      FieldName = 'Rabatt'
      Origin = 'Rabatt'
      Precision = 18
      Size = 2
    end
    object fdKundeInfo: TMemoField
      FieldName = 'Info'
      Origin = 'Info'
      BlobType = ftMemo
      Size = 2147483647
    end
    object fdKundeSerieID: TStringField
      FieldName = 'SerieID'
      Origin = 'SerieID'
      Required = True
      Size = 2
    end
    object fdKundeKontaktTypeID: TSmallintField
      FieldName = 'KontaktTypeID'
      Origin = 'KontaktTypeID'
    end
    object fdKundePrintID: TStringField
      FieldName = 'PrintID'
      Origin = 'PrintID'
      Size = 5
    end
    object fdKundeSektorKode: TSmallintField
      FieldName = 'SektorKode'
      Origin = 'SektorKode'
    end
    object fdKundeBransjeKode: TStringField
      FieldName = 'BransjeKode'
      Origin = 'BransjeKode'
      Size = 10
    end
    object fdKundeRegDato: TSQLTimeStampField
      FieldName = 'RegDato'
      Origin = 'RegDato'
    end
    object fdKundeEndretDato: TSQLTimeStampField
      FieldName = 'EndretDato'
      Origin = 'EndretDato'
    end
    object fdKundeAktiv: TSmallintField
      FieldName = 'Aktiv'
      Origin = 'Aktiv'
    end
    object fdKundeBrukerID: TStringField
      FieldName = 'BrukerID'
      Origin = 'BrukerID'
      Size = 30
    end
  end
  object fdFordringer: TFDQuery
    Connection = dmData.FDConn
    SQL.Strings = (
      'select '
      '  F.Fakturanr, F.Fakturadato, F.Forfallsdato, K.Navn,'
      '  F.SumEks, F.SumMva, F.SumRab, F.SumTot'
      'from '
      '  Faktura F'
      
        '  join Kontakt K on (K.Kontaktnr = F.Kontaktnr and K.KlientID = ' +
        'F.KlientID)'
      'where '
      '  F.KlientID = :KlientID'
      '  and F.Kontaktnr = :Kontaktnr'
      '  and F.FakturaStatusID > 10'
      'order by '
      '  F.KlientID, F.Fakturanr desc')
    Left = 128
    Top = 480
    ParamData = <
      item
        Name = 'KLIENTID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'KONTAKTNR'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object fdPerson: TFDQuery
    Connection = dmData.FDConn
    SQL.Strings = (
      'select '
      '  * '
      'from '
      '  KontaktPerson'
      'where '
      '  KlientID = :KlientID'
      '  and Kontaktnr = :Kontaktnr;')
    Left = 256
    Top = 8
    ParamData = <
      item
        Name = 'KLIENTID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'KONTAKTNR'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
end
