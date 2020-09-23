VERSION 5.00
Begin VB.Form Form3 
   BackColor       =   &H00000000&
   BorderStyle     =   0  'None
   Caption         =   "Form3"
   ClientHeight    =   9000
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   12000
   LinkTopic       =   "Form3"
   MouseIcon       =   "Form3.frx":0000
   MousePointer    =   99  'Custom
   ScaleHeight     =   9000
   ScaleWidth      =   12000
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   WindowState     =   2  'Maximized
   Begin VB.Timer Timer1 
      Interval        =   1
      Left            =   120
      Top             =   795
   End
   Begin VB.Image linegi 
      Height          =   15
      Left            =   -480
      Picture         =   "Form3.frx":08CA
      Top             =   9000
      Width           =   75000
   End
End
Attribute VB_Name = "Form3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
    linepos = 9000
End Sub

Private Sub Timer1_Timer()
    If linegi.Top = 0 Then
    Unload Me
    MsgBox "No brain found!", vbCritical, "Error"
    End
    End If
    linegi.Top = linepos
    linepos = linepos - 30
End Sub

