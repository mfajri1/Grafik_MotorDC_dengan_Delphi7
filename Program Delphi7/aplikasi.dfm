object frmAplikasi: TfrmAplikasi
  Left = -8
  Top = -8
  Width = 1036
  Height = 744
  Caption = 'Voltmeter Digital Ver 1.0'
  Color = 12615680
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object StringGrid1: TStringGrid
    Left = 808
    Top = 56
    Width = 161
    Height = 641
    ColCount = 2
    RowCount = 1000
    TabOrder = 0
  end
  object GroupBox1: TGroupBox
    Left = 48
    Top = 576
    Width = 705
    Height = 121
    Caption = 's'
    TabOrder = 2
    object Label3: TLabel
      Left = 16
      Top = 24
      Width = 67
      Height = 13
      Caption = 'TANGGAL :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 16
      Top = 44
      Width = 33
      Height = 13
      Caption = 'JAM :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl_tgl: TLabel
      Left = 88
      Top = 24
      Width = 5
      Height = 13
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clAqua
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl_jam: TLabel
      Left = 88
      Top = 44
      Width = 5
      Height = 13
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clAqua
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label_Keterangan: TLabel
      Left = 272
      Top = 40
      Width = 23
      Height = 16
      Caption = 'Ket'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl_count_data: TLabel
      Left = 272
      Top = 16
      Width = 8
      Height = 13
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 192
      Top = 16
      Width = 66
      Height = 13
      Caption = 'DATA KE- :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 192
      Top = 40
      Width = 74
      Height = 13
      Caption = 'Keterangan :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btConnect: TBitBtn
      Left = 16
      Top = 72
      Width = 105
      Height = 33
      Caption = '&Connect'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btConnectClick
    end
    object btRunning: TBitBtn
      Left = 144
      Top = 72
      Width = 97
      Height = 33
      Caption = '&Running'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btRunningClick
    end
    object btClear: TBitBtn
      Left = 264
      Top = 72
      Width = 97
      Height = 33
      Caption = '&Clear'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btClearClick
    end
    object btExit: TBitBtn
      Left = 384
      Top = 72
      Width = 97
      Height = 33
      Caption = '&Exit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = btExitClick
    end
    object Edit1: TEdit
      Left = 560
      Top = 80
      Width = 57
      Height = 21
      TabOrder = 4
    end
    object ed_tegangan: TEdit
      Left = 632
      Top = 80
      Width = 57
      Height = 21
      TabOrder = 5
    end
    object CheckBox1: TCheckBox
      Left = 496
      Top = 88
      Width = 41
      Height = 17
      Caption = '3D'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = CheckBox1Click
    end
  end
  object Chart1: TChart
    Left = 48
    Top = 61
    Width = 705
    Height = 484
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Foot.AdjustFrame = False
    Foot.Brush.Color = 8388863
    Foot.Color = clSilver
    Foot.Font.Charset = DEFAULT_CHARSET
    Foot.Font.Color = clRed
    Foot.Font.Height = -11
    Foot.Font.Name = 'Arial'
    Foot.Font.Style = [fsBold, fsItalic]
    Foot.Text.Strings = (
      'Waktu Dalam  detik')
    Title.Font.Charset = DEFAULT_CHARSET
    Title.Font.Color = clBlue
    Title.Font.Height = -13
    Title.Font.Name = 'Arial'
    Title.Font.Style = [fsBold, fsItalic]
    Title.Text.Strings = (
      'VOLTMETER')
    BottomAxis.Automatic = False
    BottomAxis.AutomaticMaximum = False
    BottomAxis.AutomaticMinimum = False
    BottomAxis.ExactDateTime = False
    BottomAxis.Increment = 1.000000000000000000
    BottomAxis.Maximum = 20.000000000000000000
    BottomAxis.TitleSize = 2
    Chart3DPercent = 20
    LeftAxis.Automatic = False
    LeftAxis.AutomaticMaximum = False
    LeftAxis.AutomaticMinimum = False
    LeftAxis.ExactDateTime = False
    LeftAxis.Increment = 1.000000000000000000
    LeftAxis.Maximum = 10.000000000000000000
    LeftAxis.Title.Caption = 'Tegangan'
    LeftAxis.Title.Font.Charset = DEFAULT_CHARSET
    LeftAxis.Title.Font.Color = clBlack
    LeftAxis.Title.Font.Height = -11
    LeftAxis.Title.Font.Name = 'Arial'
    LeftAxis.Title.Font.Style = [fsBold, fsItalic]
    Legend.Alignment = laTop
    Legend.Visible = False
    View3D = False
    TabOrder = 1
    object Series1: TLineSeries
      Marks.ArrowLength = 8
      Marks.Style = smsValue
      Marks.Visible = False
      SeriesColor = clRed
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
  end
  object MSComm1: TMSComm
    Left = 104
    Top = 8
    Width = 32
    Height = 32
    ControlData = {
      2143341208000000ED030000ED03000001568A64000006000000040000040000
      00020000802500000000080000000000000000003F00000001000000}
  end
  object Timer1: TTimer
    Interval = 500
    OnTimer = Timer1Timer
    Left = 56
    Top = 8
  end
end
