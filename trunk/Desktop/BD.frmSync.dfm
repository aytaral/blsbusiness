object frmDataSync: TfrmDataSync
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Synkroniser Postadresser'
  ClientHeight = 119
  ClientWidth = 361
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 54
    Height = 13
    Caption = 'Operasjon:'
  end
  object lblOperation: TLabel
    Left = 88
    Top = 24
    Width = 56
    Height = 13
    Caption = 'Operation'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnSync: TButton
    Left = 248
    Top = 77
    Width = 89
    Height = 25
    Caption = 'Synkroniser'
    TabOrder = 0
    OnClick = btnSyncClick
  end
  object pbSync: TProgressBar
    Left = 24
    Top = 40
    Width = 313
    Height = 25
    Enabled = False
    Style = pbstMarquee
    State = pbsPaused
    TabOrder = 1
  end
end
