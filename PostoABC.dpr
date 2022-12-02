program PostoABC;

uses
  Vcl.Forms,
  UPrincipal in 'UPrincipal.pas' {Form1},
  uBombas in 'uBombas.pas' {frmBombas},
  uBombasMnt in 'uBombasMnt.pas' {frmBombasMnt},
  uClassBombas in 'uClassBombas.pas',
  uClassTanques in 'uClassTanques.pas',
  uTanques in 'uTanques.pas' {frmTanques},
  uTanquesMnt in 'uTanquesMnt.pas' {frmTanquesMnt},
  uDM in 'uDM.pas' {DM: TDataModule},
  uAbastecimento in 'uAbastecimento.pas' {frmAbastecimento},
  uClassAbastecimento in 'uClassAbastecimento.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfrmBombas, frmBombas);
  Application.CreateForm(TfrmBombasMnt, frmBombasMnt);
  Application.CreateForm(TfrmTanques, frmTanques);
  Application.CreateForm(TfrmTanquesMnt, frmTanquesMnt);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmAbastecimento, frmAbastecimento);
  Application.Run;
end.
