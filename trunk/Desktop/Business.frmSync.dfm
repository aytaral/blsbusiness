object frmDataSync: TfrmDataSync
  Left = 0
  Top = 0
  Caption = 'Synkronisering Generelle data'
  ClientHeight = 499
  ClientWidth = 688
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 384
    Top = 384
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 32
    Top = 32
    Width = 553
    Height = 313
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
  end
  object FDQuery1: TFDQuery
    Left = 312
    Top = 360
  end
end
