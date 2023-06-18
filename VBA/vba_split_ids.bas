Attribute VB_Name = "Module1"
Sub SplitRows()
    Dim lastRow As Long
    Dim i As Long, j As Long
    Dim idDescArray() As String
    
    ' determing last used row
    lastRow = Cells(Rows.Count, 1).End(xlUp).Row
    
    ' Loop through all used rows from the last to the second
    For i = lastRow To 2 Step -1
        ' Split the value in column A based on the commas
        idDescArray = Split(Cells(i, 1).Value, ",")
        
        ' Loop through each element in the array
        For j = UBound(idDescArray) To LBound(idDescArray) Step -2
            ' Insert a new row below for the description
            Rows(i + 1).Insert
            ' Copy the id to the new row
            Cells(i + 1, 1).Value = Trim(idDescArray(j - 1))
            ' Copy the description to the new row in column B
            Cells(i + 1, 2).Value = Trim(idDescArray(j))
        Next j
        
        ' Delete the original row
        Rows(i).Delete
    Next i
End Sub


