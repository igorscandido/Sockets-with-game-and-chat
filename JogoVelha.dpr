program JogoVelha;

uses
  Vcl.Forms,
  frmPrincipalU in 'frmPrincipalU.pas' {fMain},
  frmConfiguracaoU in 'frmConfiguracaoU.pas' {frmConfiguracao},
  frmAboutU in 'frmAboutU.pas' {frmAbout},
  dmU in 'dmU.pas' {dmSockets: TDataModule},
  frmChatU in 'frmChatU.pas' {fChat};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfMain, fMain);
  Application.CreateForm(TfrmConfiguracao, frmConfiguracao);
  Application.CreateForm(TfrmAbout, frmAbout);
  Application.CreateForm(TdmSockets, dmSockets);
  Application.CreateForm(TfChat, fChat);
  Application.Run;
end.
