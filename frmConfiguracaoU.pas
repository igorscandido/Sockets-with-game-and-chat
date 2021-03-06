unit frmConfiguracaoU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ComCtrls;

type
  TfrmConfiguracao = class(TForm)
    pgcConfiguracao: TPageControl;
    tbsServidor: TTabSheet;
    tbsCliente: TTabSheet;
    Label1: TLabel;
    edtServidorPorta: TEdit;
    btnServidorAtivar: TBitBtn;
    Label2: TLabel;
    Label3: TLabel;
    edtClienteHost: TEdit;
    edtClientePorta: TEdit;
    btnClienteAtivar: TBitBtn;
    pnNomeJogador: TPanel;
    Label4: TLabel;
    edtNickname: TEdit;
    pnControle: TPanel;
    btnFechar: TBitBtn;
    procedure btnFecharClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnServidorAtivarClick(Sender: TObject);
    procedure btnClienteAtivarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfiguracao: TfrmConfiguracao;

implementation

{$R *.dfm}

uses
  frmPrincipalU,dmU;



procedure TfrmConfiguracao.btnClienteAtivarClick(Sender: TObject);
begin
  with dmU.dmSockets do
  begin

    if ssServer.Active then
    begin
      ShowMessage('Voc? n?o pode ser o cliente e o servidor ao mesmo tempo!');
      Exit;
    end
    else
    begin
      if csClient.Active then
      begin
        csClient.Active := false;
        btnClienteAtivar.Caption := 'Ativar';

        with frmPrincipalU.fMain do
        begin
          sbMain.Panels[3].Text := 'Desconectado';
        end;

      end
      else
      begin
        csClient.Port := StrToInt(edtServidorPorta.Text);
        csClient.Host := edtClienteHost.Text;

        try
          csClient.Active := true;
        except
          ShowMessage('Os dados do servidor est?o errados');
          Exit;
        end;

        Nickname := edtNickname.Text;
        btnClienteAtivar.Caption := 'Desativar';

        with frmPrincipalU.fMain do
        begin
          sbMain.Panels[3].Text := 'Conectado';
        end;

        Self.Close;
      end;
    end;
    
  
  end;
end;

procedure TfrmConfiguracao.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmConfiguracao.btnServidorAtivarClick(Sender: TObject);
begin
  with dmU.dmSockets do
  begin
    if csClient.Active then
    begin
      ShowMessage('Voc? n?o pode criar um servidor se estiver conectado como cliente.');
      Exit;
    end
    else
    begin
      if ssServer.Active then
      begin
        ssServer.Active := false;
        btnServidorAtivar.Caption := 'Ativar';

        with frmPrincipalU.fMain do
        begin
          sbMain.Panels[3].Text := 'Desconectado';
        end;

      end
      else
      begin
        ssServer.Port := StrToInt(edtServidorPorta.Text);

        try
          ssServer.Active := true;
        except
          ShowMessage('Ocorreu um erro e n?o foi poss?vel iniciar o servidor.');
        end;

        Nickname := edtNickname.Text;
        btnServidorAtivar.Caption := 'Desativar';

        with frmPrincipalU.fMain do
        begin
          sbMain.Panels[3].Text := 'Servidor Ativado';
          btnNewGame.Enabled := true;
        end;

        Self.Close;
      end;
    end;
  end;

end;

procedure TfrmConfiguracao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if Key = vk_escape then
    btnFechar.Click;

end;

end.
