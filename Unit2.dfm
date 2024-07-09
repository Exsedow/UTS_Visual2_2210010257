object DataModule2: TDataModule2
  OldCreateOrder = False
  Left = 193
  Top = 129
  Height = 252
  Width = 431
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'E:\SEMESTER 4\joki\2210020257_uts\libmysql.dll'
    Left = 48
    Top = 48
  end
  object zqry1: TZQuery
    Connection = con1
    Filtered = True
    Active = True
    SQL.Strings = (
      'select * from satuan')
    Params = <>
    Left = 128
    Top = 64
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 184
    Top = 72
  end
end
