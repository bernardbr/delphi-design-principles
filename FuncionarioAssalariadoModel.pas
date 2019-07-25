unit FuncionarioAssalariadoModel;

interface

uses
  InterfaceFuncionarioModel;

type
  TFuncionarioAssalariadoModel = class(TInterfacedObject, IFuncionarioModel)
  private
    FNome: String;
    FSalarioBase: Double;

    function GetAliquotaComissao: Double; stdcall;
    function GetNome: string; stdcall;
    function GetSalarioBase: Double; stdcall;
  public
    function CalcularSalario(const pFaturamentoMes: Double): Double; stdcall;

    constructor Create(const pNome: String; const pSalarioBase: Double);
  end;

implementation

{ TFuncionarioAssalariadoModel }

function TFuncionarioAssalariadoModel.CalcularSalario(const pFaturamentoMes: Double): Double;
begin
  Result := Self.FSalarioBase;
end;

constructor TFuncionarioAssalariadoModel.Create(const pNome: String; const pSalarioBase: Double);
begin
  inherited Create();

  Self.FNome := pNome;
  Self.FSalarioBase := pSalarioBase;
end;

function TFuncionarioAssalariadoModel.GetAliquotaComissao: Double;
begin
  Result := 0;
end;

function TFuncionarioAssalariadoModel.GetNome: string;
begin
  Result := Self.FNome;
end;

function TFuncionarioAssalariadoModel.GetSalarioBase: Double;
begin
  Result := Self.FSalarioBase;
end;

end.
