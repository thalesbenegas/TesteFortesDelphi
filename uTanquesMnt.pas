unit uTanquesMnt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, uClassTanques;

type
  TfrmTanquesMnt = class(TForm)
    Panel1: TPanel;
    edtCodigo: TEdit;
    edtDescricao: TEdit;
    Panel2: TPanel;
    lblCodigo: TLabel;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    clTanques : clsTanques;

    procedure LimparCampos();
  public
    { Public declarations }
  end;

var
  frmTanquesMnt: TfrmTanquesMnt;

implementation

{$R *.dfm}

procedure TfrmTanquesMnt.Button1Click(Sender: TObject);
begin
  if edtDescricao.Text = EmptyStr then
  begin
    ShowMessage('Informe uma Descrição!');
    edtDescricao.SetFocus;
    Exit;
  end;

  clTanques.descricao := edtDescricao.Text;

  if edtCodigo.Text <> EmptyStr then
  begin
    clTanques.id := StrToInt(edtCodigo.Text);
    clTanques.Alterar(clTanques);
  end
  else
    clTanques.Incluir(clTanques);

  LimparCampos;
end;

procedure TfrmTanquesMnt.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmTanquesMnt.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(clTanques);
end;

procedure TfrmTanquesMnt.FormShow(Sender: TObject);
begin
  clTanques := clsTanques.Create();
end;

procedure TfrmTanquesMnt.LimparCampos();
var
  i : integer;
begin
  for i := 0 to ComponentCount -1 do
  begin
    if (Components[i] is TEdit) then
      (Components[i] as TEdit).Clear;
  end;

end;

end.
