VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Begin VB.Form frmProductos 
   Caption         =   "Productos"
   ClientHeight    =   7365
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   9615
   LinkTopic       =   "Form1"
   ScaleHeight     =   7365
   ScaleWidth      =   9615
   StartUpPosition =   3  'Windows Default
   Begin MSAdodcLib.Adodc Adodc 
      Height          =   375
      Left            =   7440
      Top             =   6480
      Visible         =   0   'False
      Width           =   1575
      _ExtentX        =   2778
      _ExtentY        =   661
      ConnectMode     =   0
      CursorLocation  =   3
      IsolationLevel  =   -1
      ConnectionTimeout=   15
      CommandTimeout  =   30
      CursorType      =   3
      LockType        =   3
      CommandType     =   8
      CursorOptions   =   0
      CacheSize       =   50
      MaxRecords      =   0
      BOFAction       =   0
      EOFAction       =   0
      ConnectStringType=   1
      Appearance      =   1
      BackColor       =   -2147483643
      ForeColor       =   -2147483640
      Orientation     =   0
      Enabled         =   -1
      Connect         =   ""
      OLEDBString     =   ""
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   ""
      Caption         =   ""
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      _Version        =   393216
   End
   Begin MSFlexGridLib.MSFlexGrid MSFlexGrid1 
      Height          =   2175
      Left            =   720
      TabIndex        =   12
      Top             =   3720
      Width           =   7455
      _ExtentX        =   13150
      _ExtentY        =   3836
      _Version        =   393216
   End
   Begin VB.CommandButton cmdSalir 
      BackColor       =   &H80000009&
      Caption         =   "Salir"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   11.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   3480
      MaskColor       =   &H80000009&
      TabIndex        =   11
      Top             =   6480
      Width           =   1935
   End
   Begin VB.CommandButton cmdNuevo 
      BackColor       =   &H80000009&
      Caption         =   "Nuevo"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   11.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1320
      MaskColor       =   &H80000009&
      TabIndex        =   10
      Top             =   6480
      Width           =   1935
   End
   Begin VB.CommandButton cmdBuscar 
      BackColor       =   &H80000009&
      Caption         =   "Buscar"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   11.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   3360
      MaskColor       =   &H80000009&
      TabIndex        =   9
      Top             =   2280
      Width           =   1935
   End
   Begin VB.CommandButton cmdLimpiar 
      BackColor       =   &H80000009&
      Caption         =   "Limpiar"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   11.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1200
      MaskColor       =   &H80000009&
      TabIndex        =   8
      Top             =   2280
      Width           =   1935
   End
   Begin VB.ComboBox cboGrupo 
      Height          =   315
      Left            =   1800
      TabIndex        =   7
      Top             =   1080
      Width           =   2295
   End
   Begin VB.ComboBox cboTipo 
      Height          =   315
      Left            =   6480
      TabIndex        =   5
      Top             =   1200
      Width           =   1455
   End
   Begin VB.ComboBox cboHabilitado 
      Height          =   315
      Left            =   6720
      TabIndex        =   3
      Top             =   480
      Width           =   855
   End
   Begin VB.TextBox txtNombre 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1800
      TabIndex        =   1
      Top             =   480
      Width           =   2295
   End
   Begin VB.Line Line 
      X1              =   720
      X2              =   8400
      Y1              =   3480
      Y2              =   3480
   End
   Begin VB.Label lblGrupo 
      AutoSize        =   -1  'True
      Caption         =   "Grupo:"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Left            =   720
      TabIndex        =   6
      Top             =   1080
      Width           =   990
   End
   Begin VB.Label lblTipo 
      AutoSize        =   -1  'True
      Caption         =   "Tipo:"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Left            =   5640
      TabIndex        =   4
      Top             =   1200
      Width           =   735
   End
   Begin VB.Label lblHabilitado 
      AutoSize        =   -1  'True
      Caption         =   "Habilitado:"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Left            =   5160
      TabIndex        =   2
      Top             =   480
      Width           =   1485
   End
   Begin VB.Label lblNombre 
      AutoSize        =   -1  'True
      Caption         =   "Nombre: "
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Left            =   480
      TabIndex        =   0
      Top             =   480
      Width           =   1275
   End
End
Attribute VB_Name = "frmProductos"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim rs As ADODB.Recordset

Private Sub cmdBuscar_Click()
    On Error GoTo ErrorHandler
    
    Dim query As String
    Dim whereClause As String
    Dim rs As ADODB.Recordset
    Dim rowIndex As Integer
    
    If conn.State = adStateClosed Then Call Conectar
    
   
    MSFlexGrid1.Clear
    
    'Funcion para acomodar la grid
    ConfigurarGrid
    
' Iniciar la consulta base

    query = "SELECT J.Jue_Desc, J.esPoceado, J.Jue_Habi, PS.fechahora AS Sortea, L.nombre AS Jurisdicciones " & _
            "FROM Juego J " & _
            "LEFT JOIN PgmSorteo PS ON J.IdJuego = PS.idJuego " & _
            "LEFT JOIN PgmSorteo_Loteria PSL ON PS.idPgmSorteo = PSL.idPgmSorteo " & _
            "LEFT JOIN Loteria L ON PSL.idLoteria = L.idLoteria "
    
    whereClause = ""
    
    'FILTROS
    
    ' Filtrar por Nombre
    If Trim(txtNombre.Text) <> "" Then
        whereClause = whereClause & "J.Jue_Desc LIKE '%" & Trim(txtNombre.Text) & "%' "
    End If
    
    ' Filtrar por Habilitado
    If cboHabilitado.ListIndex <> -1 Then
        If Trim(cboHabilitado.Text) = "Si" Then
            If whereClause <> "" Then whereClause = whereClause & "AND "
            whereClause = whereClause & "J.Jue_Habi = 'S' "
        ElseIf Trim(cboHabilitado.Text) = "No" Then
            If whereClause <> "" Then whereClause = whereClause & "AND "
            whereClause = whereClause & "J.Jue_Habi = 'N' "
        End If
    End If
    
    ' Filtrar por Tipo (Poceado/Bancado)
    If cboTipo.ListIndex <> -1 Then
        If Trim(cboTipo.Text) = "Poceado" Then
            If whereClause <> "" Then whereClause = whereClause & "AND "
            whereClause = whereClause & "J.esPoceado = 1 "
        ElseIf Trim(cboTipo.Text) = "Bancado" Then
            If whereClause <> "" Then whereClause = whereClause & "AND "
            whereClause = whereClause & "J.esPoceado = 0 "
        End If
    End If
    
    'agregar lo anterior al WHERE
    If whereClause <> "" Then
        query = query & "WHERE " & whereClause
    End If
    
    Set rs = New ADODB.Recordset
    rs.Open query, conn, adOpenStatic, adLockReadOnly
    
    ' Verificar resultados
    If Not rs.EOF Then
        rowIndex = 1
        Do While Not rs.EOF
           
           
            MSFlexGrid1.Rows = MSFlexGrid1.Rows + 1
            
            ' datos del recordset
            MSFlexGrid1.TextMatrix(rowIndex, 0) = rs!Jue_Desc
            MSFlexGrid1.TextMatrix(rowIndex, 1) = cboGrupo.Text
            MSFlexGrid1.TextMatrix(rowIndex, 2) = IIf(rs!esPoceado = True, "Poceado", "Bancado")
            MSFlexGrid1.TextMatrix(rowIndex, 3) = IIf(rs!Jue_Habi = "S", "Sí", "No")
            MSFlexGrid1.TextMatrix(rowIndex, 4) = Format(rs!Sortea, "dd/mm/yyyy hh:nn:ss")
            MSFlexGrid1.TextMatrix(rowIndex, 5) = rs!Jurisdicciones
            MSFlexGrid1.TextMatrix(rowIndex, 6) = "Editar | Eliminar"
            
            rs.MoveNext
            rowIndex = rowIndex + 1
        Loop
    Else
        MsgBox "No se encontraron resultados.", vbInformation
    End If
    

    rs.Close
    Set rs = Nothing
    Exit Sub
    
ErrorHandler:
    MsgBox "Error: " & Err.Description, vbCritical, "Error en la búsqueda"
    If Not rs Is Nothing Then rs.Close
End Sub

Private Sub Form_Load()
    ' Opciones para cada combo box
    cboHabilitado.AddItem "Si"
    cboHabilitado.AddItem "No"

    cboTipo.AddItem "Poceado"
    cboTipo.AddItem "Bancado"

    cboGrupo.AddItem "Quini 6"
    cboGrupo.AddItem "Lotería"
    cboGrupo.AddItem "Poceada General"
    cboGrupo.AddItem "Tómbola"
    
    ' Conectar a la base de datos
    Call Conectar
End Sub

Private Sub cmdLimpiar_Click()
   
    txtNombre.Text = ""
    cboHabilitado.ListIndex = -1
    cboTipo.ListIndex = -1
    cboGrupo.ListIndex = -1
    
    ' Limpiar el grid
    MSFlexGrid1.Clear
    ConfigurarGrid
End Sub

' Cerrar la conexión antes de salir
Private Sub cmdSalir_Click()
    Call CerrarBD
    Unload Me
    frmMDI.Show
End Sub

Private Sub cmdNuevo_Click()
    Dim frmNuevoProducto As New frmNuevoProducto
    frmNuevoProducto.Show
    frmProductos.Hide
End Sub

Private Sub ConfigurarGrid()
    ' Estructura del grid
    With MSFlexGrid1
        .Rows = 1
        .Cols = 7
        
        'encabezados de las columnas
        .TextMatrix(0, 0) = "Nombre"
        .TextMatrix(0, 1) = "Grupo"
        .TextMatrix(0, 2) = "Tipo"
        .TextMatrix(0, 3) = "Habilitado"
        .TextMatrix(0, 4) = "Sortea"
        .TextMatrix(0, 5) = "Jurisdicciones"
        .TextMatrix(0, 6) = "Acción"
        
        ' ancho de las columnas
        .ColWidth(0) = 3000 ' Nombre
        .ColWidth(1) = 2000 ' Grupo
        .ColWidth(2) = 1500 ' Tipo
        .ColWidth(3) = 1000 ' Habilitado
        .ColWidth(4) = 2000 ' Sortea
        .ColWidth(5) = 3000 ' Jurisdicciones
        .ColWidth(6) = 1500 ' Acción
    End With
End Sub


