Attribute VB_Name = "Module21"
Sub ExtractIDs()
    Dim lastRow As Long
    Dim cell As Range
    Dim numbers As String
    
    ' Find the last row in column A
    lastRow = Cells(Rows.Count, 1).End(xlUp).Row
    
    ' Loop through each cell in column A
    For Each cell In Range("A1:A" & lastRow)
        ' Extract the numbers from the cell value
        numbers = ""
        For i = 1 To Len(cell.value)
            If IsNumeric(Mid(cell.value, i, 1)) Then
                numbers = numbers & Mid(cell.value, i, 1)
            ElseIf numbers <> "" Then
                numbers = numbers & ","
            End If
        Next i
        
        ' Output the extracted numbers separated by "," to column B
        cell.Offset(0, 1).value = numbers
    Next cell
End Sub

