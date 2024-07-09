object nama: Tnama
  Left = 192
  Top = 151
  Width = 659
  Height = 541
  Caption = 'satuan'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object TLabel
    Left = 216
    Top = 80
    Width = 3
    Height = 13
  end
  object lblnama: TLabel
    Left = 256
    Top = 88
    Width = 27
    Height = 13
    Caption = 'Nama'
  end
  object lbl1: TLabel
    Left = 248
    Top = 128
    Width = 38
    Height = 13
    Caption = 'Diskripsi'
  end
  object lbl2: TLabel
    Left = 208
    Top = 400
    Width = 72
    Height = 13
    Caption = 'Masukan Nama'
  end
  object btn1: TButton
    Left = 208
    Top = 176
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 0
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 304
    Top = 176
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 1
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 408
    Top = 176
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 2
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 504
    Top = 176
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 3
    OnClick = btn4Click
  end
  object edt3: TEdit
    Left = 320
    Top = 392
    Width = 121
    Height = 21
    TabOrder = 4
    OnChange = edt3Change
  end
  object dbgrd1: TDBGrid
    Left = 224
    Top = 224
    Width = 320
    Height = 120
    DataSource = DataModule2.ds1
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object edt1: TEdit
    Left = 344
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object edt2: TEdit
    Left = 344
    Top = 120
    Width = 121
    Height = 21
    TabOrder = 7
  end
end
