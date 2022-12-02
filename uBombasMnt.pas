unit uBombasMnt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, uClassTanques,
  uClassBombas, uDM;

type
  TfrmBombasMnt = class(TForm)
    Panel1: TPanel;
    lblCodigo: TLabel;
    Label1: TLabel;
    edtCodigo: TEdit;
    edtDescricao: TEdit;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    cmbTanques: TComboBox;
    Label2: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }

    clBombas : clsBombas;

    procedure LimparCampos();
    procedure carregacombo;
  public
    { Public declarations }
  end;

var
  frmBombasMnt: TfrmBombasMnt;

implementation

{$R *.dfm}


procedure TfrmBombasMnt.Button1Click(Sender: TObject);
begin
  if cmbTanques.ItemIndex < 0 then
  begin
    ShowMessage('Informe um tanque!');
    Exit;
  end;

  if edtDescricao.Text = EmptyStr then
  begin
    ShowMessage('Informe uma Descri��o!');
    edtDescricao.SetFocus;
    Exit;
  end;

  clBombas.descricao := edtDescricao.Text;
  clBombas.idTanque := StrToInt(Copy(cmbTanques.Items[cmbTanques.ItemIndex],1,1));

  if edtCodigo.Text <> EmptyStr then
  begin
    clBombas.id := StrToInt(edtCodigo.Text);
    clBombas.Alterar(clBombas);
  end
  else
    clBombas.Incluir(clBombas);

  LimparCampos;
end;

procedure TfrmBombasMnt.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmBombasMnt.carregacombo;
begin
  DM.fdqQryTanque.Close;
  DM.fdqQryTanque.Open;
  DM.fdqQryTanque.First;

  while not DM.fdqQryTanque.Eof do
  begin
    cmbTanques.Items.Add(DM.fdqQryTanque.FieldByName('idtanque').AsString + ' - '+DM.fdqQryTanque.FieldByName('descricao').AsString);
    DM.fdqQryTanque.Next;
  end;

  if cmbTanques.Text <> EmptyStr then
  begin
    cmbTanques.ItemIndex := cmbTanques.Items.IndexOf(cmbTanques.Text);
  end;


  DM.fdqQryTanque.Close;
end;

procedure TfrmBombasMnt.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(clBombas);
end;

procedure TfrmBombasMnt.FormShow(Sender: TObject);
begin
  clBombas := clsBombas.Create();

  carregacombo;
end;

procedure TfrmBombasMnt.LimparCampos();
var
  i : integer;
begin
  for i := 0 to ComponentCount -1 do
  begin
    if (Components[i] is TEdit) then
      (Components[i] as TEdit).Clear;

    if (Components[i] is TComboBox) then
      (Components[i] as TComboBox).ItemIndex := -1;
  end;

end;

end.
