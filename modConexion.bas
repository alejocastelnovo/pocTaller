Attribute VB_Name = "modConexion"
' Conexion a la bdd

Public conn As ADODB.Connection

Public Sub Conectar()
    On Error GoTo ErrorHandler
    
    Set conn = New ADODB.Connection
    
    conn.ConnectionString = "Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=SorteosLoteria2;Data Source=ALEJO\SQLEXPRESS"
    conn.Open
    
    MsgBox ("la conexion a la base de datos anda")
    Exit Sub
    
'Para los errores

ErrorHandler:
    pNumError = Err.Number
    pDesError = Err.Description
    MsgBox "Error: " & pNumError & " " & pDesError, vbCritical, "Fallo la conexion"
End Sub

 ' para cerrar la conex
 
Public Sub CerrarBD()
    If Not conn Is Nothing Then
        conn.Close
        Set conn = Nothing
    End If
End Sub


