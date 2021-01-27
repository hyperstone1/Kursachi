object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #1059#1095#1077#1085#1080#1082#1080
  ClientHeight = 587
  ClientWidth = 783
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 25
    Top = 65
    Width = 78
    Height = 16
    Caption = #1060#1048#1054' '#1091#1095#1077#1085#1080#1082#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 25
    Top = 107
    Width = 53
    Height = 16
    Caption = #1058#1077#1083#1077#1092#1086#1085
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 25
    Top = 22
    Width = 72
    Height = 16
    Caption = #1050#1086#1076' '#1091#1095#1077#1085#1080#1082#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 156
    Top = 21
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 156
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 156
    Top = 106
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Memo1: TMemo
    Left = 72
    Top = 192
    Width = 505
    Height = 253
    ScrollBars = ssVertical
    TabOrder = 3
  end
  object Button1: TButton
    Left = 99
    Top = 153
    Width = 93
    Height = 25
    Caption = #1042#1074#1077#1089#1090#1080' '#1079#1072#1087#1080#1089#1100
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 230
    Top = 153
    Width = 75
    Height = 25
    Caption = #1054#1090#1082#1088#1099#1090#1100
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 342
    Top = 153
    Width = 75
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 6
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 462
    Top = 153
    Width = 75
    Height = 25
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 7
    OnClick = Button4Click
  end
  object RadioGroup1: TRadioGroup
    Left = 352
    Top = 24
    Width = 185
    Height = 105
    Caption = #1057#1086#1088#1090#1080#1088#1086#1074#1072#1090#1100
    ItemIndex = 0
    Items.Strings = (
      #1055#1086' '#1086#1094#1077#1085#1082#1077
      #1055#1086' '#1082#1086#1076#1091' '#1091#1095#1077#1085#1080#1082#1072)
    TabOrder = 8
    OnClick = RadioGroup1Click
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '.dat'
    Filter = #1060#1072#1081#1083' '#1076#1072#1085#1085#1099#1093'|*.dat|'#1042#1089#1077' '#1092#1072#1081#1083#1099'|*.*'
    Left = 560
    Top = 8
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '.txt'
    Filter = #1060#1072#1081#1083' '#1076#1072#1085#1085#1099#1093'|*.dat|'#1042#1089#1077' '#1092#1072#1081#1083#1099'|*.*'
    Left = 613
    Top = 8
  end
end
