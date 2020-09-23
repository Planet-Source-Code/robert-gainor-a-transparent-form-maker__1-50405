Attribute VB_Name = "Module1"
Option Explicit

Public Sub CenterForm(frmCenter As Form)
frmCenter.Left = (Screen.Width - frmCenter.Width) / 2
frmCenter.Top = (Screen.Height - frmCenter.Height) / 2
End Sub


Public Function GetFileName(ByVal strPath As String) As String
Dim lPosition As Long

lPosition = InStrRev(strPath, "\", Len(strPath))
GetFileName = Right(strPath, Len(strPath) - lPosition)

End Function

Public Function RemoveFileExt(ByVal strFile As String) As String
Dim lPosition As Long
lPosition = InStrRev(strFile, ".", Len(strFile))
RemoveFileExt = Left(strFile, lPosition - 1)
End Function
