object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 256
  ClientWidth = 461
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
    Left = 218
    Top = 91
    Width = 107
    Height = 13
    Caption = 'Inserir n'#186' entre 1 e 10'
  end
  object RadioButton1: TRadioButton
    Left = 24
    Top = 20
    Width = 113
    Height = 17
    Caption = 'Domingo'
    TabOrder = 0
  end
  object RadioButton2: TRadioButton
    Left = 24
    Top = 48
    Width = 113
    Height = 17
    Caption = 'Segunda'
    TabOrder = 1
  end
  object RadioButton3: TRadioButton
    Left = 24
    Top = 80
    Width = 113
    Height = 17
    Caption = 'Ter'#231'a'
    TabOrder = 2
  end
  object RadioButton4: TRadioButton
    Left = 24
    Top = 112
    Width = 113
    Height = 17
    Caption = 'Quarta'
    TabOrder = 3
  end
  object RadioButton5: TRadioButton
    Left = 24
    Top = 144
    Width = 113
    Height = 17
    Caption = 'Quinta'
    TabOrder = 4
  end
  object RadioButton6: TRadioButton
    Left = 24
    Top = 176
    Width = 113
    Height = 17
    Caption = 'Sexta'
    TabOrder = 5
  end
  object RadioButton7: TRadioButton
    Left = 24
    Top = 208
    Width = 113
    Height = 17
    Caption = 'S'#225'bado'
    TabOrder = 6
  end
  object Button1: TButton
    Left = 240
    Top = 20
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 7
    OnClick = Button1Click
  end
  object SpinEdit1: TSpinEdit
    Left = 218
    Top = 110
    Width = 97
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 8
    Value = 0
  end
  object Button2: TButton
    Left = 232
    Top = 138
    Width = 75
    Height = 25
    Caption = 'Ativar'
    TabOrder = 9
    OnClick = Button2Click
  end
end
