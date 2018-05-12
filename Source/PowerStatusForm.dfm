object FormWidget: TFormWidget
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'System power control'
  ClientHeight = 55
  ClientWidth = 265
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  GlassFrame.Enabled = True
  GlassFrame.SheetOfGlass = True
  OldCreateOrder = False
  ScreenSnap = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 9
    Top = 36
    Width = 33
    Height = 13
    Caption = 'Normal'
    GlowSize = 10
  end
  object Label2: TLabel
    Left = 69
    Top = 36
    Width = 53
    Height = 13
    Caption = 'Don'#39't sleep'
    GlowSize = 10
  end
  object Label3: TLabel
    Left = 144
    Top = 36
    Width = 49
    Height = 13
    Caption = 'Display on'
    GlowSize = 10
  end
  object Label4: TLabel
    Left = 209
    Top = 36
    Width = 52
    Height = 13
    Caption = 'Awaymode'
    GlowSize = 10
  end
  object TrackBarExecutionStatus: TTrackBar
    AlignWithMargins = True
    Left = 12
    Top = 0
    Width = 241
    Height = 32
    Margins.Left = 12
    Margins.Top = 0
    Margins.Right = 12
    Align = alTop
    DoubleBuffered = False
    Max = 3
    ParentDoubleBuffered = False
    PageSize = 1
    ShowSelRange = False
    TabOrder = 0
    ThumbLength = 23
    OnChange = TrackBarExecutionStatusChange
    ExplicitLeft = 7
    ExplicitTop = -3
  end
end
