object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 498
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
  object dbtArtiste_selection: TDBText
    Left = 40
    Top = 49
    Width = 369
    Height = 49
    DataField = 'nom'
    DataSource = DataSource2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 360
    Top = 136
    Width = 137
    Height = 25
    Caption = 'S'#233'lectionner un album'
    TabOrder = 0
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 184
    Width = 833
    Height = 306
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 664
    Top = 48
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'User_Name=root'
      'Password=Sema4545'
      'Server=localhost'
      'Database=musiclibrary'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 568
    Top = 32
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 576
    Top = 88
  end
  object FDQuery2: TFDQuery
    Connection = FDConnection1
    Left = 752
    Top = 48
  end
  object DataSource2: TDataSource
    DataSet = FDQuery2
    Left = 752
    Top = 112
  end
end
