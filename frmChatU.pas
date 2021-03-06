unit frmChatU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TfChat = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    edtMsg: TEdit;
    Button1: TButton;
    memChat: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure edtMsgKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fChat: TfChat;

implementation

{$R *.dfm}

uses
  dmU;

procedure TfChat.Button1Click(Sender: TObject);
begin
  with dmU.dmSockets do
  begin

    if csClient.Active then
    begin
      if edtMsg.Text <> '' then
      begin
        try
          csClient.Socket.SendText('msg:' + Nickname + ' diz: ' + edtMsg.Text);
        except
          ShowMessage('N?o foi poss?vel enviar a mensagem!');
        end;
        memChat.Lines.Add('');
        memChat.Lines.Add('Voc?: ' + edtMsg.Text);
      end;
    end;

    if ssServer.Active then
    begin
      if edtMsg.Text <> '' then
      begin
        try
          ssServer.Socket.Connections[0].SendText('msg:' + Nickname + ' diz: ' + edtMsg.Text);
        except
          if not ssServer.Socket.Connections[0].Connected then
            ShowMessage('Ninguem est? conectado a sala de bate-papo')
          else
            ShowMessage('N?o foi poss?vel enviar a mensagem!');
        end;
        memChat.Lines.Add('');
        memChat.Lines.Add('Voc?: ' + edtMsg.Text);
      end;
    end;

  end;

end;

procedure TfChat.edtMsgKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    Button1Click(Sender);
end;

procedure TfChat.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    Close;
end;

end.
