object fMain: TfMain
  Left = 0
  Top = 0
  Caption = 'Jogo da Velha'
  ClientHeight = 451
  ClientWidth = 718
  Color = clBtnFace
  Constraints.MinHeight = 400
  Constraints.MinWidth = 550
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = menu
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 545
    Top = 0
    Height = 432
    Align = alRight
    ExplicitLeft = 485
    ExplicitTop = -8
    ExplicitHeight = 403
  end
  object gpTabuleiro: TGridPanel
    Left = 0
    Top = 0
    Width = 545
    Height = 432
    Align = alClient
    ColumnCollection = <
      item
        Value = 33.542651641660900000
      end
      item
        Value = 33.207485569344020000
      end
      item
        Value = 33.249862788995080000
      end>
    ControlCollection = <
      item
        Column = 0
        Control = btn11
        Row = 0
      end
      item
        Column = 1
        Control = btn12
        Row = 0
      end
      item
        Column = 2
        Control = btn13
        Row = 0
      end
      item
        Column = 0
        Control = btn21
        Row = 1
      end
      item
        Column = 1
        Control = btn22
        Row = 1
      end
      item
        Column = 2
        Control = btn23
        Row = 1
      end
      item
        Column = 0
        Control = btn31
        Row = 2
      end
      item
        Column = 1
        Control = btn32
        Row = 2
      end
      item
        Column = 2
        Control = btn33
        Row = 2
      end>
    RowCollection = <
      item
        Value = 33.443178998012120000
      end
      item
        Value = 33.270200279279390000
      end
      item
        Value = 33.286620722708480000
      end>
    TabOrder = 0
    object btn11: TBitBtn
      Left = 1
      Top = 1
      Width = 182
      Height = 143
      Align = alClient
      Caption = 'X'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -48
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btn11Click
    end
    object btn12: TBitBtn
      Left = 183
      Top = 1
      Width = 180
      Height = 143
      Align = alClient
      Caption = 'X'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -48
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btn11Click
    end
    object btn13: TBitBtn
      Left = 363
      Top = 1
      Width = 181
      Height = 143
      Align = alClient
      Caption = 'X'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -48
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btn11Click
    end
    object btn21: TBitBtn
      Left = 1
      Top = 144
      Width = 182
      Height = 143
      Align = alClient
      Caption = 'X'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -48
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btn11Click
    end
    object btn22: TBitBtn
      Left = 183
      Top = 144
      Width = 180
      Height = 143
      Align = alClient
      Caption = 'X'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -48
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = btn11Click
    end
    object btn23: TBitBtn
      Left = 363
      Top = 144
      Width = 181
      Height = 143
      Align = alClient
      Caption = 'X'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -48
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = btn11Click
    end
    object btn31: TBitBtn
      Left = 1
      Top = 287
      Width = 182
      Height = 144
      Align = alClient
      Caption = 'X'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -48
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = btn11Click
    end
    object btn32: TBitBtn
      Left = 183
      Top = 287
      Width = 180
      Height = 144
      Align = alClient
      Caption = 'X'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -48
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = btn11Click
    end
    object btn33: TBitBtn
      Left = 363
      Top = 287
      Width = 181
      Height = 144
      Align = alClient
      Caption = 'X'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -48
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = btn11Click
    end
  end
  object pnComandos: TPanel
    Left = 548
    Top = 0
    Width = 170
    Height = 432
    Align = alRight
    Constraints.MaxWidth = 300
    Constraints.MinWidth = 120
    TabOrder = 1
    object btnNewGame: TSpeedButton
      AlignWithMargins = True
      Left = 4
      Top = 269
      Width = 162
      Height = 34
      Margins.Top = 5
      Align = alTop
      Caption = 'Novo Jogo'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Trebuchet MS'
      Font.Style = []
      ParentFont = False
      OnClick = btnNewGameClick
      ExplicitLeft = 3
      ExplicitTop = 272
    end
    object gbxPlacar: TGroupBox
      Left = 1
      Top = 113
      Width = 168
      Height = 151
      Align = alTop
      Caption = 'Placar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object lblO: TLabel
        AlignWithMargins = True
        Left = 8
        Top = 31
        Width = 152
        Height = 29
        Margins.Left = 6
        Margins.Top = 10
        Margins.Right = 6
        Margins.Bottom = 0
        Align = alTop
        Caption = 'O: 0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -24
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 46
      end
      object lblX: TLabel
        AlignWithMargins = True
        Left = 8
        Top = 70
        Width = 152
        Height = 29
        Margins.Left = 6
        Margins.Top = 10
        Margins.Right = 6
        Margins.Bottom = 0
        Align = alTop
        Caption = 'X: 0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -24
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 43
      end
      object lblTimesPlayed: TLabel
        AlignWithMargins = True
        Left = 8
        Top = 109
        Width = 152
        Height = 29
        Margins.Left = 6
        Margins.Top = 10
        Margins.Right = 6
        Margins.Bottom = 0
        Align = alTop
        Caption = 'Total: 0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 82
      end
    end
    object gbxJogador: TGroupBox
      Left = 1
      Top = 1
      Width = 168
      Height = 112
      Align = alTop
      Caption = #201' a vez de:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object lblCurrentPlayer: TLabel
        AlignWithMargins = True
        Left = 5
        Top = 24
        Width = 158
        Height = 77
        Align = alTop
        Alignment = taCenter
        AutoSize = False
        Caption = 'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -64
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 7
        ExplicitTop = 29
      end
    end
  end
  object sbMain: TStatusBar
    Left = 0
    Top = 432
    Width = 718
    Height = 19
    Anchors = []
    Panels = <
      item
        Width = 120
      end
      item
        Width = 150
      end
      item
        Alignment = taCenter
        Text = 'CPEM - Clube de Programa'#231#227'o Eletr'#244' Mococa      '
        Width = 270
      end
      item
        Text = 'Desconectado'
        Width = 30
      end>
  end
  object menu: TMainMenu
    Left = 160
    Top = 65528
    object Arquivo: TMenuItem
      Caption = '&Arquivo'
      object Abrir: TMenuItem
        Caption = 'A&brir'
        ShortCut = 16449
      end
      object Salvar: TMenuItem
        Caption = '&Salvar'
        ShortCut = 16467
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Configuracoes: TMenuItem
        Caption = '&Configura'#231#245'es'
        ShortCut = 16463
        OnClick = ConfiguracoesClick
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Sair: TMenuItem
        Caption = 'Sai&r'
        ShortCut = 16465
        OnClick = SairClick
      end
    end
    object Chat: TMenuItem
      Caption = 'Chat'
      OnClick = ChatClick
    end
    object Sobre: TMenuItem
      Caption = 'Sobr&e'
      OnClick = SobreClick
    end
  end
  object timer: TTimer
    OnTimer = timerTimer
    Left = 512
    Top = 25
  end
end
