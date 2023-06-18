Attribute VB_Name = "Module2"
Sub removeextracommas()
    Dim ws As Worksheet
    Dim lastRow As Long
    Dim rng As Range, cell As Range
    Dim inputString As String
    Dim outputString As String
    
    ' Set the worksheet as the currently active sheet
    Set ws = ActiveSheet
    
    ' Find the last used row in column B
    lastRow = ws.Cells(ws.Rows.Count, 2).End(xlUp).Row
    
    ' Set the range to the column B data
    Set rng = ws.Range("B2:B" & lastRow)
    
    ' Loop through each cell in the range
    For Each cell In rng
        inputString = cell.value
        outputString = ""
        
        ' Split the input string based on commas
        Dim values() As String
        values = Split(inputString, ",")
        
        ' Loop through each value and remove empty elements
        For Each value In values
            If Trim(value) <> "" Then
                outputString = outputString & Trim(value) & ", "
            End If
        Next value
        
        ' Check if the outputString is not empty
        If Len(outputString) > 2 Then
            ' Remove the trailing comma and space
            outputString = Left(outputString, Len(outputString) - 2)
        End If
        
        ' Update the cell value with the cleaned string
        cell.value = outputString
    Next cell
End Sub

