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
    Left = 24
    Top = 24
    Width = 457
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
  object Label1: TLabel
    Left = 497
    Top = 80
    Width = 97
    Height = 13
    Caption = 'Nom de la chanson :'
  end
  object Label2: TLabel
    Left = 537
    Top = 107
    Width = 105
    Height = 13
    Caption = 'Dur'#233'e de la chanson :'
  end
  object gridChanson: TDBGrid
    Left = 8
    Top = 184
    Width = 833
    Height = 305
    DataSource = tdChanson
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btnReturn: TButton
    Left = 766
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Retour'
    TabOrder = 1
    OnClick = btnReturnClick
  end
  object edtChanson_nom: TEdit
    Left = 600
    Top = 77
    Width = 193
    Height = 21
    TabOrder = 2
  end
  object btnAjout_album: TButton
    Left = 654
    Top = 131
    Width = 88
    Height = 25
    Caption = 'Ajouter'
    TabOrder = 3
    OnClick = btnAjout_albumClick
  end
  object edtMinute: TEdit
    Left = 654
    Top = 104
    Width = 41
    Height = 21
    Alignment = taCenter
    NumbersOnly = True
    TabOrder = 4
    Text = '00'
  end
  object edtSeconde: TEdit
    Left = 701
    Top = 104
    Width = 41
    Height = 21
    Alignment = taCenter
    NumbersOnly = True
    TabOrder = 5
    Text = '00'
  end
  object btnSupprimer: TButton
    Left = 406
    Top = 145
    Width = 75
    Height = 25
    Caption = 'Supprimer'
    TabOrder = 6
    OnClick = btnSupprimerClick
  end
  object fdqChanson: TFDQuery
    Connection = Form3.fdcMusic_library
    SQL.Strings = (
      '')
    Left = 328
    Top = 48
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
    Left = 328
    Top = 64
  end
  object fdqAlbum: TFDQuery
    Connection = Form3.fdcMusic_library
    Left = 472
    Top = 48
  end
  object tdAlbum: TDataSource
    DataSet = fdqAlbum
    Left = 472
    Top = 64
  end
  object fdqChanson_ajout: TFDQuery
    Connection = Form3.fdcMusic_library
    Left = 400
    Top = 48
  end
  object fdqSupression_chanson: TFDQuery
    Connection = Form3.fdcMusic_library
    Left = 400
    Top = 88
  end
end
