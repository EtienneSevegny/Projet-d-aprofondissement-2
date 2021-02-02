object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 498
  ClientWidth = 855
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
  object Button1: TButton
    Left = 360
    Top = 136
    Width = 145
    Height = 25
    Caption = 'S'#233'lectionner un artiste'
    TabOrder = 0
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 177
    Width = 838
    Height = 313
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
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
    Left = 632
    Top = 64
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 648
    Top = 120
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 568
    Top = 32
  end
end
