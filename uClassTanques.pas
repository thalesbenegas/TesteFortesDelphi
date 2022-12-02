unit uClassTanques;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, uDM;

type
  clsTanques = class

  private
    fId: integer;
    fDescricao: string;
    fdmConect: TDM;

  public
    constructor Create;
    destructor Destroy;

    property id : integer read fId write fId;
    property descricao : string read fDescricao write fDescricao;
    property OdmConect : TDM read fdmConect write fdmConect;

    procedure Alterar(Obj :clsTanques);
    procedure Incluir(Obj :clsTanques);
    procedure Excluir(Obj :clsTanques);
    procedure CarregarDados;

  end;

implementation

{ clsTanques }

procedure clsTanques.Alterar(Obj :clsTanques);
begin
  try
    fdmConect.fdqQryTanque.Sql.Clear;

    fdmConect.fdqQryTanque.Sql.Add(' update tanque set ');
    fdmConect.fdqQryTanque.Sql.Add(' descricao = :descricao ');
    fdmConect.fdqQryTanque.Sql.Add(' where idTanque = :idTanque ');

    fdmConect.fdqQryTanque.ParamByName('idTanque').Value  := Obj.id;
    fdmConect.fdqQryTanque.ParamByName('descricao').Value := Obj.descricao;
    fdmConect.fdqQryTanque.ExecSQL;
  finally
     fdmConect.fdqQryTanque.Close;
  end;
end;

procedure clsTanques.CarregarDados;
begin

  fdmConect.fdqQryTanque.Close;
  fdmConect.fdqQryTanque.Sql.Clear;

  fdmConect.fdqQryTanque.Sql.Add(' select * from tanque ');
  fdmConect.fdqQryTanque.Sql.Add(' order by idTanque ');
  fdmConect.fdqQryTanque.Open;

end;

constructor clsTanques.Create;
begin
  fdmConect := DM;
end;

destructor clsTanques.Destroy;
begin
  fdmConect.fdqQryTanque.Close;
  FreeAndNil(fdmConect);
end;

procedure clsTanques.Excluir(Obj: clsTanques);
begin
  try
    fdmConect.fdqQryTanque.Sql.Clear;

    fdmConect.fdqQryTanque.Sql.Add(' delete from tanque ');
    fdmConect.fdqQryTanque.Sql.Add(' where idTanque = :idTanque ');

    fdmConect.fdqQryTanque.ParamByName('idTanque').Value  := Obj.id;
    fdmConect.fdqQryTanque.ExecSQL;
  finally
     fdmConect.fdqQryTanque.Close;
  end;
end;

procedure clsTanques.Incluir(Obj: clsTanques);
begin
  try
    fdmConect.fdqQryTanque.Sql.Clear;

    fdmConect.fdqQryTanque.Sql.Add('Insert into tanque (descricao) ');
    fdmConect.fdqQryTanque.Sql.Add(' Values (:descricao) ');

    fdmConect.fdqQryTanque.ParamByName('descricao').AsString := Obj.descricao;
    fdmConect.fdqQryTanque.ExecSQL;
  finally
    fdmConect.fdqQryTanque.Close;
  end;

end;

end.
