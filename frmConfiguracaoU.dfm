object frmConfiguracao: TfrmConfiguracao
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Configura'#231#245'es'
  ClientHeight = 159
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object pgcConfiguracao: TPageControl
    Left = 0
    Top = 0
    Width = 447
    Height = 81
    ActivePage = tbsCliente
    Align = alTop
    TabOrder = 0
    object tbsServidor: TTabSheet
      Caption = 'Servidor'
      object Label1: TLabel
        Left = 12
        Top = 24
        Width = 88
        Height = 13
        Caption = 'Numero da Porta: '
      end
      object edtServidorPorta: TEdit
        Left = 102
        Top = 21
        Width = 67
        Height = 21
        Alignment = taCenter
        TabOrder = 0
        Text = '1024'
      end
      object btnServidorAtivar: TBitBtn
        Left = 175
        Top = 19
        Width = 82
        Height = 25
        Caption = 'Ativar'
        TabOrder = 1
        OnClick = btnServidorAtivarClick
      end
    end
    object tbsCliente: TTabSheet
      Caption = 'Cliente'
      ImageIndex = 1
      object Label2: TLabel
        Left = 12
        Top = 24
        Width = 39
        Height = 13
        Caption = 'Host IP:'
      end
      object Label3: TLabel
        Left = 179
        Top = 24
        Width = 85
        Height = 13
        Caption = 'Numero da Porta:'
      end
      object edtClienteHost: TEdit
        Left = 55
        Top = 21
        Width = 104
        Height = 21
        Alignment = taCenter
        TabOrder = 0
        Text = '127.0.0.1'
      end
      object edtClientePorta: TEdit
        Left = 267
        Top = 21
        Width = 70
        Height = 21
        Alignment = taCenter
        TabOrder = 1
        Text = '1024'
      end
      object btnClienteAtivar: TBitBtn
        Left = 351
        Top = 19
        Width = 82
        Height = 25
        Caption = 'Ativar'
        TabOrder = 2
        OnClick = btnClienteAtivarClick
      end
    end
  end
  object pnNomeJogador: TPanel
    Left = 0
    Top = 81
    Width = 447
    Height = 41
    Align = alTop
    TabOrder = 1
    object Label4: TLabel
      Left = 18
      Top = 13
      Width = 91
      Height = 13
      Caption = 'Nome do Jogador: '
    end
    object edtNickname: TEdit
      Left = 114
      Top = 10
      Width = 323
      Height = 21
      TabOrder = 0
      Text = 'Jogador'
    end
  end
  object pnControle: TPanel
    Left = 0
    Top = 122
    Width = 447
    Height = 41
    Align = alTop
    TabOrder = 2
    object btnFechar: TBitBtn
      Left = 362
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Fechar'
      TabOrder = 0
      OnClick = btnFecharClick
    end
  end
end
