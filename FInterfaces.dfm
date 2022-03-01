object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Principal'
  ClientHeight = 242
  ClientWidth = 472
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object EdtNome: TEdit
    Left = 96
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object EdtSobreNome: TEdit
    Left = 96
    Top = 91
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object BtnPrincipal: TButton
    Left = 96
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Resultado'
    TabOrder = 2
    OnClick = BtnPrincipalClick
  end
  object Memo1: TMemo
    Left = 279
    Top = 56
    Width = 185
    Height = 89
    Lines.Strings = (
      '')
    TabOrder = 3
  end
end
