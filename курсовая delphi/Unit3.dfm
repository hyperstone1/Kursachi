object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 421
  ClientWidth = 769
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
    Left = 49
    Top = 142
    Width = 121
    Height = 16
    Caption = #1060#1048#1054' '#1087#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1103
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 49
    Top = 64
    Width = 115
    Height = 16
    Caption = #1050#1086#1076' '#1087#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1103
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 49
    Top = 102
    Width = 108
    Height = 16
    Caption = #1050#1086#1076' '#1092#1072#1082#1091#1083#1100#1090#1072#1090#1080#1074#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 49
    Top = 185
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
  object Label5: TLabel
    Left = 49
    Top = 27
    Width = 97
    Height = 16
    Caption = #1050#1086#1076' '#1073#1091#1093#1075#1072#1083#1090#1077#1088#1080#1080
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 183
    Top = 63
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 183
    Top = 101
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 183
    Top = 141
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 183
    Top = 184
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Memo1: TMemo
    Left = 56
    Top = 211
    Width = 394
    Height = 169
    TabOrder = 4
  end
  object Button1: TButton
    Left = 456
    Top = 222
    Width = 97
    Height = 25
    Caption = #1042#1074#1077#1089#1090#1080' '#1079#1072#1087#1080#1089#1100
    TabOrder = 5
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 456
    Top = 265
    Width = 97
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 6
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 456
    Top = 312
    Width = 97
    Height = 25
    Caption = #1054#1090#1082#1088#1099#1090#1100
    TabOrder = 7
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 456
    Top = 355
    Width = 97
    Height = 25
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 8
    OnClick = Button4Click
  end
  object RadioGroup1: TRadioGroup
    Left = 368
    Top = 17
    Width = 185
    Height = 105
    Caption = #1057#1086#1088#1090#1080#1088#1086#1074#1072#1090#1100
    Items.Strings = (
      #1055#1086' '#1060#1048#1054' '#1087#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1103
      #1055#1086' '#1082#1086#1076#1091' '#1092#1072#1082#1091#1083#1100#1090#1072#1090#1080#1074#1072)
    TabOrder = 9
    OnClick = RadioGroup1Click
  end
  object Edit5: TEdit
    Left = 183
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 10
  end
  object OpenDialog1: TOpenDialog
    Left = 712
    Top = 8
  end
  object SaveDialog1: TSaveDialog
    Left = 648
    Top = 8
  end
end
