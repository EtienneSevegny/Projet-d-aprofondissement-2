unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.DBCGrids, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    fdcChanson: TFDConnection;
    fdqChanson: TFDQuery;
    tdChanson: TDataSource;
    gridChanson: TDBGrid;
    dbtChanson_selection: TDBText;
    fdqAlbum: TFDQuery;
    tdAlbum: TDataSource;
    btnReturn: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnReturnClick(Sender: TObject);

  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses Unit1, Unit3;


procedure TForm2.btnReturnClick(Sender: TObject);
begin
  Form2.Close;
end;

procedure TForm2.FormCreate(Sender: TObject);
var test: String;
begin
  test := 'select nom as Nom, duree as Dur�e from chanson where album_id = '+Form3.intAlbum_id.ToString;
  fdqChanson.SQL.Clear;
  fdqChanson.SQL.Add(test);
  fdqChanson.Active := True;
  fdqAlbum.SQL.Clear;
  fdqAlbum.SQL.Add('select nom, annee from album where id = '+Form3.intAlbum_id.ToString);
  fdqAlbum.Active := True;
  Form2.Caption := 'Chansons';
  gridChanson.Columns[0].Width := 700;
  gridChanson.Columns[1].Width := 100;
end;
end.
