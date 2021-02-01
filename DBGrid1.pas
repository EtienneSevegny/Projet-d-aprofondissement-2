unit DBGrid1;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, Vcl.Grids, Vcl.DBGrids;

type
  DBGridObj = class(TDBGrid)
  private
   FRowHeight : Integer ;
    Protected
    Procedure
    SetRowHeight(Value:Integer);
  protected
    { D�clarations prot�g�es }
  public
    { D�clarations publiques }
    Function CellRect(ACol,Arow : Longint):TRect; Reintroduce;
  published
    { D�clarations publi�es }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Samples', [DBGridObj]);
end;

end.
