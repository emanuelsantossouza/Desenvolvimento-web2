object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'FrmPrincipal'
  ClientHeight = 682
  ClientWidth = 1237
  Color = 13991979
  Font.Charset = ANSI_CHARSET
  Font.Color = clWhite
  Font.Height = -24
  Font.Name = 'Segoe UI'
  Font.Style = [fsBold]
  OldCreateOrder = False
  WindowState = wsMaximized
  OnShow = FormShow
  DesignSize = (
    1237
    682)
  PixelsPerInch = 96
  TextHeight = 32
  object Label1: TLabel
    Left = 208
    Top = 136
    Width = 67
    Height = 170
    Caption = ':('
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -128
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 216
    Top = 320
    Width = 943
    Height = 98
    AutoSize = False
    Caption = 
      'Ocorreu um problema e seu computador est'#225' sendo completamente re' +
      'staurado. Desta forma estamos neste momento excluindo todos os s' +
      'eus arquivos e, em seguida reiniciaremos para voc'#234'.'
    WordWrap = True
  end
  object LblContador: TLabel
    Left = 216
    Top = 456
    Width = 179
    Height = 32
    Caption = '1% Conclu'#237'do...'
  end
  object BtnCancelar: TSpeedButton
    Left = 1040
    Top = 608
    Width = 189
    Height = 66
    Anchors = [akRight, akBottom]
    Caption = 'CANCELAR'
    Flat = True
    OnMouseMove = BtnCancelarMouseMove
  end
  object BtnFechar: TSpeedButton
    Left = 0
    Top = 660
    Width = 23
    Height = 22
    Anchors = [akLeft, akBottom]
    Flat = True
    OnClick = BtnFecharClick
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 500
    Left = 96
    Top = 72
  end
end
