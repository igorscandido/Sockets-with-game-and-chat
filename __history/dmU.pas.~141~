unit dmU;

interface

uses
  System.SysUtils, System.Classes, System.Win.ScktComp, frmChatU,frmPrincipalU;

type
  TdmSockets = class(TDataModule)
    csClient: TClientSocket;
    ssServer: TServerSocket;
    procedure csClientRead(Sender: TObject; Socket: TCustomWinSocket);
    procedure ssServerClientRead(Sender: TObject; Socket: TCustomWinSocket);
    procedure csClientDisconnect(Sender: TObject; Socket: TCustomWinSocket);
  private
    { Private declarations }
  public
    { Public declarations }
    Nickname : String;
  end;

var
  dmSockets: TdmSockets;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

// Client on receive
procedure TdmSockets.csClientDisconnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
  with frmPrincipalU.fMain do
  begin
    BlockTable(true);
  end;
end;

procedure TdmSockets.csClientRead(Sender: TObject;
Socket: TCustomWinSocket);
var
  command : String;
  text : String;
  I : Integer;
  X : integer;
begin

  text := Socket.ReceiveText;

  command := Copy(text, 0, 4);
  text := Copy(text, 5 , text.Length - 4);

  if command = 'msg:' then
  begin
    with frmChatU.fChat do
    begin
      memChat.Lines.Add('');
      memChat.Lines.Add(text);
    end;
  end;

  if command = 'ngm:' then
  begin
    with frmPrincipalU.fMain do
    begin
      SetPlayer(text[1]);
      CleanTable;
      BlockTable(true);
      myTurn := false;
    end;
  end;

  if command = 'mov:' then
  begin
    with frmPrincipalU.fMain do
    begin

      if text = 'btn11' then
        btn11Click(btn11);
      if text = 'btn12' then
        btn11Click(btn12);
      if text = 'btn13' then
        btn11Click(btn13);
      if text = 'btn21' then
        btn11Click(btn21);
      if text = 'btn22' then
        btn11Click(btn22);
      if text = 'btn23' then
        btn11Click(btn23);
      if text = 'btn31' then
        btn11Click(btn31);
      if text = 'btn32' then
        btn11Click(btn32);
      if text = 'btn33' then
        btn11Click(btn33);

      BlockTable(false);
      myTurn := true;

    end;
  end;


end;


// Server on receive
procedure TdmSockets.ssServerClientRead(Sender: TObject;
Socket: TCustomWinSocket);
var
  command : String;
  text : String;
begin

  text := Socket.ReceiveText;

  command := Copy(text, 0, 4);
  text := Copy(text, 5 , text.Length - 4);

  if command = 'msg:' then
  begin
    with frmChatU.fChat do
    begin
      memChat.Lines.Add('');
      memChat.Lines.Add(text);
    end;
  end;

  if command = 'mov:' then
  begin
    with frmPrincipalU.fMain do
    begin

      if text = 'btn11' then
        btn11Click(btn11);
      if text = 'btn12' then
        btn11Click(btn12);
      if text = 'btn13' then
        btn11Click(btn13);
      if text = 'btn21' then
        btn11Click(btn21);
      if text = 'btn22' then
        btn11Click(btn22);
      if text = 'btn23' then
        btn11Click(btn23);
      if text = 'btn31' then
        btn11Click(btn31);
      if text = 'btn32' then
        btn11Click(btn32);
      if text = 'btn33' then
        btn11Click(btn33);

      BlockTable(false);
      myTurn := true;

    end;
  end;

end;

end.
