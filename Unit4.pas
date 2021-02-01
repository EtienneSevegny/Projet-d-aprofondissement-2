unit DBGridObj;

interface

  uses Windows, Messages, SysUtils, Classes, Graphics,
       Controls, Forms,Grids, dbGrids;

 Type
  TDBGridObj = class(TDBGrid)

  Private
    FRowHeight : Integer ;
    Protected
    Procedure
    SetRowHeight(Value:Integer);
  Public
    // The inherited method is declared as protected.
    // Used Reintroduce to hide compiler warnings.
    Function CellRect(ACol,Arow : Longint):TRect; Reintroduce;

    // Expose Row and Col properties
    Property Row ;
    Property Col ;
  Published
    Property RowHeight : Integer
       Read FRowHeight Write SetRowHeight ;
  End;

procedure Register;

implementation
  Uses DB ;

Function TDBGridObj.CellRect(ACol,ARow:Longint):TRect;
Begin
   Result := Inherited CellRect(ACol, ARow);
End;

Procedure TDBGridObj.SetRowHeight(Value:Integer);
Begin
   If FRowHeight <> Value Then Begin
      FRowHeight := Value ;
      DefaultRowHeight := FRowHeight ;
      // Force Grid to update the RowCount.
      // The method I need to call is
      // UpdateRowCount, but it's declared
      // as private in the parent.  This
      // calls it by making the grid think it has
      // been resized.
      If Self.DataLink.Active Then Begin
         Perform(WM_SIZE,0,0);
     End;
   End;
End;

procedure Register;
Begin
   RegisterComponents('Custom', [TDBGridObj]);
End;

End.
