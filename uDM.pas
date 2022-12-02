unit uDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.Phys.FB, FireDAC.Phys.FBDef,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
  TDM = class(TDataModule)
    FDCFirebird: TFDConnection;
    fdqQryTanque: TFDQuery;
    fdqQryBomba: TFDQuery;
    fdqQryBombaIDBOMBA: TIntegerField;
    fdqQryBombaDESCRICAO: TStringField;
    fdqQryTanqueIDTANQUE: TIntegerField;
    fdqQryTanqueDESCRICAO: TStringField;
    fdqQryBombaTANQUE: TStringField;
    fdqConPadrao: TFDQuery;
    fdqQryAbast: TFDQuery;
    fdqQryRelAbast: TFDQuery;
    fdqQryRelAbastDATA: TDateField;
    fdqQryRelAbastTANQUE_USADO: TStringField;
    fdqQryRelAbastBOMBA_USADA: TStringField;
    fdqQryRelAbastVALOR: TFMTBCDField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  FDCFirebird.Close;
end;

end.
