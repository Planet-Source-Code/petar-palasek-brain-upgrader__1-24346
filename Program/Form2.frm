VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form Form2 
   Caption         =   "Preparing..."
   ClientHeight    =   2040
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   5970
   LinkTopic       =   "Form2"
   ScaleHeight     =   2040
   ScaleWidth      =   5970
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer Timer1 
      Interval        =   150
      Left            =   360
      Top             =   1920
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Cancel"
      Height          =   375
      Left            =   2160
      TabIndex        =   2
      Top             =   1560
      Width           =   1215
   End
   Begin MSComctlLib.ProgressBar prog 
      Height          =   375
      Left            =   120
      TabIndex        =   1
      Top             =   1080
      Width           =   5655
      _ExtentX        =   9975
      _ExtentY        =   661
      _Version        =   393216
      Appearance      =   1
      Scrolling       =   1
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   238
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1920
      TabIndex        =   3
      Top             =   600
      Width           =   1695
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Preparing to scan..."
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   238
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   600
      TabIndex        =   0
      Top             =   240
      Width           =   4455
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
End
End Sub

Private Sub Form_Load()
Dim p As Integer
End Sub

Private Sub Timer1_Timer()

prog.Value = prog.Value + 1
If prog.Value = 100 Then
Form3.Show
Unload Me
End If
p = prog.Value
Label2.Caption = p & "% completed"
End Sub
