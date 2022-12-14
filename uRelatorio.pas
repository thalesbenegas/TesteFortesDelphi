unit uRelatorio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, uRelatorioAbast,
  uDM;

type
  TfrmRalatorio = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    mkeDataIni: TMaskEdit;
    mkeDataFim: TMaskEdit;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRalatorio: TfrmRalatorio;

implementation

{$R *.dfm}

procedure TfrmRalatorio.Button1Click(Sender: TObject);
begin
  DM.fdqQryRelAbast.Close;
  DM.fdqQryRelAbast.SQL.Clear;
  DM.fdqQryRelAbast.SQL.Add(' select cast(a.dataabastecimento as date) as Data,  ');
  DM.fdqQryRelAbast.SQL.Add('     c.descricao as tanque_usado,  ');
  DM.fdqQryRelAbast.SQL.Add('     b.descricao as bomba_usada,   ');
  DM.fdqQryRelAbast.SQL.Add('     SUM(a.vlimposto) as Valor     ');
  DM.fdqQryRelAbast.SQL.Add('   from abastecimento a            ');
  DM.fdqQryRelAbast.SQL.Add(' inner join Bomba b on b.idbomba = a.idbomba  ');
  DM.fdqQryRelAbast.SQL.Add(' inner join tanque c on c.idtanque = b.idtanque ');
  DM.fdqQryRelAbast.SQL.Add(' where cast(a.dataabastecimento as date) between :dataini and :datafim  ');
  DM.fdqQryRelAbast.SQL.Add(' group by cast(a.dataabastecimento as date), c.descricao, b.descricao');

  DM.fdqQryRelAbast.ParamByName('dataini').Value  := FormatDateTime('dd.MM.yyyy', StrToDate( mkeDataIni.Text));
  DM.fdqQryRelAbast.ParamByName('datafim').Value  := FormatDateTime('dd.MM.yyyy', StrToDate( mkeDataFim.Text));

  DM.fdqQryRelAbast.Open;

  frmRelatorioAbast.rlRelAbastecimento.Preview();
end;

procedure TfrmRalatorio.Button2Click(Sender: TObject);
begin
  close;
end;

procedure TfrmRalatorio.FormShow(Sender: TObject);
begin
  mkeDataIni.Text := FormatDateTime('dd/MM/yyyy', Now -1 );
  mkeDataFim.Text := FormatDateTime('dd/MM/yyyy', Now);
end;

end.
