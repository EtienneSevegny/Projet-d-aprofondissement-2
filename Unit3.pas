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
    Label1: TLabel;
    btnClose: TButton;
    edtArtiste: TEdit;
    lblArtiste: TLabel;
    btnArtiste_ajout: TButton;
    fdqArtiste_ajout: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnArtiste_ajoutClick(Sender: TObject);
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

procedure TForm3.btnArtiste_ajoutClick(Sender: TObject);
var strArtiste_nom: string;
begin
  strArtiste_nom := edtArtiste.Text;
  if (IntToStr(length(strArtiste_nom)).ToInteger >= 2)  then
    begin
      fdqArtiste_ajout.SQL.Clear;
      fdqArtiste_ajout.ExecSQL('INSERT INTO artiste (nom) Values ("' + edtArtiste.Text + '")');
      FDQuery1.SQL.Clear;
      FDQuery1.SQL.Add('SELECT id, nom AS Artiste from artiste order by nom');
      FDQuery1.Active := True;
      DBGrid1.Columns[0].Visible := False;
      Application.MessageBox(PChar(strArtiste_nom+' a été ajouté à la liste.'),PChar('Ajout réussi'),MB_ICONASTERISK);
    end
  else
    Application.MessageBox(PChar('Vous ne pouvez pas ajouter un artiste avec un nom ayant moins de 2 caractères. '),PChar('Erreur'),MB_ICONERROR);
end;

procedure TForm3.btnCloseClick(Sender: TObject);
begin
  Form3.Close;
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
  intArtiste_id := DBGrid1.Fields[0].AsInteger;
   with TForm1.Create(nil) do
    try
      Form3.hide;
      Form1.ShowModal;
    finally
      Form3.Show;
      Form1.Free;
    end;
end;



procedure TForm3.FormCreate(Sender: TObject);
begin
  intArtiste_id :=0;
  intAlbum_id:=0;
  Form3.Caption := 'Bibliothèque';
  FDQuery1.SQL.Clear;
  FDQuery1.SQL.Add('SELECT id, nom AS Artiste from artiste order by nom');
  FDQuery1.Active := True;
  DBGrid1.Columns[0].Visible := False;
end;



end.
