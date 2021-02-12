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
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 301
    Height = 33
    Caption = 'Biblioth'#232'que de chansons'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblArtiste: TLabel
    Left = 550
    Top = 67
    Width = 148
    Height = 13
    Caption = 'Nom de l'#39'artiste ou du groupe :'
    Color = clBtnText
    ParentColor = False
  end
  object Label2: TLabel
    Left = 48
    Top = 139
    Width = 58
    Height = 13
    Caption = 'Recherche :'
  end
  object btnArtiste_select: TButton
    Left = 320
    Top = 134
    Width = 145
    Height = 25
    Caption = 'S'#233'lectionner un artiste'
    TabOrder = 0
    OnClick = btnArtiste_selectClick
  end
  object gridArtiste: TDBGrid
    Left = 8
    Top = 177
    Width = 838
    Height = 313
    DataSource = dtsArtiste
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btnClose: TButton
    Left = 772
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Fermer'
    TabOrder = 2
    OnClick = btnCloseClick
  end
  object edtArtiste: TEdit
    Left = 704
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object btnArtiste_ajout: TButton
    Left = 656
    Top = 91
    Width = 75
    Height = 25
    Caption = 'Ajouter'
    TabOrder = 4
    OnClick = btnArtiste_ajoutClick
  end
  object btnSupprimer: TButton
    Left = 471
    Top = 134
    Width = 75
    Height = 25
    Caption = 'Supprimer'
    TabOrder = 5
    OnClick = btnSupprimerClick
  end
  object edtSearch: TEdit
    Left = 112
    Top = 136
    Width = 160
    Height = 21
    TabOrder = 6
    OnChange = edtSearchChange
  end
  object fdcMusic_library: TFDConnection
    Params.Strings = (
      'User_Name=root'
      'Password=Sema4545'
      'Server=localhost'
      'Database=musiclibrary'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 504
    Top = 24
  end
  object fdqArtiste: TFDQuery
    Connection = fdcMusic_library
    Left = 504
    Top = 40
  end
  object dtsArtiste: TDataSource
    DataSet = fdqArtiste
    Left = 504
    Top = 56
  end
  object fdqArtiste_ajout: TFDQuery
    Connection = fdcMusic_library
    Left = 408
    Top = 48
  end
  object fdqSuppression_artiste: TFDQuery
    Connection = fdcMusic_library
    Left = 408
    Top = 64
  end
end
