object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Sorteador numerico'
  ClientHeight = 273
  ClientWidth = 188
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 11
    Width = 143
    Height = 16
    Caption = 'Quantidades de numeros'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object ListBox1: TListBox
    Left = 16
    Top = 56
    Width = 153
    Height = 209
    ItemHeight = 13
    TabOrder = 0
  end
  object Sortear: TButton
    Left = 94
    Top = 25
    Width = 75
    Height = 25
    Caption = 'Sortear'
    TabOrder = 1
    OnClick = SortearClick
  end
  object SpinEdit1: TSpinEdit
    Left = 16
    Top = 28
    Width = 72
    Height = 22
    MaxValue = 15
    MinValue = 0
    TabOrder = 2
    Value = 0
  end
end
