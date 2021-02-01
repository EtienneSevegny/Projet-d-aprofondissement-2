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
    procedure FormCreate(Sender: TObject);
    procedure gridChansonColEnter(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.gridChansonColEnter(Sender: TObject);
begin
  dbtChanson_selection.Caption := gridChanson.SelectedIndex.ToString;
end;

procedure TForm2.FormCreate(Sender: TObject);
var intAlbum_id:Integer;
begin
  intAlbum_id := 0;
  fdqChanson.SQL.Clear;
  fdqChanson.SQL.Add('select nom as Nom, duree as Durée from chanson where album_id = ');
  fdqChanson.Active := True;
  Form2.Caption := 'Chansons';
  gridChanson.Columns[0].Width := 700;
  gridChanson.Columns[1].Width := 100;
  dbtChanson_selection.Caption := gridChanson.SelectedIndex.ToString;
end;
end.
