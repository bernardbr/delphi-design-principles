unit FuncionarioComissionadoModel;

interface

uses
  InterfaceFuncionarioModel;

type
  TFuncionarioComissionadoModel = class(TInterfacedObject, IFuncionarioModel)
  private
    FNome: String;
    FAliquotaComissao: Double;

    function GetAliquotaComissao: Double; stdcall;
    function GetNome: string; stdcall;
    function GetSalarioBase: Double; stdcall;
  public
    function CalcularSalario(const pFaturamentoMes: Double): Double; stdcall;

    constructor Create(const pNome: String; const pAliquotaComissao: Double);
  end;

implementation

{ TFuncionarioComissionadoModel }

function TFuncionarioComissionadoModel.CalcularSalario(const pFaturamentoMes: Double): Double;
begin
  Result := (pFaturamentoMes * Self.FAliquotaComissao) / 100;
end;

constructor TFuncionarioComissionadoModel.Create(const pNome: String;
  const pAliquotaComissao: Double);
begin
  inherited Create();
  Self.FNome := pNome;
  Self.FAliquotaComissao := pAliquotaComissao;
end;

function TFuncionarioComissionadoModel.GetAliquotaComissao: Double;
begin
  Result := Self.FAliquotaComissao;
end;

function TFuncionarioComissionadoModel.GetNome: string;
begin
  Result := Self.FNome;
end;

function TFuncionarioComissionadoModel.GetSalarioBase: Double;
begin
  Result := 0;
end;

end.
