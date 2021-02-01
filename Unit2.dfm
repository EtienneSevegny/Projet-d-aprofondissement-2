object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 497
  ClientWidth = 849
  Color = clMenuHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object dbtChanson_selection: TDBText
    Left = 40
    Top = 49
    Width = 369
    Height = 49
    DataField = 'nom'
    DataSource = tdAlbum
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object gridChanson: TDBGrid
    Left = 8
    Top = 184
    Width = 833
    Height = 305
    DataSource = tdChanson
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
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
    Left = 656
    Top = 32
    ParamData = <
      item
        Name = 'intAlbum_id'
        DataType = ftInteger
        ParamType = ptInput
        Value = 0
      end>
  end
  object tdChanson: TDataSource
    DataSet = fdqChanson
    Left = 624
    Top = 96
  end
  object fdqAlbum: TFDQuery
    Connection = fdcChanson
    Left = 512
    Top = 40
  end
  object tdAlbum: TDataSource
    DataSet = fdqAlbum
    Left = 504
    Top = 96
  end
end
