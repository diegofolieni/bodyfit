object DmGlobal: TDmGlobal
  OnCreate = DataModuleCreate
  Height = 414
  Width = 633
  PixelsPerInch = 120
  object Conn: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Diego\Documents\WorkSpace\Bodyfit\ServidorHors' +
        'e\DB\BANCO.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'Server=localhost'
      'DriverID=FB')
    TxOptions.Isolation = xiDirtyRead
    LoginPrompt = False
    BeforeConnect = ConnBeforeConnect
    Left = 104
    Top = 64
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 224
    Top = 64
  end
end
