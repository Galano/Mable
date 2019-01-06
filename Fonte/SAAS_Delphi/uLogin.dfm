object frmLogin: TfrmLogin
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Login'
  ClientHeight = 121
  ClientWidth = 220
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object gbPrincipal: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    PanelStyle.OfficeBackgroundKind = pobkStyleColor
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    TabOrder = 0
    Height = 121
    Width = 220
    object edtUsuario: TcxTextEdit
      Left = 64
      Top = 24
      TabOrder = 0
      Text = 'admin'
      Width = 121
    end
    object btnLogin: TcxButton
      Left = 17
      Top = 78
      Width = 89
      Height = 25
      Caption = 'Login'
      Default = True
      LookAndFeel.NativeStyle = False
      TabOrder = 1
      OnClick = btnLoginClick
    end
    object Usuário: TcxLabel
      Left = 18
      Top = 28
      Caption = 'Usu'#225'rio'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
    end
    object lblSenha: TcxLabel
      Left = 24
      Top = 55
      Caption = 'Senha'
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
    end
    object edtSenha: TEdit
      Left = 64
      Top = 51
      Width = 121
      Height = 21
      PasswordChar = '*'
      TabOrder = 4
      Text = 'admin'
    end
    object cxButton1: TcxButton
      Left = 112
      Top = 78
      Width = 89
      Height = 25
      Caption = 'Sair'
      LookAndFeel.NativeStyle = False
      ModalResult = 2
      TabOrder = 5
      OnClick = cxButton1Click
    end
  end
end
