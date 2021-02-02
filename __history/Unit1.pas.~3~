unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, Vcl.StdCtrls, Data.DB,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, Unit2, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TForm1 = class(TForm)
    FDQuery1: TFDQuery;
    FDConnection1: TFDConnection;
    DataSource1: TDataSource;
    Button1: TButton;
    DBGrid1: TDBGrid;
    dbtArtiste_selection: TDBText;
    FDQuery2: TFDQuery;
    DataSource2: TDataSource;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Unit3;

procedure TForm1.Button1Click(Sender: TObject);
Begin
  Form3.intAlbum_id := DBGrid1.Fields[0].AsInteger;
   with TForm2.Create(nil) do
    try
      Form1.hide;
      Form2.ShowModal;
    finally
      Form2.Free;
      Form1.Show;
    end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FDQuery1.SQL.Clear;
  FDQuery1.SQL.Add('select id, nom as Nom, annee from album where artiste_id = '+ Form3.intArtiste_id.ToString);
  FDQuery1.Active := True;
  FDQuery2.SQL.Clear;
  FDQuery2.SQL.Add('select nom from artiste where id = '+Form3.intArtiste_id.ToString);
  FDQuery2.Active := True;
  DBGrid1.Columns[0].Visible := False;
  DBGrid1.Columns[1].Width := 700;
  DBGrid1.Columns[2].Width := 100;
end;

end.
