unit uBombas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, uClassBombas, uBombasMnt, uDM;

type
  TfrmBombas = class(TForm)
    Panel1: TPanel;
    btnIncluir: TButton;
    btnAlterar: TButton;
    btnExcluir: TButton;
    dsBomba: TDataSource;
    DBGrid1: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
  private
    { Private declarations }
    clBombas : clsBombas;
  public
    { Public declarations }
  end;

var
  frmBombas: TfrmBombas;

implementation

{$R *.dfm}

procedure TfrmBombas.btnAlterarClick(Sender: TObject);
begin
  if DBGrid1.FieldCount >= 0 then
  begin
    try
      Application.CreateForm(TfrmBombasMnt, frmBombasMnt);
      frmBombasMnt.edtCodigo.Text := DBGrid1.DataSource.DataSet.FieldByName('idBomba').AsString;
      frmBombasMnt.edtDescricao.Text := DBGrid1.DataSource.DataSet.FieldByName('Descricao').AsString;
      frmBombasMnt.cmbTanques.Text := DBGrid1.DataSource.DataSet.FieldByName('Tanque').AsString;
      frmBombasMnt.ShowModal;

    finally
      FreeAndNil(frmBombasMnt);
      clBombas.CarregarDados;
    end;
  end;
end;

procedure TfrmBombas.btnIncluirClick(Sender: TObject);
begin
   try
    Application.CreateForm(TfrmBombasMnt, frmBombasMnt);
    frmBombasMnt.ShowModal;
  finally
    FreeAndNil(frmBombasMnt);
    clBombas.CarregarDados;
  end;
end;

procedure TfrmBombas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(clBombas);
  Close;
end;

procedure TfrmBombas.FormShow(Sender: TObject);
begin
  clBombas := clsBombas.Create();

  clBombas.CarregarDados;
end;

end.