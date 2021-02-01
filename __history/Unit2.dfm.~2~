object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 498
  ClientWidth = 849
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
  object dbtChanson_selection: TDBText
    Left = 56
    Top = 40
    Width = 153
    Height = 17
  end
  object gridChanson: TDBGrid
    Left = 8
    Top = 160
    Width = 841
    Height = 337
    DataSource = tdChanson
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnColEnter = gridChansonColEnter
  end
  object fdcChanson: TFDConnection
    Params.Strings = (
      'User_Name=root'
      'Password=Sema4545'
      'Database=musiclibrary'
      'Server=localhost'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 728
    Top = 80
  end
  object fdqChanson: TFDQuery
    Connection = fdcChanson
    SQL.Strings = (
      '')
    Left = 720
    Top = 24
  end
  object tdChanson: TDataSource
    DataSet = fdqChanson
    Left = 600
    Top = 72
  end
end
