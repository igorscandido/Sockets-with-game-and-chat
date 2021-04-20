object dmSockets: TdmSockets
  OldCreateOrder = False
  Height = 82
  Width = 136
  object csClient: TClientSocket
    Active = False
    ClientType = ctNonBlocking
    Port = 45675
    OnDisconnect = csClientDisconnect
    OnRead = csClientRead
    Left = 16
    Top = 16
  end
  object ssServer: TServerSocket
    Active = False
    Port = 45675
    ServerType = stNonBlocking
    OnClientRead = ssServerClientRead
    Left = 88
    Top = 18
  end
end
