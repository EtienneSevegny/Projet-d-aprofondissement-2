unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Unit1,Unit2,Vcl.StdCtrls,FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.DBCGrids, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids;

type
  TForm3 = class(TForm)
    Button1: TButton;
    FDConnection1: TFDConnection;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
    var intArtiste_id:Integer;
    var intAlbum_id:Integer;
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
  intArtiste_id := DBGrid1.Fields[0].AsInteger;
   with TForm1.Create(nil) do
    try
      Form3.hide;
      Form1.ShowModal;
    finally
      Form1.Free;
      Form3.Show;
    end;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
  intArtiste_id :=1;
  intAlbum_id:=1;
  FDQuery1.SQL.Clear;
  FDQuery1.SQL.Add('SELECT * from artiste');
  FDQuery1.Active := True;
  with TForm1.Create(nil) do
    try
      Form3.hide;
      Form1.Show;
    finally
      Form1.Free;
      Form3.Show;
    end;
end;

end.
