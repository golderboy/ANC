object report_form: Treport_form
  Left = 0
  Top = 0
  Caption = 'report_form'
  ClientHeight = 567
  ClientWidth = 874
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PanelHeader: TJvNavPanelHeader
    Left = 0
    Top = 0
    Width = 874
    Height = 41
    Align = alTop
    Caption = #3619#3632#3610#3610#3619#3634#3618#3591#3634#3609' MCH'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -24
    Font.Name = 'AngsanaUPC'
    Font.Style = [fsBold]
    ParentFont = False
    ImageIndex = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 529
    Width = 874
    Height = 38
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      874
      38)
    object close_btn: TRzBitBtn
      Left = 791
      Top = 6
      Anchors = [akRight, akBottom]
      Caption = 'CLOSE'
      TabOrder = 0
      OnClick = close_btnClick
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000420B0000420B00000001000000000000000000003300
        00006600000099000000CC000000FF0000000033000033330000663300009933
        0000CC330000FF33000000660000336600006666000099660000CC660000FF66
        000000990000339900006699000099990000CC990000FF99000000CC000033CC
        000066CC000099CC0000CCCC0000FFCC000000FF000033FF000066FF000099FF
        0000CCFF0000FFFF000000003300330033006600330099003300CC003300FF00
        330000333300333333006633330099333300CC333300FF333300006633003366
        33006666330099663300CC663300FF6633000099330033993300669933009999
        3300CC993300FF99330000CC330033CC330066CC330099CC3300CCCC3300FFCC
        330000FF330033FF330066FF330099FF3300CCFF3300FFFF3300000066003300
        66006600660099006600CC006600FF0066000033660033336600663366009933
        6600CC336600FF33660000666600336666006666660099666600CC666600FF66
        660000996600339966006699660099996600CC996600FF99660000CC660033CC
        660066CC660099CC6600CCCC6600FFCC660000FF660033FF660066FF660099FF
        6600CCFF6600FFFF660000009900330099006600990099009900CC009900FF00
        990000339900333399006633990099339900CC339900FF339900006699003366
        99006666990099669900CC669900FF6699000099990033999900669999009999
        9900CC999900FF99990000CC990033CC990066CC990099CC9900CCCC9900FFCC
        990000FF990033FF990066FF990099FF9900CCFF9900FFFF99000000CC003300
        CC006600CC009900CC00CC00CC00FF00CC000033CC003333CC006633CC009933
        CC00CC33CC00FF33CC000066CC003366CC006666CC009966CC00CC66CC00FF66
        CC000099CC003399CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CC
        CC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FF
        CC00CCFFCC00FFFFCC000000FF003300FF006600FF009900FF00CC00FF00FF00
        FF000033FF003333FF006633FF009933FF00CC33FF00FF33FF000066FF003366
        FF006666FF009966FF00CC66FF00FF66FF000099FF003399FF006699FF009999
        FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CCFF00CCCCFF00FFCC
        FF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFFFF00000080000080
        000000808000800000008000800080800000C0C0C00080808000191919004C4C
        4C00B2B2B200E5E5E500C8AC2800E0CC6600F2EABF00B59B2400D8E9EC009933
        6600D075A300ECC6D900646F710099A8AC00E2EFF10000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8A5D8
        D8D8D8D8A5E8E8E8E8E8E8E8E8E8AC8181818181ACE8E8E8E8E8E8E8E8D890B4
        B4B4B4B490D8E8E8E8E8E8E8E881E2ACACACACACE281E8E8E8E8E8E8D8B4B4B4
        B4B4B4B4B4B4D8E8E8E8E8E881ACACACACACACACACAC81E8E8E8E8D8B4B4B4B4
        B4B4B4B4B4B4B4D8E8E8E881ACACACACACACACACACACAC81E8E8A590B4B4D7D7
        B4B4B4D7D7B4B490A5E8ACE2ACACD7D7ACACACD7D7ACACE2ACE8D8B4B4B4D7D7
        D7B4D7D7D7B4B4B4D8E881ACACACD7D7D7ACD7D7D7ACACAC81E8D8B4B4B4B4D7
        D7D7D7D7B4B4B4B4D8E881ACACACACD7D7D7D7D7ACACACAC81E8D8B4B4B4B4B4
        D7D7D7B4B4B4B4B4D8E881ACACACACACD7D7D7ACACACACAC81E8D8B4B4B4B4D7
        D7D7D7D7B4B4B4B4D8E881ACACACACD7D7D7D7D7ACACACAC81E8D8B4B4B4D7D7
        D7B4D7D7D7B4B4B4D8E881ACACACD7D7D7ACD7D7D7ACACAC81E8A590B4B4D7D7
        B4B4B4D7D7B4B490A5E8ACE2ACACD7D7ACACACD7D7ACACE2ACE8E8D8B4B4B4B4
        B4B4B4B4B4B4B4D8E8E8E881ACACACACACACACACACACAC81E8E8E8E8D8B4B4B4
        B4B4B4B4B4B4D8E8E8E8E8E881ACACACACACACACACAC81E8E8E8E8E8E8D890B4
        B4B4B4B490D8E8E8E8E8E8E8E881E2ACACACACACE281E8E8E8E8E8E8E8E8A5D8
        D8D8D8D8A5E8E8E8E8E8E8E8E8E8AC8181818181ACE8E8E8E8E8}
      NumGlyphs = 2
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 41
    Width = 129
    Height = 488
    Align = alLeft
    TabOrder = 2
    object report_list: TListBox
      Left = 1
      Top = 1
      Width = 127
      Height = 486
      Align = alClient
      ItemHeight = 13
      Items.Strings = (
        #3627#3597#3636#3591#3605#3633#3657#3591#3588#3619#3619#3606#3660#3607#3633#3657#3591#3627#3617#3604
        '- '#3613#3634#3585#3588#3619#3619#3606#3660#3585#3656#3629#3609' 12 Ws'
        '- '#3588#3619#3619#3606#3660#3648#3626#3637#3656#3618#3591' Risk 1'
        '- '#3588#3619#3619#3606#3660#3648#3626#3637#3656#3618#3591' Risk 2'
        '- '#3588#3619#3619#3606#3660#3648#3626#3637#3656#3618#3591' Risk 3'
        '- '#3605#3633#3657#3591#3588#3619#3619#3606#3660#3623#3633#3618#3619#3640#3656#3609
        '- '#3585#3635#3627#3609#3604#3585#3634#3619#3588#3621#3629#3604
        #3627#3597#3636#3591#3588#3621#3629#3604#3607#3633#3657#3591#3627#3617#3604
        '- '#3648#3604#3655#3585#3609#3657#3635#3627#3609#3633#3585#3609#3657#3629#3618
        '- '#3613#3634#3585#3588#3619#3619#3606#3660#3588#3619#3610'5'#3588#3619#3633#3657#3591
        'CID '#3648#3611#3655#3609#3588#3656#3634#3623#3656#3634#3591)
      TabOrder = 0
    end
  end
  object Panel3: TPanel
    Left = 129
    Top = 41
    Width = 745
    Height = 488
    Align = alClient
    Caption = 'Panel3'
    TabOrder = 3
    object cxGrid: TcxGrid
      Left = 1
      Top = 36
      Width = 743
      Height = 451
      Align = alClient
      TabOrder = 0
      object cxGridDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = MyData
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        object cxGridDBTableView1num_row: TcxGridDBColumn
          Caption = #3621#3635#3604#3633#3610
          DataBinding.FieldName = 'num_row'
          Width = 50
        end
        object cxGridDBTableView1hospital: TcxGridDBColumn
          Caption = #3612#3641#3657#3610#3633#3609#3607#3638#3585
          DataBinding.FieldName = 'hospital'
          Width = 71
        end
        object cxGridDBTableView1fname: TcxGridDBColumn
          Caption = #3594#3639#3656#3629
          DataBinding.FieldName = 'fname'
          Width = 77
        end
        object cxGridDBTableView1lname: TcxGridDBColumn
          Caption = #3609#3634#3617#3626#3585#3640#3621
          DataBinding.FieldName = 'lname'
          Width = 93
        end
        object cxGridDBTableView1cid: TcxGridDBColumn
          Caption = #3648#3621#3586#3610#3633#3605#3619' '#3611#3594#3594'.'
          DataBinding.FieldName = 'cid'
          Width = 95
        end
        object cxGridDBTableView1age: TcxGridDBColumn
          Caption = #3629#3634#3618#3640
          DataBinding.FieldName = 'age'
          Width = 43
        end
        object cxGridDBTableView1edc: TcxGridDBColumn
          Caption = #3585#3635#3627#3609#3604#3588#3621#3629#3604
          DataBinding.FieldName = 'edc'
          Width = 67
        end
        object cxGridDBTableView1house: TcxGridDBColumn
          Caption = #3610#3657#3634#3609#3648#3621#3586#3607#3637#3656
          DataBinding.FieldName = 'house'
          Width = 57
        end
        object cxGridDBTableView1moo: TcxGridDBColumn
          Caption = #3627#3617#3641#3656
          DataBinding.FieldName = 'moo'
          Width = 26
        end
        object cxGridDBTableView1tumbon: TcxGridDBColumn
          Caption = #3605#3635#3610#3621
          DataBinding.FieldName = 'tumbon'
          Width = 51
        end
        object cxGridDBTableView1home: TcxGridDBColumn
          Caption = #3618#3656#3629#3617#3610#3657#3634#3609
          DataBinding.FieldName = 'home'
          Width = 44
        end
        object cxGridDBTableView1risk1: TcxGridDBColumn
          DataBinding.FieldName = 'risk1'
          Width = 28
        end
        object cxGridDBTableView1risk2: TcxGridDBColumn
          DataBinding.FieldName = 'risk2'
          Width = 28
        end
        object cxGridDBTableView1risk3: TcxGridDBColumn
          DataBinding.FieldName = 'risk3'
          Width = 28
        end
        object cxGridDBTableView1plan: TcxGridDBColumn
          Caption = #3649#3612#3609#3585#3634#3619#3588#3621#3629#3604
          DataBinding.FieldName = 'plan'
          Width = 73
        end
        object cxGridDBTableView1inhome: TcxGridDBColumn
          Caption = #3612#3641#3657#3604#3641#3649#3621#3607#3637#3656#3610#3657#3634#3609
          DataBinding.FieldName = 'inhome'
          Width = 61
        end
        object cxGridDBTableView1infomation: TcxGridDBColumn
          Caption = #3594#3656#3629#3591#3607#3634#3591#3605#3636#3604#3605#3656#3629
          DataBinding.FieldName = 'infomation'
          Width = 71
        end
        object cxGridDBTableView1bdate: TcxGridDBColumn
          Caption = #3623#3633#3609#3607#3637#3656#3588#3621#3629#3604
          DataBinding.FieldName = 'bdate'
          Width = 62
        end
        object cxGridDBTableView1bplace: TcxGridDBColumn
          Caption = #3588#3621#3629#3604#3607#3637#3656
          DataBinding.FieldName = 'bplace'
          Width = 68
        end
        object cxGridDBTableView1bweight: TcxGridDBColumn
          Caption = #3609#3657#3635#3627#3609#3633#3585
          DataBinding.FieldName = 'bweight'
        end
        object cxGridDBTableView1anc5: TcxGridDBColumn
          Caption = #3613#3634#3585#3588#3619#3619#3606#3660#3588#3619#3610
          DataBinding.FieldName = 'anc5'
          Width = 67
        end
        object cxGridDBTableView1anc12w: TcxGridDBColumn
          Caption = 'ANC<12W'
          DataBinding.FieldName = 'anc12w'
          Width = 57
        end
        object cxGridDBTableView1labor: TcxGridDBColumn
          DataBinding.FieldName = 'labor'
        end
        object cxGridDBTableView1detail: TcxGridDBColumn
          Caption = #3627#3617#3634#3618#3648#3627#3605#3640
          DataBinding.FieldName = 'detail'
          Width = 81
        end
        object cxGridDBTableView1d_update: TcxGridDBColumn
          DataBinding.FieldName = 'd_update'
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 743
      Height = 35
      Align = alTop
      TabOrder = 1
      object run_btn: TRzBitBtn
        Left = 480
        Top = 4
        Caption = 'Execute'
        TabOrder = 0
        OnClick = run_btnClick
        Glyph.Data = {
          36060000424D3606000000000000360400002800000020000000100000000100
          08000000000000020000520B0000520B00000001000000000000000000003300
          00006600000099000000CC000000FF0000000033000033330000663300009933
          0000CC330000FF33000000660000336600006666000099660000CC660000FF66
          000000990000339900006699000099990000CC990000FF99000000CC000033CC
          000066CC000099CC0000CCCC0000FFCC000000FF000033FF000066FF000099FF
          0000CCFF0000FFFF000000003300330033006600330099003300CC003300FF00
          330000333300333333006633330099333300CC333300FF333300006633003366
          33006666330099663300CC663300FF6633000099330033993300669933009999
          3300CC993300FF99330000CC330033CC330066CC330099CC3300CCCC3300FFCC
          330000FF330033FF330066FF330099FF3300CCFF3300FFFF3300000066003300
          66006600660099006600CC006600FF0066000033660033336600663366009933
          6600CC336600FF33660000666600336666006666660099666600CC666600FF66
          660000996600339966006699660099996600CC996600FF99660000CC660033CC
          660066CC660099CC6600CCCC6600FFCC660000FF660033FF660066FF660099FF
          6600CCFF6600FFFF660000009900330099006600990099009900CC009900FF00
          990000339900333399006633990099339900CC339900FF339900006699003366
          99006666990099669900CC669900FF6699000099990033999900669999009999
          9900CC999900FF99990000CC990033CC990066CC990099CC9900CCCC9900FFCC
          990000FF990033FF990066FF990099FF9900CCFF9900FFFF99000000CC003300
          CC006600CC009900CC00CC00CC00FF00CC000033CC003333CC006633CC009933
          CC00CC33CC00FF33CC000066CC003366CC006666CC009966CC00CC66CC00FF66
          CC000099CC003399CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CC
          CC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FF
          CC00CCFFCC00FFFFCC000000FF003300FF006600FF009900FF00CC00FF00FF00
          FF000033FF003333FF006633FF009933FF00CC33FF00FF33FF000066FF003366
          FF006666FF009966FF00CC66FF00FF66FF000099FF003399FF006699FF009999
          FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CCFF00CCCCFF00FFCC
          FF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFFFF00000080000080
          000000808000800000008000800080800000C0C0C00080808000191919004C4C
          4C00B2B2B200E5E5E500C8AC2800E0CC6600F2EABF00B59B2400D8E9EC009933
          6600D075A300ECC6D900646F710099A8AC00E2EFF10000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000E8E8E8E8E8AA
          E8E8E8E8E8E8E8E8E8E8E8E8E8E8E881E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8AA
          A2E8E8E8E8E8E8E8E8E8E8E8E8E8E88181E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
          AAA2E8E8E8E8E8E8E8E8E8E8E8E8E8E88181E8E8E8E8E8E8E8E8E8E8E8E8E8E8
          AAD5A2E8E8E8E8E8E8E8E8E8E8E8E8E881E381E8E8E8E8E8E8E8E8E8E8E8AAA2
          A2A2D4A2E8E8E8E8E8E8E8E8E8E881818181AC81E8E8E8E8E8E8E8E8E8E8AAD5
          D4D4D4D4A2E8E8E8E8E8E8E8E8E881E3ACACACAC81E8E8E8E8E8E8E8E8E8E8AA
          D5D4A2AAAAAAE8E8E8E8E8E8E8E8E881E3AC81818181E8E8E8E8E8E8E8E8E8AA
          D5D4D4A2E8E8E8E8E8E8E8E8E8E8E881E3ACAC81E8E8E8E8E8E8E8E8AAA2A2A2
          A2D5D4D4A2E8E8E8E8E8E8E88181818181E3ACAC81E8E8E8E8E8E8E8AAD5D5D4
          D4D4D4D4D4A2E8E8E8E8E8E881E3E3ACACACACACAC81E8E8E8E8E8E8E8AAD5D5
          D4D4A2AAAAAAE8E8E8E8E8E8E881E3E3ACAC81818181E8E8E8E8E8E8E8AAD5D5
          D5D4D4A2E8E8E8E8E8E8E8E8E881E3E3E3ACAC81E8E8E8E8E8E8E8E8E8E8AAD5
          D5D5D4D4A2E8E8E8E8E8E8E8E8E881E3E3E3ACAC81E8E8E8E8E8E8E8E8E8AAD5
          D5D5D4D4D4A2E8E8E8E8E8E8E8E881E3E3E3ACACAC81E8E8E8E8E8E8E8E8E8AA
          D5D5D5D4D4D4A2E8E8E8E8E8E8E8E881E3E3E3ACACAC81E8E8E8E8E8E8E8E8AA
          AAAAAAAAAAAAAAAAE8E8E8E8E8E8E8818181818181818181E8E8}
        NumGlyphs = 2
      end
      object cxLabel2: TcxLabel
        Left = 247
        Top = 12
        Caption = #3606#3638#3591
      end
      object date_start: TcxDateEdit
        Left = 44
        Top = 8
        Properties.AssignedValues.DisplayFormat = True
        Properties.AssignedValues.EditFormat = True
        Properties.DateButtons = [btnClear, btnNow, btnToday]
        Properties.Kind = ckDateTime
        TabOrder = 2
        Width = 197
      end
      object date_end: TcxDateEdit
        Left = 268
        Top = 8
        Properties.AssignedValues.DisplayFormat = True
        Properties.AssignedValues.EditFormat = True
        Properties.DateButtons = [btnClear, btnNow, btnToday]
        Properties.Kind = ckDateTime
        TabOrder = 3
        Width = 197
      end
      object export_btn: TRzBitBtn
        Left = 561
        Top = 5
        Caption = 'Export'
        TabOrder = 4
        OnClick = export_btnClick
        Glyph.Data = {
          36060000424D3606000000000000360400002800000020000000100000000100
          08000000000000020000A30E0000A30E00000001000000000000000000003300
          00006600000099000000CC000000FF0000000033000033330000663300009933
          0000CC330000FF33000000660000336600006666000099660000CC660000FF66
          000000990000339900006699000099990000CC990000FF99000000CC000033CC
          000066CC000099CC0000CCCC0000FFCC000000FF000033FF000066FF000099FF
          0000CCFF0000FFFF000000003300330033006600330099003300CC003300FF00
          330000333300333333006633330099333300CC333300FF333300006633003366
          33006666330099663300CC663300FF6633000099330033993300669933009999
          3300CC993300FF99330000CC330033CC330066CC330099CC3300CCCC3300FFCC
          330000FF330033FF330066FF330099FF3300CCFF3300FFFF3300000066003300
          66006600660099006600CC006600FF0066000033660033336600663366009933
          6600CC336600FF33660000666600336666006666660099666600CC666600FF66
          660000996600339966006699660099996600CC996600FF99660000CC660033CC
          660066CC660099CC6600CCCC6600FFCC660000FF660033FF660066FF660099FF
          6600CCFF6600FFFF660000009900330099006600990099009900CC009900FF00
          990000339900333399006633990099339900CC339900FF339900006699003366
          99006666990099669900CC669900FF6699000099990033999900669999009999
          9900CC999900FF99990000CC990033CC990066CC990099CC9900CCCC9900FFCC
          990000FF990033FF990066FF990099FF9900CCFF9900FFFF99000000CC003300
          CC006600CC009900CC00CC00CC00FF00CC000033CC003333CC006633CC009933
          CC00CC33CC00FF33CC000066CC003366CC006666CC009966CC00CC66CC00FF66
          CC000099CC003399CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CC
          CC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FF
          CC00CCFFCC00FFFFCC000000FF003300FF006600FF009900FF00CC00FF00FF00
          FF000033FF003333FF006633FF009933FF00CC33FF00FF33FF000066FF003366
          FF006666FF009966FF00CC66FF00FF66FF000099FF003399FF006699FF009999
          FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CCFF00CCCCFF00FFCC
          FF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFFFF00000080000080
          000000808000800000008000800080800000C0C0C00080808000191919004C4C
          4C00B2B2B200E5E5E500C8AC2800E0CC6600F2EABF00B59B2400D8E9EC009933
          6600D075A300ECC6D900646F710099A8AC00E2EFF10000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000E8E8E8E8E8E8
          E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
          E8E8E8E809E8E8E8E8E8E8E8E8E8E8E8E8E8E8E881E8E8E8E8E8E8E8E8E8E8E8
          E8E8E8E80909E8E8E8E8E8E8E8E8E8E8E8E8E8E88181E8E8E8E8E8E8E8090909
          09090909090909E8E8E8E8E8E881818181818181818181E8E8E8E8E8E8E8E8E8
          E8E8E8E80909E8E8E8E8E8E8E8E8E8E8E8E8E8E88181E8E8E8E8E8E8E8E8E8E8
          E8E8E8E809E8E8E8E8E8E8E8E8E8E8E8E8E8E8E881E8E8E8E8E8E8E8E8E8E8E8
          E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E85E5E5E5E5E5E
          5EE8E8A378787878787881818181818181E8E8818181818181815ED7D7D7D7D7
          5EE8E8A3D5D5D5D5D57881E8E8E8E8E881E8E881ACACACACAC815ED7D7D7D7D7
          5EE8E8A3D5D5D5D5D57881E8E8E8E8E881E8E881ACACACACAC815ED7D7D7D7D7
          5EE8E8A3D5D5D5D5D57881E8E8E8E8E881E8E881ACACACACAC815ED7D7D7D7D7
          5EE8E8A3D5D5D5D5D57881E8E8E8E8E881E8E881ACACACACAC815ED7D75E5E5E
          5EE8E8A3D5D5A3A3A3A381E8E881818181E8E881ACAC818181815ED7D75EE35E
          E8E8E8A3D5D5A3D678E881E8E881E381E8E8E881ACAC81AC81E85ED7D75E5EE8
          E8E8E8A3D5D5A378E8E881E8E88181E8E8E8E881ACAC8181E8E85E5E5E5EE8E8
          E8E8E8A3A3A3A3E8E8E881818181E8E8E8E8E881818181E8E8E8}
        NumGlyphs = 2
      end
      object print_btn: TRzBitBtn
        Left = 642
        Top = 5
        Caption = 'Print'
        Enabled = False
        TabOrder = 5
        OnClick = print_btnClick
        Glyph.Data = {
          36060000424D3606000000000000360400002800000020000000100000000100
          08000000000000020000730E0000730E00000001000000000000000000003300
          00006600000099000000CC000000FF0000000033000033330000663300009933
          0000CC330000FF33000000660000336600006666000099660000CC660000FF66
          000000990000339900006699000099990000CC990000FF99000000CC000033CC
          000066CC000099CC0000CCCC0000FFCC000000FF000033FF000066FF000099FF
          0000CCFF0000FFFF000000003300330033006600330099003300CC003300FF00
          330000333300333333006633330099333300CC333300FF333300006633003366
          33006666330099663300CC663300FF6633000099330033993300669933009999
          3300CC993300FF99330000CC330033CC330066CC330099CC3300CCCC3300FFCC
          330000FF330033FF330066FF330099FF3300CCFF3300FFFF3300000066003300
          66006600660099006600CC006600FF0066000033660033336600663366009933
          6600CC336600FF33660000666600336666006666660099666600CC666600FF66
          660000996600339966006699660099996600CC996600FF99660000CC660033CC
          660066CC660099CC6600CCCC6600FFCC660000FF660033FF660066FF660099FF
          6600CCFF6600FFFF660000009900330099006600990099009900CC009900FF00
          990000339900333399006633990099339900CC339900FF339900006699003366
          99006666990099669900CC669900FF6699000099990033999900669999009999
          9900CC999900FF99990000CC990033CC990066CC990099CC9900CCCC9900FFCC
          990000FF990033FF990066FF990099FF9900CCFF9900FFFF99000000CC003300
          CC006600CC009900CC00CC00CC00FF00CC000033CC003333CC006633CC009933
          CC00CC33CC00FF33CC000066CC003366CC006666CC009966CC00CC66CC00FF66
          CC000099CC003399CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CC
          CC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FF
          CC00CCFFCC00FFFFCC000000FF003300FF006600FF009900FF00CC00FF00FF00
          FF000033FF003333FF006633FF009933FF00CC33FF00FF33FF000066FF003366
          FF006666FF009966FF00CC66FF00FF66FF000099FF003399FF006699FF009999
          FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CCFF00CCCCFF00FFCC
          FF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFFFF00000080000080
          000000808000800000008000800080800000C0C0C00080808000191919004C4C
          4C00B2B2B200E5E5E500C8AC2800E0CC6600F2EABF00B59B2400D8E9EC009933
          6600D075A300ECC6D900646F710099A8AC00E2EFF10000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000E8E8E8E8E8E8
          E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E809090909
          09090909090909E8E8E8E8E88181818181818181818181E8E8E8E85E89898989
          89898989895E5E09E8E8E8E2ACACACACACACACACACE2E281E8E85E5E5E5E5E5E
          5E5E5E5E5E5E095E09E8E2E2E2E2E2E2E2E2E2E2E2E281E281E85ED789898989
          8989898989895E0909E8E2E8ACACACACACACACACACACE28181E85ED789898989
          181289B490895E5E09E8E2E8ACACACACE281ACE281ACE2E281E85ED7D7D7D7D7
          D7D7D7D7D7D75E5E5E09E2E8E8E8E8E8E8E8E8E8E8E8E2E2E2815ED789898989
          8989898989895E5E5E09E2E8ACACACACACACACACACACE2E2E281E85E5E5E5E5E
          5E5E5E5E5E89895E5E09E8E2E2E2E2E2E2E2E2E2E2ACACE2E281E8E85ED7D7D7
          D7D7D7D7D75E89895E09E8E8E2E8E8E8E8E8E8E8E8E2ACACE281E8E8E85ED7E3
          E3E3E3E3D75E5E5E09E8E8E8E8E2E8ACACACACACE8E2E2E281E8E8E8E85ED7D7
          D7D7D7D7D7D75EE8E8E8E8E8E8E2E8E8E8E8E8E8E8E8E2E8E8E8E8E8E8E85ED7
          E3E3E3E3E3D75EE8E8E8E8E8E8E8E2E8ACACACACACE8E2E8E8E8E8E8E8E85ED7
          D7D7D7D7D7D7D75EE8E8E8E8E8E8E2E8E8E8E8E8E8E8E8E2E8E8E8E8E8E8E85E
          5E5E5E5E5E5E5E5EE8E8E8E8E8E8E8E2E2E2E2E2E2E2E2E2E8E8E8E8E8E8E8E8
          E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
        NumGlyphs = 2
      end
      object cxLabel1: TcxLabel
        Left = 14
        Top = 12
        Caption = #3623#3633#3609#3607#3637#3656
      end
    end
  end
  object MyQuery: TMyQuery
    Connection = Module.Connection
    SQL.Strings = (
      'select * from t_person_anc')
    Left = 216
    Top = 152
  end
  object MyData: TMyDataSource
    DataSet = MyQuery
    Left = 272
    Top = 152
  end
  object ppReport: TppReport
    AutoStop = False
    DataPipeline = DBPipeline
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    Template.FileName = 'F:\ANC\report.rtm'
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 728
    Top = 128
    Version = '15.03'
    mmColumnWidth = 0
    DataPipelineName = 'DBPipeline'
    object ppTitleBand1: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = #3594#3639#3656#3629#3619#3634#3618#3591#3634#3609
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'AngsanaUPC'
        Font.Size = 24
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 11642
        mmLeft = 26194
        mmTop = 0
        mmWidth = 24077
        BandType = 1
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = #3619#3634#3618#3591#3634#3609
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'AngsanaUPC'
        Font.Size = 24
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 11642
        mmLeft = 5292
        mmTop = 0
        mmWidth = 17463
        BandType = 1
        LayerName = Foreground
      end
    end
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppShape21: TppShape
        UserName = 'Shape21'
        mmHeight = 4763
        mmLeft = 260615
        mmTop = 0
        mmWidth = 15346
        BandType = 0
        LayerName = Foreground
      end
      object ppShape20: TppShape
        UserName = 'Shape20'
        mmHeight = 4763
        mmLeft = 245003
        mmTop = 0
        mmWidth = 16140
        BandType = 0
        LayerName = Foreground
      end
      object ppShape19: TppShape
        UserName = 'Shape19'
        mmHeight = 4763
        mmLeft = 234421
        mmTop = 0
        mmWidth = 10848
        BandType = 0
        LayerName = Foreground
      end
      object ppShape18: TppShape
        UserName = 'Shape18'
        mmHeight = 4763
        mmLeft = 223573
        mmTop = 0
        mmWidth = 11113
        BandType = 0
        LayerName = Foreground
      end
      object ppShape17: TppShape
        UserName = 'Shape17'
        mmHeight = 4763
        mmLeft = 212990
        mmTop = 0
        mmWidth = 11113
        BandType = 0
        LayerName = Foreground
      end
      object ppShape16: TppShape
        UserName = 'Shape16'
        mmHeight = 4763
        mmLeft = 202142
        mmTop = 0
        mmWidth = 11377
        BandType = 0
        LayerName = Foreground
      end
      object ppShape14: TppShape
        UserName = 'Shape104'
        mmHeight = 4763
        mmLeft = 179652
        mmTop = 0
        mmWidth = 23019
        BandType = 0
        LayerName = Foreground
      end
      object ppShape12: TppShape
        UserName = 'Shape102'
        mmHeight = 4763
        mmLeft = 153723
        mmTop = 0
        mmWidth = 26194
        BandType = 0
        LayerName = Foreground
      end
      object ppShape10: TppShape
        UserName = 'Shape10'
        mmHeight = 4763
        mmLeft = 123561
        mmTop = 0
        mmWidth = 30427
        BandType = 0
        LayerName = Foreground
      end
      object ppShape8: TppShape
        UserName = 'Shape8'
        mmHeight = 4763
        mmLeft = 87842
        mmTop = 0
        mmWidth = 35719
        BandType = 0
        LayerName = Foreground
      end
      object ppShape6: TppShape
        UserName = 'Shape6'
        mmHeight = 4763
        mmLeft = 57944
        mmTop = 0
        mmWidth = 30427
        BandType = 0
        LayerName = Foreground
      end
      object ppShape4: TppShape
        UserName = 'Shape4'
        mmHeight = 4763
        mmLeft = 25135
        mmTop = 0
        mmWidth = 33338
        BandType = 0
        LayerName = Foreground
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 4763
        mmLeft = 0
        mmTop = 0
        mmWidth = 25665
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Caption = #3594#3639#3656#3629
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'AngsanaUPC'
        Font.Size = 14
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 4763
        mmLeft = 26194
        mmTop = 0
        mmWidth = 32279
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Caption = #3609#3634#3617#3626#3585#3640#3621
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'AngsanaUPC'
        Font.Size = 14
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 4763
        mmLeft = 59267
        mmTop = 0
        mmWidth = 29104
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        AutoSize = False
        Caption = #3605#3635#3610#3621
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'AngsanaUPC'
        Font.Size = 14
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 4763
        mmLeft = 89165
        mmTop = 0
        mmWidth = 34396
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        AutoSize = False
        Caption = #3618#3656#3629#3617#3610#3657#3634#3609
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'AngsanaUPC'
        Font.Size = 14
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 4763
        mmLeft = 124619
        mmTop = 0
        mmWidth = 29369
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        AutoSize = False
        Caption = #3585#3635#3627#3609#3604#3588#3621#3629#3604
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'AngsanaUPC'
        Font.Size = 14
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 4763
        mmLeft = 154782
        mmTop = 0
        mmWidth = 25135
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        AutoSize = False
        Caption = #3623#3633#3609#3607#3637#3656#3588#3621#3629#3604
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'AngsanaUPC'
        Font.Size = 14
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 4763
        mmLeft = 180975
        mmTop = 0
        mmWidth = 21696
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        AutoSize = False
        Caption = 'risk1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'AngsanaUPC'
        Font.Size = 14
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 4763
        mmLeft = 203465
        mmTop = 0
        mmWidth = 10054
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        AutoSize = False
        Caption = 'risk2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'AngsanaUPC'
        Font.Size = 14
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 4763
        mmLeft = 214048
        mmTop = 0
        mmWidth = 10054
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        AutoSize = False
        Caption = 'risk3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'AngsanaUPC'
        Font.Size = 14
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 4763
        mmLeft = 224632
        mmTop = 0
        mmWidth = 10054
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        AutoSize = False
        Caption = 'anc5'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'AngsanaUPC'
        Font.Size = 14
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 4763
        mmLeft = 235480
        mmTop = 0
        mmWidth = 9790
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        AutoSize = False
        Caption = 'anc12w'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'AngsanaUPC'
        Font.Size = 14
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 4763
        mmLeft = 245798
        mmTop = 0
        mmWidth = 15346
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        AutoSize = False
        Caption = #3612#3641#3657#3610#3633#3609#3607#3638#3585
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'AngsanaUPC'
        Font.Size = 14
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 4763
        mmLeft = 2381
        mmTop = 0
        mmWidth = 23283
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        AutoSize = False
        Caption = #3605#3656#3634#3591#3604#3657#3634#3623
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'AngsanaUPC'
        Font.Size = 14
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 4763
        mmLeft = 261673
        mmTop = 0
        mmWidth = 14288
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 9260
      mmPrintPosition = 0
      object ppShape27: TppShape
        UserName = 'Shape27'
        mmHeight = 4763
        mmLeft = 245005
        mmTop = 0
        mmWidth = 16140
        BandType = 4
        LayerName = Foreground
      end
      object ppShape26: TppShape
        UserName = 'Shape26'
        mmHeight = 4763
        mmLeft = 234421
        mmTop = 0
        mmWidth = 11377
        BandType = 4
        LayerName = Foreground
      end
      object ppShape25: TppShape
        UserName = 'Shape25'
        mmHeight = 4763
        mmLeft = 223573
        mmTop = 0
        mmWidth = 11377
        BandType = 4
        LayerName = Foreground
      end
      object ppShape24: TppShape
        UserName = 'Shape24'
        mmHeight = 4763
        mmLeft = 212990
        mmTop = 0
        mmWidth = 11377
        BandType = 4
        LayerName = Foreground
      end
      object ppShape23: TppShape
        UserName = 'Shape23'
        mmHeight = 4763
        mmLeft = 202142
        mmTop = 0
        mmWidth = 11377
        BandType = 4
        LayerName = Foreground
      end
      object ppShape22: TppShape
        UserName = 'Shape22'
        mmHeight = 4763
        mmLeft = 260615
        mmTop = 0
        mmWidth = 15346
        BandType = 4
        LayerName = Foreground
      end
      object ppShape15: TppShape
        UserName = 'Shape105'
        mmHeight = 4763
        mmLeft = 179652
        mmTop = 0
        mmWidth = 23019
        BandType = 4
        LayerName = Foreground
      end
      object ppShape13: TppShape
        UserName = 'Shape103'
        mmHeight = 4763
        mmLeft = 153723
        mmTop = 0
        mmWidth = 26194
        BandType = 4
        LayerName = Foreground
      end
      object ppShape11: TppShape
        UserName = 'Shape101'
        mmHeight = 4763
        mmLeft = 123561
        mmTop = 0
        mmWidth = 30427
        BandType = 4
        LayerName = Foreground
      end
      object ppShape9: TppShape
        UserName = 'Shape9'
        mmHeight = 4763
        mmLeft = 87842
        mmTop = 0
        mmWidth = 35719
        BandType = 4
        LayerName = Foreground
      end
      object ppShape5: TppShape
        UserName = 'Shape5'
        mmHeight = 4763
        mmLeft = 25135
        mmTop = 0
        mmWidth = 33338
        BandType = 4
        LayerName = Foreground
      end
      object ppShape7: TppShape
        UserName = 'Shape7'
        mmHeight = 4763
        mmLeft = 57944
        mmTop = 0
        mmWidth = 30427
        BandType = 4
        LayerName = Foreground
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        mmHeight = 4763
        mmLeft = 0
        mmTop = 4496
        mmWidth = 25665
        BandType = 4
        LayerName = Foreground
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 4763
        mmLeft = 0
        mmTop = 0
        mmWidth = 25665
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'fname'
        DataPipeline = DBPipeline
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'AngsanaUPC'
        Font.Size = 14
        Font.Style = []
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'DBPipeline'
        mmHeight = 4763
        mmLeft = 26194
        mmTop = 0
        mmWidth = 31221
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'lname'
        DataPipeline = DBPipeline
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'AngsanaUPC'
        Font.Size = 14
        Font.Style = []
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'DBPipeline'
        mmHeight = 4763
        mmLeft = 59267
        mmTop = 0
        mmWidth = 29104
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'tumbon'
        DataPipeline = DBPipeline
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'AngsanaUPC'
        Font.Size = 14
        Font.Style = []
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'DBPipeline'
        mmHeight = 4763
        mmLeft = 89165
        mmTop = 0
        mmWidth = 34396
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'home'
        DataPipeline = DBPipeline
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'AngsanaUPC'
        Font.Size = 14
        Font.Style = []
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'DBPipeline'
        mmHeight = 4763
        mmLeft = 124619
        mmTop = 0
        mmWidth = 29369
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'edc'
        DataPipeline = DBPipeline
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'AngsanaUPC'
        Font.Size = 14
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'DBPipeline'
        mmHeight = 4763
        mmLeft = 154782
        mmTop = 0
        mmWidth = 25135
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'bdate'
        DataPipeline = DBPipeline
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'AngsanaUPC'
        Font.Size = 14
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'DBPipeline'
        mmHeight = 4763
        mmLeft = 180975
        mmTop = 0
        mmWidth = 21696
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'risk1'
        DataPipeline = DBPipeline
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'AngsanaUPC'
        Font.Size = 14
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'DBPipeline'
        mmHeight = 4763
        mmLeft = 203465
        mmTop = 0
        mmWidth = 10054
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'risk2'
        DataPipeline = DBPipeline
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'AngsanaUPC'
        Font.Size = 14
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'DBPipeline'
        mmHeight = 4763
        mmLeft = 214048
        mmTop = 0
        mmWidth = 10054
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'risk3'
        DataPipeline = DBPipeline
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'AngsanaUPC'
        Font.Size = 14
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'DBPipeline'
        mmHeight = 4763
        mmLeft = 224632
        mmTop = 0
        mmWidth = 10054
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'anc5'
        DataPipeline = DBPipeline
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'AngsanaUPC'
        Font.Size = 14
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'DBPipeline'
        mmHeight = 4763
        mmLeft = 235480
        mmTop = 0
        mmWidth = 9790
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataField = 'anc12w'
        DataPipeline = DBPipeline
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'AngsanaUPC'
        Font.Size = 14
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'DBPipeline'
        mmHeight = 4763
        mmLeft = 245798
        mmTop = 0
        mmWidth = 15346
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        DataField = 'hospital'
        DataPipeline = DBPipeline
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'AngsanaUPC'
        Font.Size = 14
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'DBPipeline'
        mmHeight = 4763
        mmLeft = 2381
        mmTop = 0
        mmWidth = 21696
        BandType = 4
        LayerName = Foreground
      end
      object ppDBMemo1: TppDBMemo
        UserName = 'DBMemo1'
        CharWrap = False
        DataField = 'detail'
        DataPipeline = DBPipeline
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'AngsanaUPC'
        Font.Size = 14
        Font.Style = []
        RemoveEmptyLines = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'DBPipeline'
        mmHeight = 4763
        mmLeft = 26194
        mmTop = 4497
        mmWidth = 245798
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        AutoSize = False
        Caption = #3627#3617#3634#3618#3648#3627#3605#3640
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'AngsanaUPC'
        Font.Size = 14
        Font.Style = []
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 4763
        mmLeft = 2381
        mmTop = 4497
        mmWidth = 17727
        BandType = 4
        LayerName = Foreground
      end
      object ppShape28: TppShape
        UserName = 'Shape28'
        mmHeight = 4763
        mmLeft = 25135
        mmTop = 4496
        mmWidth = 250825
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        DataField = 'labor'
        DataPipeline = DBPipeline
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'AngsanaUPC'
        Font.Size = 14
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'DBPipeline'
        mmHeight = 4763
        mmLeft = 263261
        mmTop = 0
        mmWidth = 10319
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
    end
    object raCodeModule1: TraCodeModule
      ProgramStream = {00}
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object DBPipeline: TppDBPipeline
    DataSource = for_print
    UserName = 'DBPipeline'
    Left = 664
    Top = 128
  end
  object for_print: TMyDataSource
    DataSet = QP
    Left = 272
    Top = 208
  end
  object QP: TMyQuery
    Connection = Module.Connection
    Left = 216
    Top = 208
  end
end
