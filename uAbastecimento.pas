unit uAbastecimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, uClassAbastecimento;

type
  TfrmAbastecimento = class(TForm)
    Panel1: TPanel;
    btnConfirmar: TButton;
    Button2: TButton;
    Button1: TButton;
    edtBomba: TEdit;
    Label1: TLabel;
    edtDescBomba: TEdit;
    Label2: TLabel;
    edtLitros: TEdit;
    Label3: TLabel;
    edtValor: TEdit;
    Label4: TLabel;
    edtVlImposto: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    edtImposto: TEdit;
    Label7: TLabel;
    lblData: TLabel;
    edtValorLitro: TEdit;
    Label8: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure edtValorExit(Sender: TObject);
    procedure edtBombaExit(Sender: TObject);
    procedure edtValorLitroExit(Sender: TObject);
  private
    { Private declarations }
    clAbastecimento : clsAbastecimento;

    procedure LimparCampos();


  public
    { Public declarations }
  end;

var
  frmAbastecimento: TfrmAbastecimento;

implementation

{$R *.dfm}

procedure TfrmAbastecimento.btnConfirmarClick(Sender: TObject);
begin
  if edtBomba.Text = '' then
  begin
    ShowMessage('Informe uma bomba!');
    Exit;
  end;

  if edtLitros.Text = '' then
  begin
    ShowMessage('Informe a quantidade de litros!');
    Exit;
  end;

  if edtValorLitro.Text = '' then
  begin
    ShowMessage('Informe o Valor!');
    Exit;
  end;

  clAbastecimento.idBomba   := StrToInt(edtBomba.Text);
  clAbastecimento.litros    := StrToFloat(edtLitros.Text);
  clAbastecimento.vllitro   := StrToFloat(edtValorLitro.Text);
  clAbastecimento.valor     := StrToFloat(edtValor.Text);
  clAbastecimento.imposto   := StrToFloat(edtImposto.Text);
  clAbastecimento.vlimposto := StrToFloat(edtVlImposto.Text);

  clAbastecimento.Incluir(clAbastecimento);

  LimparCampos();
end;

procedure TfrmAbastecimento.Button1Click(Sender: TObject);
begin
  LimparCampos();
end;

procedure TfrmAbastecimento.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmAbastecimento.edtBombaExit(Sender: TObject);
begin
  edtDescBomba.Text := clAbastecimento.carregarbomba(edtBomba.Text);
end;

procedure TfrmAbastecimento.edtValorExit(Sender: TObject);
var
  Valor : double;
  vlImposto : double;
begin
  if TryStrToFloat(edtValor.Text, Valor) then
  begin
    vlImposto := Valor + ((Valor * strToint(edtImposto.Text)) /100);
    edtVlImposto.Text := FormatFloat('#,0.00', vlImposto);
  end;
end;

procedure TfrmAbastecimento.edtValorLitroExit(Sender: TObject);
var
  ValorLitro : double;
  ValorTotal : double;
begin
  if TryStrToFloat(edtValorLitro.Text, ValorLitro) then
  begin
    ValorTotal := ValorLitro * StrToFloat(edtLitros.Text);
    edtValor.Text := FormatFloat('#,0.00', ValorTotal);
  end;

  edtValorExit(self);
end;

procedure TfrmAbastecimento.FormShow(Sender: TObject);
begin
  lblData.Caption := DateTimeToStr(now);

  clAbastecimento := clsAbastecimento.Create;
end;

procedure TfrmAbastecimento.LimparCampos();
var
  i : integer;
begin
  for i := 0 to ComponentCount -1 do
  begin
    if (Components[i] is TEdit) then
      (Components[i] as TEdit).Clear;
  end;

  edtLitros.Text := '0,00';
  edtValorLitro.Text := '0,00';
  edtImposto.Text := '13';

end;

end.
