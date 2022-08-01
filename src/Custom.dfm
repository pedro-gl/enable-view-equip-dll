object Empty: TEmpty
  Left = 0
  Top = 0
  BorderIcons = []
  ClientHeight = 0
  ClientWidth = 120
  Color = clBtnFace
  Constraints.MaxHeight = 39
  Constraints.MaxWidth = 136
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Consolas'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 8
    Top = 8
  end
end
