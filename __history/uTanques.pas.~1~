unit uTanques;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.StdCtrls, uClassTanques, uDM;

type
  TfrmTanques = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    dsTanque: TDataSource;
    btnIncluir: TButton;
    btnAlterar: TButton;
    btnExcluir: TButton;
    procedure btnIncluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAlterarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }

    clTanques : clsTanques;
  public
    { Public declarations }
  end;

var
  frmTanques: TfrmTanques;

implementation

uses uTanquesMnt;

{$R *.dfm}

procedure TfrmTanques.btnAlterarClick(Sender: TObject);
begin
  if DBGrid1.FieldCount >= 0 then
  begin
    try
      Application.CreateForm(TFrmTanquesMnt, FrmTanquesMnt);
      FrmTanquesMnt.edtCodigo.Text := DBGrid1.DataSource.DataSet.FieldByName('idTanque').AsString;
      FrmTanquesMnt.edtDescricao.Text := DBGrid1.DataSource.DataSet.FieldByName('Descricao').AsString;
      FrmTanquesMnt.ShowModal;

    finally
      FreeAndNil(FrmTanquesMnt);
      clTanques.CarregarDados;
    end;
  end;
end;

procedure TfrmTanques.btnIncluirClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmTanquesMnt, FrmTanquesMnt);
    FrmTanquesMnt.ShowModal;
  finally
    FreeAndNil(FrmTanquesMnt);
    clTanques.CarregarDados;
  end;
end;

procedure TfrmTanques.DBGrid1DblClick(Sender: TObject);
begin
  btnAlterarClick(self);
end;

procedure TfrmTanques.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(clTanques);
end;

procedure TfrmTanques.FormShow(Sender: TObject);
begin
  clTanques := clsTanques.Create();

  clTanques.CarregarDados;

end;

end.
