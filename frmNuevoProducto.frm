VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Begin VB.Form frmNuevoProducto 
   Caption         =   "Mantenedor de Producto"
   ClientHeight    =   6165
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   9195
   LinkTopic       =   "Form1"
   ScaleHeight     =   6165
   ScaleWidth      =   9195
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton btnNuevaModalidad 
      Caption         =   "Nueva"
      Height          =   375
      Left            =   6960
      TabIndex        =   26
      Top             =   2280
      Width           =   1335
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   3015
      Left            =   360
      TabIndex        =   10
      Top             =   1680
      Width           =   8175
      _ExtentX        =   14420
      _ExtentY        =   5318
      _Version        =   393216
      Tab             =   2
      TabHeight       =   520
      TabCaption(0)   =   "Cuando Sortea?"
      TabPicture(0)   =   "frmNuevoProducto.frx":0000
      Tab(0).ControlEnabled=   0   'False
      Tab(0).Control(0)=   "checkMartes"
      Tab(0).Control(1)=   "checkMiercoles"
      Tab(0).Control(2)=   "checkJueves"
      Tab(0).Control(3)=   "checkViernes"
      Tab(0).Control(4)=   "checkSabado"
      Tab(0).Control(5)=   "checkDomingo"
      Tab(0).Control(6)=   "checkLunes"
      Tab(0).ControlCount=   7
      TabCaption(1)   =   "Jurisdicciones"
      TabPicture(1)   =   "frmNuevoProducto.frx":001C
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "frm1"
      Tab(1).Control(1)=   "btnNinguna"
      Tab(1).Control(2)=   "btnTodas"
      Tab(1).ControlCount=   3
      TabCaption(2)   =   "Modalidades"
      TabPicture(2)   =   "frmNuevoProducto.frx":0038
      Tab(2).ControlEnabled=   -1  'True
      Tab(2).Control(0)=   "MSFlexGrid"
      Tab(2).Control(0).Enabled=   0   'False
      Tab(2).ControlCount=   1
      Begin MSFlexGridLib.MSFlexGrid MSFlexGrid 
         Height          =   2295
         Left            =   240
         TabIndex        =   25
         Top             =   480
         Width           =   6135
         _ExtentX        =   10821
         _ExtentY        =   4048
         _Version        =   393216
      End
      Begin VB.Frame frm1 
         Height          =   1815
         Left            =   -74400
         TabIndex        =   20
         Top             =   720
         Width           =   2415
         Begin VB.CheckBox checkMontevideo 
            Caption         =   "Montevideo"
            Height          =   195
            Left            =   240
            TabIndex        =   24
            Top             =   1320
            Width           =   1215
         End
         Begin VB.CheckBox checkIafas 
            Caption         =   "IAFAS Entre Ríos"
            Height          =   195
            Left            =   240
            TabIndex        =   23
            Top             =   960
            Width           =   1815
         End
         Begin VB.CheckBox checkPcia 
            Caption         =   "Pcia Buenos Aires"
            Height          =   195
            Left            =   240
            TabIndex        =   22
            Top             =   600
            Width           =   1815
         End
         Begin VB.CheckBox checkLotBa 
            Caption         =   "Lot Ba"
            Height          =   195
            Left            =   240
            TabIndex        =   21
            Top             =   240
            Width           =   1215
         End
      End
      Begin VB.CommandButton btnNinguna 
         Caption         =   "Ninguna"
         Height          =   495
         Left            =   -71520
         TabIndex        =   19
         Top             =   1680
         Width           =   975
      End
      Begin VB.CommandButton btnTodas 
         Caption         =   "Todas"
         Height          =   495
         Left            =   -71520
         TabIndex        =   18
         Top             =   840
         Width           =   975
      End
      Begin VB.CheckBox checkMartes 
         Caption         =   "Martes"
         Height          =   195
         Left            =   -74640
         TabIndex        =   17
         Top             =   840
         Width           =   1095
      End
      Begin VB.CheckBox checkMiercoles 
         Caption         =   "Miercoles"
         Height          =   195
         Left            =   -74640
         TabIndex        =   16
         Top             =   1200
         Width           =   1095
      End
      Begin VB.CheckBox checkJueves 
         Caption         =   "Jueves"
         Height          =   195
         Left            =   -74640
         TabIndex        =   15
         Top             =   1560
         Width           =   1095
      End
      Begin VB.CheckBox checkViernes 
         Caption         =   "Viernes"
         Height          =   195
         Left            =   -74640
         TabIndex        =   14
         Top             =   1920
         Width           =   1095
      End
      Begin VB.CheckBox checkSabado 
         Caption         =   "Sabado"
         Height          =   195
         Left            =   -74640
         TabIndex        =   13
         Top             =   2280
         Width           =   1095
      End
      Begin VB.CheckBox checkDomingo 
         Caption         =   "Domingo"
         Height          =   195
         Left            =   -74640
         TabIndex        =   12
         Top             =   2640
         Width           =   1095
      End
      Begin VB.CheckBox checkLunes 
         Caption         =   "Lunes"
         Height          =   195
         Left            =   -74640
         TabIndex        =   11
         Top             =   480
         Width           =   1095
      End
   End
   Begin VB.CommandButton cmdSalir 
      Caption         =   "Salir"
      Height          =   375
      Left            =   2760
      TabIndex        =   9
      Top             =   4920
      Width           =   2055
   End
   Begin VB.CommandButton cmdGuardar 
      Caption         =   "Guardar"
      Height          =   375
      Left            =   360
      TabIndex        =   8
      Top             =   4920
      Width           =   2055
   End
   Begin VB.CheckBox CheckPoceado 
      BeginProperty Font 
         Name            =   "Arial Narrow"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   6120
      TabIndex        =   7
      Top             =   960
      Width           =   240
   End
   Begin VB.CheckBox CheckHabilitado 
      BeginProperty Font 
         Name            =   "Arial Narrow"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   6120
      TabIndex        =   6
      Top             =   480
      Width           =   240
   End
   Begin VB.ComboBox cboGrupo 
      Height          =   315
      Left            =   1440
      TabIndex        =   5
      Top             =   1080
      Width           =   2175
   End
   Begin VB.TextBox txtNombre 
      Height          =   375
      Left            =   1440
      TabIndex        =   2
      Top             =   480
      Width           =   2175
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "Es poceado?:"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   4320
      TabIndex        =   4
      Top             =   960
      Width           =   1605
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Habilitado:"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   4680
      TabIndex        =   3
      Top             =   480
      Width           =   1245
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "Grupo:"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   480
      TabIndex        =   1
      Top             =   1080
      Width           =   810
   End
   Begin VB.Label lbl1 
      AutoSize        =   -1  'True
      Caption         =   "Nombre: "
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   240
      TabIndex        =   0
      Top             =   480
      Width           =   1065
   End
End
Attribute VB_Name = "frmNuevoProducto"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub cmdSalir_Click()
        Unload Me
        frmProductos.Show
End Sub

Private Sub Form_Load()
    cboGrupo.AddItem "Quini 6"
    cboGrupo.AddItem "Loteria"
    cboGrupo.AddItem "Poceada General"
    cboGrupo.AddItem "Tombola"
End Sub

