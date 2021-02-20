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
    btnArtiste_select: TButton;
    fdcMusic_library: TFDConnection;
    fdqArtiste: TFDQuery;
    dtsArtiste: TDataSource;
    gridArtiste: TDBGrid;
    Label1: TLabel;
    btnClose: TButton;
    edtArtiste: TEdit;
    lblArtiste: TLabel;
    btnArtiste_ajout: TButton;
    fdqArtiste_ajout: TFDQuery;
    btnSupprimer: TButton;
    fdqSuppression_artiste: TFDQuery;
    edtSearch: TEdit;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnArtiste_selectClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnArtiste_ajoutClick(Sender: TObject);
    procedure btnSupprimerClick(Sender: TObject);
    procedure edtSearchChange(Sender: TObject);
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
      fdqArtiste.SQL.Clear;
      fdqArtiste.SQL.Add('SELECT id, nom AS Artiste from artiste order by nom');
      fdqArtiste.Active := True;
      gridArtiste.Columns[0].Visible := False;
      Application.MessageBox(PChar(strArtiste_nom+' a été ajouté à la liste.'),PChar('Ajout réussi'),MB_ICONASTERISK);
    end
  else
    Application.MessageBox(PChar('Vous ne pouvez pas ajouter un artiste avec un nom ayant moins de 2 caractères. '),PChar('Erreur'),MB_ICONERROR);
end;

procedure TForm3.btnCloseClick(Sender: TObject);
begin
  Form3.Close;
end;


procedure TForm3.btnSupprimerClick(Sender: TObject);
var strSupprimer: string;
begin
  if Application.MessageBox(PChar('Voulez-vous vraiment supprimer '+gridArtiste.Fields[1].AsString+'?'),PChar('Supression'), MB_ICONQUESTION or MB_YESNO) = IDYES then
    begin
    strSupprimer := gridArtiste.Fields[1].AsString;
        try
          fdqSuppression_artiste.SQL.Clear;
          fdqSuppression_artiste.ExecSQL('delete from artiste where id =' + gridArtiste.Fields[0].AsString);
          fdqArtiste.SQL.Clear;
          fdqArtiste.SQL.Add('SELECT id, nom AS Artiste from artiste order by nom');
          fdqArtiste.Active := True;
          gridArtiste.Columns[0].Visible := False;
          Application.MessageBox(PChar(strSupprimer + ' a été supprimé avec succès.'),PChar('Suppression'),MB_ICONASTERISK)
        except
          on E: EFDDBEngineException do begin
            Application.MessageBox(PChar('Vous ne pouvez pas supprimer cet artiste car il contient encore des albums.'),PChar('Suppression'),MB_ICONERROR);
          end;
        end;
    end;
end;

procedure TForm3.edtSearchChange(Sender: TObject);
var strSearch: string;
begin
  strSearch := edtSearch.Text;
  if not (strSearch = '') then
    begin
      fdqArtiste.SQL.Clear;
      fdqArtiste.SQL.Add('SELECT id, nom AS Artiste from artiste WHERE nom like "'+ strSearch + '%" order by nom');
      fdqArtiste.Active := True;
    end
  else
    begin
      fdqArtiste.SQL.Clear;
      fdqArtiste.SQL.Add('SELECT id, nom AS Artiste from artiste order by nom');
      fdqArtiste.Active := True;
    end;
  gridArtiste.Columns[0].Visible := False;
end;

procedure TForm3.btnArtiste_selectClick(Sender: TObject);
begin
  intArtiste_id := gridArtiste.Fields[0].AsInteger;
  IF(gridArtiste.Fields[0].AsInteger = 0)then
    begin
      Application.MessageBox(PChar('Vous ne pouvez pas sélectionner une ligne vide.'),PChar('Erreur'),MB_ICONERROR)
    end
  ELSE
    begin
      with TForm1.Create(nil) do
      try
        Form3.hide;
        Form1.ShowModal;
      finally
        Form3.Show;
        Form1.Free;
      end
    end
end;



procedure TForm3.FormCreate(Sender: TObject);
begin
  fdqArtiste.SQL.Clear;
  fdqArtiste.SQL.Add('SELECT id, nom AS Artiste from artiste order by nom');
  fdqArtiste.Active := True;
  intArtiste_id :=0;
  intAlbum_id:=0;
  Form3.Caption := 'Bibliothèque';
  gridArtiste.Columns[0].Visible := False;
end;

end.
