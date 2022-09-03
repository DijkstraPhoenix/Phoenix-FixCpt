VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Phoenix-FixCpt"
   ClientHeight    =   4575
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   5670
   BeginProperty Font 
      Name            =   "SansSerif"
      Size            =   26.25
      Charset         =   2
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   ScaleHeight     =   4575
   ScaleWidth      =   5670
   StartUpPosition =   3  '´°¿ÚÈ±Ê¡
   Begin VB.CommandButton Fix 
      BackColor       =   &H80000010&
      Caption         =   "Start Fix"
      BeginProperty Font 
         Name            =   "Segoe UI"
         Size            =   15
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1215
      Left            =   1440
      TabIndex        =   0
      Top             =   2880
      Width           =   2535
   End
   Begin VB.Label Title 
      Caption         =   "   Phoenix-FixCpt"
      BeginProperty Font 
         Name            =   "Segoe Print"
         Size            =   26.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1455
      Left            =   120
      TabIndex        =   1
      Top             =   1080
      Width           =   5295
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Fix_Click()
    Shell "Cpp\fix.exe"
    MsgBox "Phoenix-FixCpt will continue with the next stage of repair at the next boot."
End Sub
