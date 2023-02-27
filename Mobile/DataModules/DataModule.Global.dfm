object dmGlobal: TdmGlobal
  OnCreate = DataModuleCreate
  Height = 349
  Width = 490
  PixelsPerInch = 120
  object Conn: TFDConnection
    Params.Strings = (
      'LockingMode=Normal'
      'DriverID=SQLite')
    LoginPrompt = False
    AfterConnect = ConnAfterConnect
    BeforeConnect = ConnBeforeConnect
    Left = 40
    Top = 32
  end
  object TabUsuario: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 376
    Top = 128
  end
  object qryUsuario: TFDQuery
    Connection = Conn
    Left = 56
    Top = 136
  end
  object TabTreino: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 376
    Top = 32
  end
  object qryTreinoExercicio: TFDQuery
    Connection = Conn
    Left = 48
    Top = 240
  end
  object qryConsEstatistica: TFDQuery
    Connection = Conn
    Left = 152
    Top = 200
  end
  object qryConsTreino: TFDQuery
    Connection = Conn
    Left = 152
    Top = 120
  end
  object qryConsExercicio: TFDQuery
    Connection = Conn
    Left = 272
    Top = 224
  end
  object qryAtividade: TFDQuery
    Connection = Conn
    Left = 168
    Top = 40
  end
  object qryGeral: TFDQuery
    Connection = Conn
    Left = 248
    Top = 136
  end
end
