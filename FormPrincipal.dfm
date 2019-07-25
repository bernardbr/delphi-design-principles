object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Calculador sal'#225'rio'
  ClientHeight = 233
  ClientWidth = 517
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object rdgCargo: TRadioGroup
    Left = 8
    Top = 51
    Width = 502
    Height = 73
    Caption = 'Cargo'
    Columns = 3
    Enabled = False
    Items.Strings = (
      'Comissionado'
      'Assalariado'
      'Assalariado com comiss'#227'o')
    TabOrder = 0
  end
  object edtNomeFuncionario: TLabeledEdit
    Left = 8
    Top = 24
    Width = 375
    Height = 21
    EditLabel.Width = 98
    EditLabel.Height = 13
    EditLabel.Caption = 'Nome do funcion'#225'rio'
    TabOrder = 1
  end
  object btnBuscar: TButton
    Left = 389
    Top = 22
    Width = 121
    Height = 25
    Caption = 'Buscar'
    TabOrder = 2
    OnClick = btnBuscarClick
  end
  object edtSalarioBase: TLabeledEdit
    Left = 8
    Top = 144
    Width = 121
    Height = 21
    EditLabel.Width = 58
    EditLabel.Height = 13
    EditLabel.Caption = 'Sal'#225'rio base'
    ReadOnly = True
    TabOrder = 3
  end
  object estAliquotaComissao: TLabeledEdit
    Left = 135
    Top = 144
    Width = 121
    Height = 21
    EditLabel.Width = 96
    EditLabel.Height = 13
    EditLabel.Caption = 'Al'#237'quita de comiss'#227'o'
    ReadOnly = True
    TabOrder = 4
  end
  object edtFaturamentoDoMes: TLabeledEdit
    Left = 262
    Top = 144
    Width = 121
    Height = 21
    EditLabel.Width = 99
    EditLabel.Height = 13
    EditLabel.Caption = 'Faturamento do m'#234's'
    ReadOnly = True
    TabOrder = 5
  end
  object btnCalcularSalarioFinal: TButton
    Left = 389
    Top = 142
    Width = 121
    Height = 25
    Caption = 'Calcular'
    TabOrder = 6
  end
  object gpbResultado: TGroupBox
    Left = 8
    Top = 171
    Width = 503
    Height = 54
    Caption = 'Resultado'
    TabOrder = 7
    object lblResultado: TLabel
      Left = 16
      Top = 24
      Width = 58
      Height = 13
      Caption = 'lblResultado'
    end
  end
end
