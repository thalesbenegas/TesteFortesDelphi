unit uClasseBombas;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, uDM;

type clsBombas = class

  private
    fId: integer;
    fDescricao: string;
    fdmConect: TDM;
    fidTanque: integer;

  public

    constructor Create;
    destructor Destroy;

    property id : integer read fId write fId;
    property descricao : string read fDescricao write fDescricao;
    property idTanque : integer read fidTanque write fidTanque;
    property OdmConect : TDM read fdmConect write fdmConect;

    procedure CarregarDados;

end;

implementation

{ clsBombas }

procedure clsBombas.CarregarDados;
begin
  fdmConect.fdqQryBomba.Close;
  fdmConect.fdqQryBomba.Sql.Clear;

  fdmConect.fdqQryBomba.Sql.Add(' select * from bomba ');
  fdmConect.fdqQryBomba.Sql.Add(' order by idBomba ');
  fdmConect.fdqQryBomba.Open;
end;

constructor clsBombas.Create;
begin
  fdmConect := DM;
end;

destructor clsBombas.Destroy;
begin
  fdmConect.fdqQryBomba.Close;
  FreeAndNil(fdmConect);
end;

end.
