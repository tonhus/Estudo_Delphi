object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 312
  ClientWidth = 219
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
    Left = 24
    Top = 7
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object Label2: TLabel
    Left = 24
    Top = 58
    Width = 58
    Height = 13
    Caption = 'Sobrenome:'
  end
  object Label3: TLabel
    Left = 24
    Top = 112
    Width = 32
    Height = 13
    Caption = 'Idade:'
  end
  object Edit1: TEdit
    Left = 24
    Top = 26
    Width = 179
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 24
    Top = 77
    Width = 179
    Height = 21
    TabOrder = 1
  end
  object SpinEdit1: TSpinEdit
    Left = 24
    Top = 131
    Width = 73
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 2
    Value = 0
  end
  object Button1: TButton
    Left = 128
    Top = 129
    Width = 75
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 3
    OnClick = Button1Click
  end
  object ListBox1: TListBox
    Left = 8
    Top = 176
    Width = 203
    Height = 128
    ItemHeight = 13
    TabOrder = 4
  end
end
