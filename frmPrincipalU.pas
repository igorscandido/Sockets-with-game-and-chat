unit frmPrincipalU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Menus, Vcl.ComCtrls, Winsock, frmConfiguracaoU, frmChatU, frmAboutU;

type
  TfMain = class(TForm)
    menu: TMainMenu;
    Arquivo: TMenuItem;
    Sobre: TMenuItem;
    Configuracoes: TMenuItem;
    Abrir: TMenuItem;
    Salvar: TMenuItem;
    N1: TMenuItem;
    Sair: TMenuItem;
    N2: TMenuItem;
    gpTabuleiro: TGridPanel;
    pnComandos: TPanel;
    btn11: TBitBtn;
    btn12: TBitBtn;
    btn13: TBitBtn;
    btn21: TBitBtn;
    btn22: TBitBtn;
    btn23: TBitBtn;
    btn31: TBitBtn;
    btn32: TBitBtn;
    btn33: TBitBtn;
    gbxPlacar: TGroupBox;
    gbxJogador: TGroupBox;
    lblCurrentPlayer: TLabel;
    lblO: TLabel;
    lblX: TLabel;
    lblTimesPlayed: TLabel;
    btnNewGame: TSpeedButton;
    Splitter1: TSplitter;
    sbMain: TStatusBar;
    timer: TTimer;
    Chat: TMenuItem;
    procedure timerTimer(Sender: TObject);
    procedure SobreClick(Sender: TObject);
    procedure ConfiguracoesClick(Sender: TObject);
    procedure SairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ChatClick(Sender: TObject);
    procedure SetPlayer(Player : Char);
    procedure BlockTable(isBlocked : Boolean);
    procedure CleanTable;
    procedure btnNewGameClick(Sender: TObject);
    procedure btn11Click(Sender: TObject);
    procedure SetPosition(btn : TBitBtn);
  private
    { Private declarations }
    function  GetStarterPlayer : Char;
    procedure StartGame;
  public
    { Public declarations }
  end;

var
  fMain: TfMain;
  O_Wins : Integer;
  X_Wins : Integer;
  myTurn : boolean;
  timesPlayed : Integer;

implementation

uses dmU;

{$R *.dfm}

procedure TfMain.StartGame;
begin
  Randomize;
  SetPlayer(GetStarterPlayer);
  CleanTable;
end;

// Gets the IP of the local computer
function GetLocalIP: string;
type
  TaPInAddr = array [0..10] of PInAddr;
  PaPInAddr = ^TaPInAddr;
var
  phe: PHostEnt;
  pptr: PaPInAddr;
  Buffer: array [0..63] of Ansichar;
  i: Integer;
  GInitData: TWSADATA;
begin
  WSAStartup($101, GInitData);
  Result := '';
  GetHostName(Buffer, SizeOf(Buffer));
  phe := GetHostByName(Buffer);
  if phe = nil then
    Exit;
  pptr := PaPInAddr(phe^.h_addr_list);
  i := 0;
  while pptr^[i] <> nil do
  begin
    Result := StrPas(inet_ntoa(pptr^[i]^));
    Inc(i);
  end;
  WSACleanup;
end;

// Randomly gets player X or O
function TfMain.GetStarterPlayer : Char;
var
  randomNumber : Integer;
begin
  randomNumber := Random(9);

  if randomNumber mod 2 = 0 then
  begin
    Result := 'X';
  end
  else
  begin
    Result := 'O';
  end;

end;

// Set's the player on server and client
procedure TfMain.SetPlayer(Player: Char);
begin

  if Player = 'X' then
  begin

    lblCurrentPlayer.Caption := 'X';
    lblCurrentPlayer.Font.Color := clRed;
    BlockTable(false);

    with dmU.dmSockets do
    begin
      if ssServer.Active then begin
        ssServer.Socket.Connections[0].SendText('ngm:X');
      end;
    end;

  end
  else
  begin

    lblCurrentPlayer.Caption := 'O';
    lblCurrentPlayer.Font.Color := clBlue;
    BlockTable(false);

    with dmU.dmSockets do
    begin
      if ssServer.Active then begin
        ssServer.Socket.Connections[0].SendText('ngm:O');
      end;
    end;

  end;

  myTurn := true;

end;

// Block's the table and clean the table buttons
procedure TfMain.BlockTable(isBlocked : Boolean);
begin
  btn11.Enabled := not isBlocked;
  //btn11.Caption := '';

  btn12.Enabled := not isBlocked;
  //btn12.Caption := '';

  btn13.Enabled := not isBlocked;
  //btn13.Caption := '';

  btn21.Enabled := not isBlocked;
  //btn21.Caption := '';

  btn22.Enabled := not isBlocked;
  //btn22.Caption := '';

  btn23.Enabled := not isBlocked;
  //btn23.Caption := '';

  btn31.Enabled := not isBlocked;
  //btn31.Caption := '';

  btn32.Enabled := not isBlocked;
  //btn32.Caption := '';

  btn33.Enabled := not isBlocked;
  //btn33.Caption := '';

end;

procedure TfMain.CleanTable;
begin

  btn11.Caption := '';
  btn12.Caption := '';
  btn13.Caption := '';
  btn21.Caption := '';
  btn22.Caption := '';
  btn23.Caption := '';
  btn31.Caption := '';
  btn32.Caption := '';
  btn33.Caption := '';

end;

// At a movement set's the currentPlayer choise to the clicked button
procedure TfMain.SetPosition(btn : TBitBtn);
begin

  if lblCurrentPlayer.Caption = 'X' then begin

    btn.Caption := lblCurrentPlayer.Caption;
    btn.Font.Color := clRed;

    lblCurrentPlayer.Caption := 'O';
    lblCurrentPlayer.Color := clBlue;

  end
  else begin

    btn.Caption := lblCurrentPlayer.Caption;
    btn.Font.Color := clBlue;

    lblCurrentPlayer.Caption := 'X';
    lblCurrentPlayer.Color := clRed;

  end;

  if myTurn then
  begin
    with dmU.dmSockets do
    begin

      if ssServer.Active = true then
        ssServer.Socket.Connections[0].SendText('mov:' + btn.Name);

      if csClient.Active = true then
        csClient.Socket.SendText('mov:' + btn.Name);

    end;
  end;
  

  BlockTable(true);
  myTurn := false;

end;

// Each click in the table comes into here
procedure TfMain.btn11Click(Sender: TObject);
begin

  SetPosition(TBitBtn(Sender));

end;

// Start's a new game clicking the 'Novo Jogo' button
procedure TfMain.btnNewGameClick(Sender: TObject);
begin
  StartGame;
end;

// Shows the chat form in another screen
procedure TfMain.ChatClick(Sender: TObject);
begin
  frmChatU.fChat.Show;
end;

// Shows the config screen where the player can conect or create a server
procedure TfMain.ConfiguracoesClick(Sender: TObject);
begin
  frmConfiguracaoU.frmConfiguracao.Show;
end;

// Initials necessary config when the form starts
procedure TfMain.FormShow(Sender: TObject);
begin
  btnNewGame.Enabled := false;
  BlockTable(true);
  sbMain.Panels[1].Text := 'Seu IP: ' + GetLocalIP; // Set the lan ip on the status bar
end;

// Close function to end the whole program
procedure TfMain.SairClick(Sender: TObject);
begin
  Close;
end;

// Shows the about form for information
procedure TfMain.SobreClick(Sender: TObject);
begin
  frmAboutU.frmAbout.Show;
end;

// At each second the time changes to the correct time based on clock
procedure TfMain.timerTimer(Sender: TObject);
begin
  sbMain.Panels[0].Text := FormatDateTime('dd/mm/yyyy hh:nn:ss',NOW); //Set's the current time on the status bar
end;

end.
