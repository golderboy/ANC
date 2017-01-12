object text_form: Ttext_form
  Left = 0
  Top = 0
  Caption = 'text_form'
  ClientHeight = 417
  ClientWidth = 587
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'AngsanaUPC'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 26
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 587
    Height = 33
    Align = alTop
    Caption = 'Panel1'
    TabOrder = 0
    object text_id: TcxTextEdit
      Left = 1
      Top = 1
      Align = alLeft
      TabOrder = 0
      OnKeyPress = text_idKeyPress
      Width = 345
    end
    object BitBtn1: TBitBtn
      Left = 352
      Top = 4
      Width = 75
      Height = 25
      Caption = 'OK'
      Default = True
      TabOrder = 1
      OnClick = BitBtn1Click
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 33
    Width = 587
    Height = 384
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 168
    ExplicitTop = 184
    ExplicitWidth = 250
    ExplicitHeight = 200
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      OnCellClick = cxGrid1DBTableView1CellClick
      OnCellDblClick = cxGrid1DBTableView1CellDblClick
      DataController.DataSource = MyData
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1t_id: TcxGridDBColumn
        DataBinding.FieldName = 't_id'
        Width = 24
      end
      object cxGrid1DBTableView1cid: TcxGridDBColumn
        DataBinding.FieldName = 'cid'
        Width = 121
      end
      object cxGrid1DBTableView1fname: TcxGridDBColumn
        DataBinding.FieldName = 'fname'
        Width = 179
      end
      object cxGrid1DBTableView1lname: TcxGridDBColumn
        DataBinding.FieldName = 'lname'
        Width = 244
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object MyQuery: TMyQuery
    Connection = Module.Connection
    SQL.Strings = (
      'select t_id,cid,fname,lname from t_person_anc')
    ReadOnly = True
    Active = True
    Left = 360
    Top = 88
  end
  object MyData: TMyDataSource
    DataSet = MyQuery
    Left = 432
    Top = 88
  end
end
