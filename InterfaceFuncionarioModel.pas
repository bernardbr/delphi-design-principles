unit InterfaceFuncionarioModel;

interface

type
  IFuncionarioModel = interface(IInterface)
    ['{F24F26C1-9B71-4281-AC95-7841FA65CE2F}']
    function GetNome(): String; stdcall;

    function GetSalarioBase(): Double; stdcall;
    function GetAliquotaComissao(): Double; stdcall;

    function CalcularSalario(const pFaturamentoMes: Double): Double; stdcall;

    property Nome: String read GetNome;
    property SalarioBase: Double read GetSalarioBase;
    property AliquotaComissao: Double read GetAliquotaComissao;
  end;

implementation

end.
