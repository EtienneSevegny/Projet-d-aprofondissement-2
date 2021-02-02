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
  Vcl.ExtCtrls, Vcl.DBCtrls, DateUtils;

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
    btnReturn: TButton;
    edtAlbum_nom: TEdit;
    edtAnnee: TEdit;
    btnAjout_album: TButton;
    Label1: TLabel;
    Label2: TLabel;
    fdqAlbum_ajout: TFDQuery;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnReturnClick(Sender: TObject);
    procedure btnAjout_albumClick(Sender: TObject);
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

procedure TForm1.btnAjout_albumClick(Sender: TObject);
  var strAlbum_nom: string;
  var intAnnee: Integer;
begin
  strAlbum_nom := edtAlbum_nom.Text;
  intAnnee := StrToInt(edtAnnee.Text);;
  if (IntToStr(length(strAlbum_nom)).ToInteger >= 2)  then
    begin
    if ((intAnnee >=1500) or (intAnnee < YearOf(Now)))then
      begin
        fdqAlbum_ajout.SQL.Clear;
        fdqAlbum_ajout.ExecSQL('INSERT INTO album (nom, annee, artiste_id) Values("'+strAlbum_nom+'",'+intAnnee.ToString+','+Form3.intArtiste_id.ToString+')');
        FDQuery1.SQL.Clear;
        FDQuery1.SQL.Add('select id, nom as Nom, annee as "Année de sortie" from album where artiste_id = '+ Form3.intArtiste_id.ToString);
        FDQuery1.Active := True;
        DBGrid1.Columns[0].Visible := False;
        DBGrid1.Columns[1].Width := 700;
        DBGrid1.Columns[2].Width := 100;
        Application.MessageBox(PChar(strAlbum_nom+' a été ajouté à la liste.'),PChar('Ajout réussi'),MB_ICONASTERISK);
      end
    else
      Application.MessageBox(PChar('Vous ne pouvez pas ajouter un album qui est sorti avant l500 et après '+ YearOf(Now).ToString+'.'),PChar('Erreur'),MB_ICONERROR);
    end
  else
    Application.MessageBox(PChar('Vous ne pouvez pas ajouter un album avec un nom ayant moins de 2 caractères. '),PChar('Erreur'),MB_ICONERROR);
end;

procedure TForm1.btnReturnClick(Sender: TObject);
begin
  Form1.Close;
end;

procedure TForm1.Button1Click(Sender: TObject);
Begin
  IF(DBGrid1.Fields[0].AsInteger = 0)then
    begin
      Application.MessageBox(PChar('Vous ne pouvez pas sélectionner une ligne vide.'),PChar('Erreur'),MB_ICONERROR)
    end
  ELSE
    begin
      Form3.intAlbum_id := DBGrid1.Fields[0].AsInteger;
      with TForm2.Create(nil) do
      try
        Form1.hide;
        Form2.ShowModal;
      finally
        Form1.Show;
        Form2.Free;
      end;
    end
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FDQuery1.SQL.Clear;
  Form1.Caption := 'Albums';
  FDQuery1.SQL.Add('select id, nom as Nom, annee as "Année de sortie" from album where artiste_id = '+ Form3.intArtiste_id.ToString);
  FDQuery1.Active := True;
  FDQuery2.SQL.Clear;
  FDQuery2.SQL.Add('select nom from artiste where id = '+Form3.intArtiste_id.ToString);
  FDQuery2.Active := True;
  DBGrid1.Columns[0].Visible := False;
  DBGrid1.Columns[1].Width := 700;
  DBGrid1.Columns[2].Width := 100;
end;

end.
