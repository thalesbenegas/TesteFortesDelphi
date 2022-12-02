unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Menus, uBombas, uTanques,
  uAbastecimento, uRelatorio;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Atendimento1: TMenuItem;
    Bombas1: TMenuItem;
    Panel1: TPanel;
    Label1: TLabel;
    Relatrio1: TMenuItem;
    Abastecimento1: TMenuItem;
    anques1: TMenuItem;
    Clientes1: TMenuItem;
    Relatrio2: TMenuItem;
    procedure Bombas1Click(Sender: TObject);
    procedure anques1Click(Sender: TObject);
    procedure Abastecimento1Click(Sender: TObject);
    procedure Relatrio2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Abastecimento1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TfrmAbastecimento, frmAbastecimento);
    frmAbastecimento.ShowModal;
  finally
    FreeAndNil(frmAbastecimento);
  end;
end;

procedure TForm1.anques1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TfrmTanques, frmTanques);
    frmTanques.ShowModal;
  finally
    FreeAndNil(frmTanques);
  end;
end;

procedure TForm1.Bombas1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TfrmBombas, frmBombas);
    frmBombas.ShowModal;
  finally
    FreeAndNil(frmBombas);
  end;
end;

procedure TForm1.Relatrio2Click(Sender: TObject);
begin
  try
    Application.CreateForm(TfrmRalatorio, frmRalatorio);
    frmRalatorio.ShowModal;
  finally
    FreeAndNil(frmRalatorio);
  end;
end;

end.
