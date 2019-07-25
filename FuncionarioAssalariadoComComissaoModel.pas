unit FuncionarioAssalariadoComComissaoModel;

interface

uses
  InterfaceFuncionarioModel;

type
  TFuncionarioAssalariadoComComissaoModel = class(TInterfacedObject, IFuncionarioModel)
  private
    FNome: String;
    FSalarioBase: Double;
    FAliquotaComissao: Double;

    function GetAliquotaComissao: Double; stdcall;
    function GetNome: string; stdcall;
    function GetSalarioBase: Double; stdcall;
  public
    function CalcularSalario(const pFaturamentoMes: Double): Double; stdcall;

    constructor Create(const pNome: String; const pSalarioBase: Double; const pAliquotaComissao: Double);
  end;

implementation

{ TFuncionarioAssalariadoComComissaoModel }

function TFuncionarioAssalariadoComComissaoModel.CalcularSalario(
  const pFaturamentoMes: Double): Double;
begin
  Result := Self.FSalarioBase + ((pFaturamentoMes * Self.FAliquotaComissao) / 100);
end;

constructor TFuncionarioAssalariadoComComissaoModel.Create(const pNome: String; const pSalarioBase,
  pAliquotaComissao: Double);
begin
  inherited Create();

  Self.FNome := pNome;
  Self.FSalarioBase := pSalarioBase;
  Self.FAliquotaComissao := pAliquotaComissao;
end;

function TFuncionarioAssalariadoComComissaoModel.GetAliquotaComissao: Double;
begin
  Result := Self.FAliquotaComissao;
end;

function TFuncionarioAssalariadoComComissaoModel.GetNome: string;
begin
  Result := Self.FNome;
end;

function TFuncionarioAssalariadoComComissaoModel.GetSalarioBase: Double;
begin
  Result := Self.FSalarioBase;
end;

end.
