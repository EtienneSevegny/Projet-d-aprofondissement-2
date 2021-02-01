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
    { Déclarations protégées }
  public
    { Déclarations publiques }
    Function CellRect(ACol,Arow : Longint):TRect; Reintroduce;
  published
    { Déclarations publiées }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Samples', [DBGridObj]);
end;

end.
