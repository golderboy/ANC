object connection_form: Tconnection_form
  Left = 0
  Top = 0
  Caption = 'connection_form'
  ClientHeight = 380
  ClientWidth = 617
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 23
  object Label1: TLabel
    Left = 48
    Top = 104
    Width = 37
    Height = 23
    Caption = 'Host'
  end
  object Label2: TLabel
    Left = 48
    Top = 148
    Width = 78
    Height = 23
    Caption = 'Database'
  end
  object Label3: TLabel
    Left = 48
    Top = 192
    Width = 36
    Height = 23
    Caption = 'user'
  end
  object Label4: TLabel
    Left = 48
    Top = 236
    Width = 36
    Height = 23
    Caption = 'Pass'
  end
  object Label5: TLabel
    Left = 48
    Top = 280
    Width = 33
    Height = 23
    Caption = 'Port'
  end
  object Label6: TLabel
    Left = 232
    Top = 55
    Width = 161
    Height = 23
    Caption = #3605#3636#3604#3605#3656#3629#3600#3634#3609#3586#3657#3629#3617#3641#3621#3627#3621#3633#3585
  end
  object JvNavPanelHeader1: TJvNavPanelHeader
    Left = 0
    Top = 0
    Width = 617
    Height = 33
    Align = alTop
    Caption = 'mysql connection'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    ImageIndex = 0
    ExplicitWidth = 619
  end
  object Panel1: TPanel
    Left = 0
    Top = 333
    Width = 617
    Height = 47
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 330
    ExplicitWidth = 619
    DesignSize = (
      617
      47)
    object save_btn: TcxButton
      Left = 505
      Top = 5
      Width = 83
      Height = 33
      Anchors = [akRight, akBottom]
      Caption = 'save'
      TabOrder = 0
      OnClick = save_btnClick
      ExplicitLeft = 507
    end
  end
  object host: TcxTextEdit
    Left = 128
    Top = 101
    TabOrder = 2
    Text = 'host'
    Width = 225
  end
  object database: TcxTextEdit
    Left = 128
    Top = 145
    TabOrder = 3
    Text = 'database'
    Width = 225
  end
  object user: TcxTextEdit
    Left = 128
    Top = 189
    TabOrder = 4
    Text = 'user'
    Width = 225
  end
  object pass: TcxTextEdit
    Left = 128
    Top = 233
    Properties.EchoMode = eemPassword
    TabOrder = 5
    Text = 'pass'
    Width = 225
  end
  object connect_btn: TcxButton
    Left = 368
    Top = 97
    Width = 227
    Height = 213
    Caption = 'connect'
    TabOrder = 6
    OnClick = connect_btnClick
  end
  object port: TcxSpinEdit
    Left = 128
    Top = 277
    TabOrder = 7
    Width = 225
  end
end
