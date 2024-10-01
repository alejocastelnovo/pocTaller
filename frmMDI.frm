VERSION 5.00
Begin VB.MDIForm frmMDI 
   BackColor       =   &H000080FF&
   Caption         =   "Pantalla del Sistema"
   ClientHeight    =   3900
   ClientLeft      =   225
   ClientTop       =   870
   ClientWidth     =   4215
   LinkTopic       =   "MDIForm1"
   Picture         =   "frmMDI.frx":0000
   StartUpPosition =   3  'Windows Default
   Begin VB.Menu mnuHome 
      Caption         =   "Home"
      Begin VB.Menu mnuSalir 
         Caption         =   "Salir"
      End
   End
   Begin VB.Menu mnuProgramacion 
      Caption         =   "Programacion"
      Begin VB.Menu mnuSorteos 
         Caption         =   "Sorteos"
      End
      Begin VB.Menu mnuProgMes 
         Caption         =   "Repo.Prog.Mes"
      End
      Begin VB.Menu mnuProgProducto 
         Caption         =   "Repo Prog.Producto"
      End
   End
   Begin VB.Menu mnuMantenedores 
      Caption         =   "Mantenedores"
      Begin VB.Menu mnuProductos 
         Caption         =   "Productos"
      End
      Begin VB.Menu mnuModalidades 
         Caption         =   "Modalidades"
      End
      Begin VB.Menu mnuValorApuesta 
         Caption         =   "Valor Apuesta"
      End
      Begin VB.Menu mnuCargos 
         Caption         =   "Cargos"
      End
      Begin VB.Menu mnuUsuarios 
         Caption         =   "Usuarios"
      End
      Begin VB.Menu mnuAutoridad 
         Caption         =   "Autoridad"
      End
      Begin VB.Menu mnuLoterias 
         Caption         =   "Loterias"
      End
   End
End
Attribute VB_Name = "frmMDI"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub mnuProductos_Click()
        frmProductos.Show
        frmMDI.Hide
End Sub

Private Sub mnuSalir_Click()
    Unload Me
    End
End Sub
