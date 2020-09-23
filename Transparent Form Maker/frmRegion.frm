VERSION 5.00
Begin VB.Form frmRegion 
   BorderStyle     =   0  'None
   ClientHeight    =   4020
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   6435
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4020
   ScaleWidth      =   6435
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
End
Attribute VB_Name = "frmRegion"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private Const RGN_AND = 1
Private Const RGN_OR = 2
Private Const RGN_XOR = 3
Private Const RGN_DIFF = 4
Private Const RGN_COPY = 5
Private Declare Function CreateRectRgn Lib "gdi32" (ByVal X1 As Long, ByVal Y1 As Long, ByVal X2 As Long, ByVal Y2 As Long) As Long
Private Declare Function CombineRgn Lib "gdi32" (ByVal hDestRgn As Long, ByVal hSrcRgn1 As Long, ByVal hSrcRgn2 As Long, ByVal nCombineMode As Long) As Long
Private Declare Function OffsetRgn Lib "gdi32" (ByVal hRgn As Long, ByVal X As Long, ByVal Y As Long) As Long
Private Declare Function SetWindowRgn Lib "user32" (ByVal hwnd As Long, ByVal hRgn As Long, ByVal bRedraw As Boolean) As Long
Private Declare Function SelectObject Lib "gdi32" (ByVal hDC As Long, ByVal hObject As Long) As Long
Private Declare Function DeleteObject Lib "gdi32" (ByVal hObject As Long) As Long
Private Declare Function DeleteDC Lib "gdi32" (ByVal hDC As Long) As Long
Private Declare Function CreateCompatibleDC Lib "gdi32" (ByVal hDC As Long) As Long
Private Declare Function GetPixel Lib "gdi32" (ByVal hDC As Long, ByVal X As Long, ByVal Y As Long) As Long
Private Declare Function GetRegionData Lib "gdi32" (ByVal hRgn As Long, ByVal dwCount As Long, lpRgnData As Any) As Long

Dim bytRegion() As Byte
Dim nbytes As Long

Private Sub MakeRegion(ByRef frm As Form, ByVal TrnsColor As Long)
frm.BorderStyle = 0
Dim ScaleSize As Long
Dim Width, Height As Long
Dim rgnMain As Long
Dim X, Y As Long
Dim rgnPixel As Long
Dim RGBColor As Long
Dim dcMain As Long
Dim bmpMain As Long
ScaleSize = frm.ScaleMode
frm.ScaleMode = 3
Width = frm.ScaleX(frm.Picture.Width, vbHimetric, vbPixels)
Height = frm.ScaleY(frm.Picture.Height, vbHimetric, vbPixels)
frm.Width = Width * Screen.TwipsPerPixelX
frm.Height = Height * Screen.TwipsPerPixelY
rgnMain = CreateRectRgn(0, 0, Width, Height)
dcMain = CreateCompatibleDC(frm.hDC)
bmpMain = SelectObject(dcMain, frm.Picture.Handle)
For Y = 0 To Height
    For X = 0 To Width
        RGBColor = GetPixel(dcMain, X, Y)
        If RGBColor = TrnsColor Then
            rgnPixel = CreateRectRgn(X, Y, X + 1, Y + 1)
            CombineRgn rgnMain, rgnMain, rgnPixel, RGN_XOR
            DeleteObject rgnPixel
        End If
    Next X
Next Y
SelectObject dcMain, bmpMain
DeleteDC dcMain
DeleteObject bmpMain
If rgnMain <> 0 Then
 nbytes = GetRegionData(rgnMain, 0, ByVal 0&)
    If nbytes > 0 Then
        ReDim bytRegion(0 To nbytes - 1)
        nbytes = GetRegionData(rgnMain, nbytes, bytRegion(0))
    End If
    SetWindowRgn frm.hwnd, rgnMain, True
    CenterForm Me
End If
frm.ScaleMode = ScaleSize
End Sub

Public Sub SetPicture(FileName As String, ClrTransparent As Long)

Set Me.Picture = LoadPicture(FileName)
MakeRegion Me, ClrTransparent


End Sub

Private Sub Form_DblClick()

Unload Me

End Sub

Private Sub Form_Unload(Cancel As Integer)
frmMain.Show

End Sub

Public Sub SaveForm()
On Error GoTo ErrorHandle
Dim i As Long
Dim strFile As String
Dim f1 As Integer

f1 = FreeFile

With frmMain.CmnDialog
    .DialogTitle = "Save Form"
    .Filter = "All VB Form Files(*.frm)|*.frm"
    .FileName = ""
    .ShowSave
    strFile = .FileName
End With

Open strFile For Binary Access Write As #f1

Put #f1, , "VERSION 5.00" & vbCrLf
Put #f1, , "Begin VB.Form " & GetFileName(RemoveFileExt(strFile)) & vbCrLf
Put #f1, , "   BorderStyle = 0        'None" & vbCrLf
Put #f1, , "   ClientHeight = " & Me.Height & vbCrLf
Put #f1, , "   ClientLeft = 0" & vbCrLf
Put #f1, , "   ClientTop = 0" & vbCrLf
Put #f1, , "   ClientWidth = " & Me.Width & vbCrLf
Put #f1, , "   ControlBox = 0          'False" & vbCrLf
Put #f1, , "   LinkTopic = ""Form1""" & vbCrLf
Put #f1, , "   MaxButton = 0           'False" & vbCrLf
Put #f1, , "   MinButton = 0           'False" & vbCrLf
Put #f1, , "   ScaleHeight = 4020" & vbCrLf
Put #f1, , "   ScaleWidth = 6435" & vbCrLf
Put #f1, , "   ShowInTaskbar = 0       'False" & vbCrLf
Put #f1, , "   StartUpPosition = 3    'Windows Default" & vbCrLf
Put #f1, , "End" & vbCrLf
Put #f1, , "Attribute VB_Name = """ & GetFileName(RemoveFileExt(strFile)) & """" & vbCrLf
Put #f1, , "Attribute VB_GlobalNameSpace = False" & vbCrLf
Put #f1, , "Attribute VB_Creatable = False" & vbCrLf
Put #f1, , "Attribute VB_PredeclaredId = True" & vbCrLf
Put #f1, , "Attribute VB_Exposed = False" & vbCrLf
Put #f1, , "Option Explicit" & vbCrLf

Put #f1, , "" & vbCrLf
Put #f1, , "'API Delcares" & vbCrLf
Put #f1, , "Private Declare Function ExtCreateRegion Lib ""gdi32"" (lpXform As Any, ByVal nCount As Long, lpRgnData As Any) As Long" & vbCrLf
Put #f1, , "Private Declare Function SetWindowRgn Lib ""user32"" (ByVal hWnd As Long, ByVal hRgn As Long, ByVal bRedraw As Boolean) As Long" & vbCrLf

Put #f1, , "" & vbCrLf
Put #f1, , "Dim bytRegion(" & nbytes - 1 & ") As Byte" & vbCrLf
Put #f1, , "Dim nBytes As Long" & vbCrLf

Put #f1, , "" & vbCrLf

Put #f1, , "Private Sub Form_Load()" & vbCrLf


Put #f1, , "Dim rgnMain as Long" & vbCrLf
Put #f1, , "" & vbCrLf
Put #f1, , "nBytes = " & nbytes & vbCrLf
Put #f1, , "" & vbCrLf
Put #f1, , "LoadBytes" & vbCrLf
Put #f1, , "" & vbCrLf

Put #f1, , "rgnMain = ExtCreateRegion(ByVal 0&, nBytes, bytRegion(0))" & vbCrLf
Put #f1, , "SetWindowRgn Me.hwnd, rgnMain, True" & vbCrLf

Put #f1, , "" & vbCrLf

Put #f1, , "End Sub" & vbCrLf

Put #f1, , "Private Sub LoadBytes()" & vbCrLf
For i = 0 To nbytes - 1
    If bytRegion(i) <> 0 Then
        Put #f1, , "bytRegion(" & i & ") = " & bytRegion(i) & vbCrLf
    End If
Next i

Put #f1, , "End Sub" & vbCrLf


Close #f1
Exit Sub
ErrorHandle:
MsgBox Err.Number & " " & Err.Description
Close #f1

End Sub
