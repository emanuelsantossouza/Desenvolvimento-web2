object FrmTabuada: TFrmTabuada
  Left = 0
  Top = 0
  Caption = 'Tabuada'
  ClientHeight = 486
  ClientWidth = 403
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 19
  object Label1: TLabel
    Left = 16
    Top = 22
    Width = 151
    Height = 19
    Caption = 'Informe um n'#250'mero:'
  end
  object Edit1: TEdit
    Left = 180
    Top = 19
    Width = 89
    Height = 27
    NumbersOnly = True
    TabOrder = 0
  end
  object Memo1: TMemo
    Left = 16
    Top = 64
    Width = 169
    Height = 345
    ReadOnly = True
    TabOrder = 1
  end
  object ListBox1: TListBox
    Left = 216
    Top = 64
    Width = 169
    Height = 345
    ItemHeight = 19
    TabOrder = 2
  end
  object Button1: TButton
    Left = 16
    Top = 424
    Width = 169
    Height = 43
    Caption = 'For - Para'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 216
    Top = 424
    Width = 169
    Height = 43
    Caption = 'While - Enquanto'
    TabOrder = 4
    OnClick = Button2Click
  end
end
