unit FuncionarioDAO;

interface

uses
  InterfaceFuncionarioModel;

type
  TFuncionarioDAO = class(TObject)
  public
    class constructor Create();
    class destructor Destroy();

    function ObterFuncionarioPorNome(const pNome: String): IFuncionarioModel;
  end;

implementation

uses
  System.Generics.Collections, FuncionarioComissionadoModel,
  FuncionarioAssalariadoModel, FuncionarioAssalariadoComComissaoModel;

var
  FFuncionarios: TList<IFuncionarioModel>;

{ TFuncionarioDAO }

class constructor TFuncionarioDAO.Create;
begin
  FFuncionarios := TList<IFuncionarioModel>.Create();
  FFuncionarios.Add(TFuncionarioComissionadoModel.Create('Fulano da Silva', 5.5));
  FFuncionarios.Add(TFuncionarioAssalariadoModel.Create('Beutrano Inácio', 1250.33));
  FFuncionarios.Add(TFuncionarioAssalariadoComComissaoModel.Create('Cicrano Sauro', 1250.33, 2.3));
end;

class destructor TFuncionarioDAO.Destroy;
begin
  FFuncionarios.Free();
end;

function TFuncionarioDAO.ObterFuncionarioPorNome(const pNome: String): IFuncionarioModel;
begin
  for var i: Integer := 0 to FFuncionarios.Count -1 do
  begin
    if (FFuncionarios[i].Nome = pNome) then
      Exit(FFuncionarios[i]);
  end;
end;

end.
