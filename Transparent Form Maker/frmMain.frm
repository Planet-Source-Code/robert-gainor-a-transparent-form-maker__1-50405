VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Begin VB.Form frmMain 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Transparent Form Maker"
   ClientHeight    =   3600
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   8520
   MaxButton       =   0   'False
   ScaleHeight     =   3600
   ScaleWidth      =   8520
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdExample 
      Caption         =   "View Example Form"
      Height          =   495
      Left            =   120
      TabIndex        =   7
      Top             =   3000
      Width           =   1215
   End
   Begin VB.CommandButton cmdLoadPicture 
      Caption         =   "Load Picture"
      Height          =   495
      Left            =   1560
      TabIndex        =   4
      Top             =   3000
      Width           =   975
   End
   Begin VB.PictureBox pctTransparentColor 
      Height          =   375
      Left            =   1560
      ScaleHeight     =   315
      ScaleWidth      =   2355
      TabIndex        =   3
      Top             =   240
      Width           =   2415
   End
   Begin VB.CommandButton frmCreateForm 
      Caption         =   "Show The Form"
      Height          =   495
      Left            =   2760
      TabIndex        =   1
      Top             =   3000
      Width           =   1215
   End
   Begin VB.PictureBox Picture1 
      BorderStyle     =   0  'None
      Height          =   3375
      Left            =   4200
      ScaleHeight     =   3375
      ScaleWidth      =   4215
      TabIndex        =   0
      Top             =   120
      Width           =   4215
      Begin VB.PictureBox pctOpen 
         AutoRedraw      =   -1  'True
         BorderStyle     =   0  'None
         Height          =   2415
         Left            =   360
         ScaleHeight     =   2415
         ScaleWidth      =   3615
         TabIndex        =   6
         Top             =   480
         Width           =   3615
      End
   End
   Begin MSComDlg.CommonDialog CmnDialog 
      Left            =   3600
      Top             =   2280
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
      CancelError     =   -1  'True
   End
   Begin VB.Label Label3 
      Caption         =   $"frmMain.frx":0000
      Height          =   1815
      Left            =   120
      TabIndex        =   5
      Top             =   840
      Width           =   3855
   End
   Begin VB.Label Label1 
      Alignment       =   1  'Right Justify
      Caption         =   "Transparent Color:"
      Height          =   255
      Left            =   120
      TabIndex        =   2
      Top             =   240
      Width           =   1335
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim strFile As String


Private Sub cmdExample_Click()
Load frmExample
CenterForm frmExample
frmExample.Show
End Sub

Private Sub cmdLoadPicture_Click()
On Error GoTo ErrorHandle


With CmnDialog
    .DialogTitle = "Select Picture"
    .Filter = "All Picture Files|*.bmp;*.jpg;*.gif"
    .FileName = ""
    .ShowOpen
    strFile = .FileName
End With

LoadPictureBox strFile, pctOpen, Picture1

Exit Sub
ErrorHandle:
End Sub


Private Sub frmCreateForm_Click()


Load frmRegion
frmRegion.SetPicture strFile, pctTransparentColor.BackColor
Me.Hide
frmRegion.Show
Load frmSave
frmSave.Left = frmRegion.Left + 500
frmSave.Top = frmRegion.Top + 1000
frmSave.Show

End Sub

Private Sub pctOpen_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
On Error Resume Next
pctTransparentColor.BackColor = pctOpen.Point(X, Y)
End Sub

