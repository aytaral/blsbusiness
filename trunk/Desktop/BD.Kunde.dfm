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
      DataField = 'REGDATO'
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
      DataField = 'ENDRETDATO'
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
      ActivePage = tsKunde
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
            DataField = 'NAVN'
            DataSource = dsKunde
            TabOrder = 0
          end
          object DBEdit10: TDBEdit
            Left = 14
            Top = 85
            Width = 349
            Height = 21
            DataField = 'POSTADR1'
            DataSource = dsKunde
            TabOrder = 2
          end
          object DBEdit11: TDBEdit
            Left = 14
            Top = 133
            Width = 117
            Height = 21
            DataField = 'POSTNR'
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
            DataField = 'POSTSTED'
            DataSource = dsKunde
            ReadOnly = True
            TabOrder = 5
          end
          object DBEdit13: TDBEdit
            Left = 14
            Top = 109
            Width = 349
            Height = 21
            DataField = 'POSTADR2'
            DataSource = dsKunde
            TabOrder = 3
          end
          object DBEdit14: TDBEdit
            Left = 14
            Top = 182
            Width = 349
            Height = 21
            DataField = 'BESOKADR1'
            DataSource = dsKunde
            TabOrder = 7
          end
          object DBEdit15: TDBEdit
            Left = 14
            Top = 206
            Width = 349
            Height = 21
            DataField = 'BESOKADR2'
            DataSource = dsKunde
            TabOrder = 8
          end
          object DBEdit16: TDBEdit
            Left = 14
            Top = 230
            Width = 117
            Height = 21
            DataField = 'BESOKPOSTNR'
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
            DataField = 'BESOKPSTED'
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
            DataField = 'KONTAKTNR'
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
            DataField = 'WEB'
            DataSource = dsKunde
            TabOrder = 0
          end
          object DBEdit4: TDBEdit
            Left = 14
            Top = 76
            Width = 349
            Height = 21
            DataField = 'EPOST'
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
            DataField = 'TELEFON'
            DataSource = dsKunde
            TabOrder = 0
          end
          object DBEdit6: TDBEdit
            Left = 14
            Top = 116
            Width = 149
            Height = 21
            DataField = 'FAKS'
            DataSource = dsKunde
            TabOrder = 2
          end
          object DBEdit7: TDBEdit
            Left = 14
            Top = 76
            Width = 149
            Height = 21
            DataField = 'MOBIL'
            DataSource = dsKunde
            TabOrder = 1
          end
          object DBEdit8: TDBEdit
            Left = 14
            Top = 156
            Width = 149
            Height = 21
            DataField = 'KONTAKT'
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
            DataField = 'ORGNR'
            DataSource = dsKunde
            TabOrder = 0
            OnChange = dbeOrgnrChange
          end
          object DBLookupComboBox3: TDBLookupComboBox
            Left = 14
            Top = 76
            Width = 149
            Height = 21
            DataField = 'LAND'
            DataSource = dsKunde
            KeyField = 'LAND'
            ListField = 'LAND'
            ListSource = dsLand
            TabOrder = 1
          end
          object DBCheckBox1: TDBCheckBox
            Left = 14
            Top = 183
            Width = 53
            Height = 17
            Caption = 'Aktiv'
            DataField = 'AKTIV'
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
            DataField = 'INFO'
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
            DataField = 'FORFALLSDAGER'
            DataSource = dsKunde
            TabOrder = 0
          end
          object DBEdit19: TDBEdit
            Left = 96
            Top = 36
            Width = 101
            Height = 21
            DataField = 'KREDITT'
            DataSource = dsKunde
            TabOrder = 1
          end
          object DBEdit20: TDBEdit
            Left = 211
            Top = 36
            Width = 73
            Height = 21
            DataField = 'RABATT'
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
                Alignment = taLeftJustify
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
                Width = 185
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
            DataField = 'BANKKONTO'
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
            DataField = 'IDUTSENDELSE'
            DataSource = dsKunde
            KeyField = 'IDUTSENDELSE'
            ListField = 'UTSENDELSE'
            NullValueKey = 46
            TabOrder = 0
          end
        end
      end
      object tsKontakt: TTabSheet
        Caption = 'Kontakter'
        ImageIndex = -1
        DesignSize = (
          593
          469)
        object GroupBox11: TGroupBox
          Left = 8
          Top = 7
          Width = 574
          Height = 445
          Anchors = [akLeft, akTop, akRight, akBottom]
          Caption = 'Person informasjon:'
          TabOrder = 0
          object JvDBGrid1: TJvDBGrid
            Left = 14
            Top = 24
            Width = 545
            Height = 374
            DataSource = dsPerson
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            AutoSizeColumns = True
            AutoSizeColumnIndex = 4
            SelectColumnsDialogStrings.Caption = 'Select columns'
            SelectColumnsDialogStrings.OK = '&OK'
            SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
            EditControls = <>
            RowsHeight = 17
            TitleRowHeight = 17
            Columns = <
              item
                Expanded = False
                FieldName = 'NAVN'
                Title.Caption = 'Navn'
                Width = 130
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'EPOST'
                Title.Caption = 'E-post'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TELEFON'
                Title.Caption = 'Telefon'
                Width = 65
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MOBIL'
                Title.Caption = 'Mobil'
                Width = 65
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'INFO'
                Title.Caption = 'Informasjon'
                Width = 164
                Visible = True
              end>
          end
        end
      end
    end
  end
  object ActionList: TActionList
    Left = 501
    Top = 11
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
  object adoKunde: TADODataSet
    CommandText = 
      'select * from KONTAKT'#13#10'where IDKLIENT = :IdKlient'#13#10'and KONTAKTNR' +
      ' = :Knr;'
    Parameters = <
      item
        Name = 'IdKlient'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end
      item
        Name = 'Knr'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 10720
      end>
    Left = 292
    Top = 492
    object adoKundeIDKLIENT: TIntegerField
      FieldName = 'IDKLIENT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object adoKundeKONTAKTNR: TIntegerField
      FieldName = 'KONTAKTNR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object adoKundeIDSERIE: TStringField
      FieldName = 'IDSERIE'
      Size = 2
    end
    object adoKundeNAVN: TStringField
      FieldName = 'NAVN'
      Size = 80
    end
    object adoKundePOSTADR1: TStringField
      FieldName = 'POSTADR1'
      Size = 60
    end
    object adoKundePOSTADR2: TStringField
      FieldName = 'POSTADR2'
      Size = 60
    end
    object adoKundePOSTNR: TStringField
      FieldName = 'POSTNR'
      Size = 6
    end
    object adoKundeBESOKADR1: TStringField
      FieldName = 'BESOKADR1'
      Size = 60
    end
    object adoKundeBESOKADR2: TStringField
      FieldName = 'BESOKADR2'
      Size = 60
    end
    object adoKundeBESOKPOSTNR: TStringField
      FieldName = 'BESOKPOSTNR'
      Size = 6
    end
    object adoKundeLAND: TStringField
      FieldName = 'LAND'
      Size = 25
    end
    object adoKundeORGNR: TStringField
      FieldName = 'ORGNR'
      Size = 25
    end
    object adoKundeTELEFON: TStringField
      FieldName = 'TELEFON'
      Size = 14
    end
    object adoKundeFAKS: TStringField
      FieldName = 'FAKS'
      Size = 14
    end
    object adoKundeMOBIL: TStringField
      FieldName = 'MOBIL'
      Size = 14
    end
    object adoKundeEPOST: TStringField
      FieldName = 'EPOST'
      Size = 50
    end
    object adoKundeWEB: TStringField
      FieldName = 'WEB'
      Size = 50
    end
    object adoKundeBANKKONTO: TStringField
      FieldName = 'BANKKONTO'
      Size = 15
    end
    object adoKundeKONTAKT: TStringField
      FieldName = 'KONTAKT'
      Size = 30
    end
    object adoKundeFORFALLSDAGER: TIntegerField
      FieldName = 'FORFALLSDAGER'
    end
    object adoKundeRABATT: TFloatField
      FieldName = 'RABATT'
    end
    object adoKundeINFO: TMemoField
      FieldName = 'INFO'
      BlobType = ftMemo
    end
    object adoKundeIDGRUPPE: TIntegerField
      FieldName = 'IDGRUPPE'
    end
    object adoKundeIDKUNDETYPE: TIntegerField
      FieldName = 'IDKUNDETYPE'
    end
    object adoKundeREGDATO: TDateTimeField
      FieldName = 'REGDATO'
    end
    object adoKundeENDRETDATO: TDateTimeField
      FieldName = 'ENDRETDATO'
    end
    object adoKundeIDUTSENDELSE: TIntegerField
      FieldName = 'IDUTSENDELSE'
    end
    object adoKundeKREDITT: TFloatField
      FieldName = 'KREDITT'
    end
    object adoKundeAKTIV: TSmallintField
      FieldName = 'AKTIV'
    end
  end
  object dspKunde: TDataSetProvider
    DataSet = adoKunde
    UpdateMode = upWhereKeyOnly
    Left = 324
    Top = 492
  end
  object cdsKunde: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspKunde'
    Left = 356
    Top = 492
    object cdsKundeIDKLIENT: TIntegerField
      FieldName = 'IDKLIENT'
    end
    object cdsKundeKONTAKTNR: TIntegerField
      FieldName = 'KONTAKTNR'
    end
    object cdsKundeIDSERIE: TStringField
      FieldName = 'IDSERIE'
      Size = 2
    end
    object cdsKundeNAVN: TStringField
      FieldName = 'NAVN'
      Size = 80
    end
    object cdsKundePOSTADR1: TStringField
      FieldName = 'POSTADR1'
      Size = 60
    end
    object cdsKundePOSTADR2: TStringField
      FieldName = 'POSTADR2'
      Size = 60
    end
    object cdsKundePOSTNR: TStringField
      FieldName = 'POSTNR'
      OnSetText = cdsKundePOSTNRSetText
      Size = 6
    end
    object cdsKundeBESOKADR1: TStringField
      FieldName = 'BESOKADR1'
      Size = 60
    end
    object cdsKundeBESOKADR2: TStringField
      FieldName = 'BESOKADR2'
      Size = 60
    end
    object cdsKundeBESOKPOSTNR: TStringField
      FieldName = 'BESOKPOSTNR'
      OnSetText = cdsKundeBESOKPOSTNRSetText
      Size = 6
    end
    object cdsKundeLAND: TStringField
      FieldName = 'LAND'
      Size = 25
    end
    object cdsKundeORGNR: TStringField
      FieldName = 'ORGNR'
      Size = 25
    end
    object cdsKundeTELEFON: TStringField
      FieldName = 'TELEFON'
      Size = 14
    end
    object cdsKundeFAKS: TStringField
      FieldName = 'FAKS'
      Size = 14
    end
    object cdsKundeMOBIL: TStringField
      FieldName = 'MOBIL'
      Size = 14
    end
    object cdsKundeEPOST: TStringField
      FieldName = 'EPOST'
      Size = 50
    end
    object cdsKundeWEB: TStringField
      FieldName = 'WEB'
      Size = 50
    end
    object cdsKundeBANKKONTO: TStringField
      FieldName = 'BANKKONTO'
      Size = 15
    end
    object cdsKundeKONTAKT: TStringField
      FieldName = 'KONTAKT'
      Size = 30
    end
    object cdsKundeINFO: TMemoField
      FieldName = 'INFO'
      BlobType = ftMemo
    end
    object cdsKundeIDGRUPPE: TIntegerField
      FieldName = 'IDGRUPPE'
    end
    object cdsKundeIDKUNDETYPE: TIntegerField
      FieldName = 'IDKUNDETYPE'
    end
    object cdsKundeREGDATO: TDateTimeField
      FieldName = 'REGDATO'
    end
    object cdsKundeENDRETDATO: TDateTimeField
      FieldName = 'ENDRETDATO'
    end
    object cdsKundePOSTSTED: TStringField
      FieldKind = fkLookup
      FieldName = 'POSTSTED'
      LookupKeyFields = 'POSTNR'
      LookupResultField = 'POSTSTED'
      KeyFields = 'POSTNR'
      Size = 30
      Lookup = True
    end
    object cdsKundeBESOKPSTED: TStringField
      FieldKind = fkLookup
      FieldName = 'BESOKPSTED'
      LookupKeyFields = 'POSTNR'
      LookupResultField = 'POSTSTED'
      KeyFields = 'BESOKPOSTNR'
      Size = 30
      Lookup = True
    end
    object cdsKundeFORFALLSDAGER: TIntegerField
      FieldName = 'FORFALLSDAGER'
    end
    object cdsKundeRABATT: TFloatField
      FieldName = 'RABATT'
    end
    object cdsKundeIDUTSENDELSE: TIntegerField
      FieldName = 'IDUTSENDELSE'
    end
    object cdsKundeKREDITT: TFloatField
      FieldName = 'KREDITT'
      DisplayFormat = '#,##0.00'
    end
    object cdsKundeAKTIV: TSmallintField
      FieldName = 'AKTIV'
    end
  end
  object dsKunde: TDataSource
    DataSet = cdsKunde
    OnDataChange = dsKundeDataChange
    Left = 388
    Top = 492
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
    Top = 12
  end
  object adoLand: TADODataSet
    CommandText = 'select LAND from LAND'
    Parameters = <>
    Left = 521
    Top = 156
  end
  object dsLand: TDataSource
    DataSet = adoLand
    Left = 553
    Top = 156
  end
  object adoFordringer: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'select F.FAKTURANR, F.FAKTURADATO, F.FORFALLDATO, K.NAVN,'#13#10'F.SUM' +
      'EKS, F.SUMMVA, F.SUMRAB, F.SUMTOT'#13#10'from FAKTURA F'#13#10'join KONTAKT ' +
      'K on (K.KONTAKTNR = F.KUNDENR and K.IDKLIENT = F.IDKLIENT)'#13#10'wher' +
      'e F.IDKLIENT = :IdKlient'#13#10'and F.KUNDENR = :Kontaktnr'#13#10'and F.IDBE' +
      'TSTATUS > 10'#13#10'order by F.AAR desc, F.FAKTURANR desc, F.IDKLIENT'
    Parameters = <
      item
        Name = 'IdKlient'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end
      item
        Name = 'Kontaktnr'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 56
    Top = 424
    object adoFordringerFAKTURANR: TIntegerField
      FieldName = 'FAKTURANR'
    end
    object adoFordringerFAKTURADATO: TDateField
      FieldName = 'FAKTURADATO'
    end
    object adoFordringerFORFALLDATO: TDateField
      FieldName = 'FORFALLDATO'
    end
    object adoFordringerNAVN: TStringField
      FieldName = 'NAVN'
      Size = 80
    end
    object adoFordringerSUMEKS: TFloatField
      FieldName = 'SUMEKS'
      DisplayFormat = '#,##0.00'
    end
    object adoFordringerSUMMVA: TFloatField
      FieldName = 'SUMMVA'
      DisplayFormat = '#,##0.00'
    end
    object adoFordringerSUMRAB: TFloatField
      FieldName = 'SUMRAB'
      DisplayFormat = '#,##0.00'
    end
    object adoFordringerSUMTOT: TFloatField
      FieldName = 'SUMTOT'
      DisplayFormat = '#,##0.00'
    end
  end
  object dsFordringer: TDataSource
    DataSet = adoFordringer
    Left = 88
    Top = 424
  end
  object adoPerson: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'select * '#13#10'from PERSON'#13#10'where IDKLIENT = :IdKlient'#13#10'and KONTAKTN' +
      'R = :Kontaktnr;'
    Parameters = <
      item
        Name = 'IdKlient'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Kontaktnr'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 56
    Top = 392
    object adoPersonIDPERSON: TIntegerField
      FieldName = 'IDPERSON'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object adoPersonIDKLIENT: TIntegerField
      FieldName = 'IDKLIENT'
    end
    object adoPersonKONTAKTNR: TIntegerField
      FieldName = 'KONTAKTNR'
    end
    object adoPersonNAVN: TStringField
      FieldName = 'NAVN'
      Size = 80
    end
    object adoPersonEPOST: TStringField
      FieldName = 'EPOST'
      Size = 50
    end
    object adoPersonTELEFON: TStringField
      FieldName = 'TELEFON'
      Size = 14
    end
    object adoPersonMOBIL: TStringField
      FieldName = 'MOBIL'
      Size = 14
    end
    object adoPersonINFO: TStringField
      FieldName = 'INFO'
      Size = 100
    end
  end
  object dspPerson: TDataSetProvider
    DataSet = adoPerson
    UpdateMode = upWhereKeyOnly
    Left = 88
    Top = 392
  end
  object cdsPerson: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPerson'
    OnNewRecord = cdsPersonNewRecord
    Left = 120
    Top = 392
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
    Left = 152
    Top = 392
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
    Left = 240
    Top = 488
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
