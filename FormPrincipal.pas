unit FormPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask;

type
  TfrmPrincipal = class(TForm)
    rdgCargo: TRadioGroup;
    edtNomeFuncionario: TLabeledEdit;
    btnBuscar: TButton;
    edtSalarioBase: TLabeledEdit;
    estAliquotaComissao: TLabeledEdit;
    edtFaturamentoDoMes: TLabeledEdit;
    btnCalcularSalarioFinal: TButton;
    gpbResultado: TGroupBox;
    lblResultado: TLabel;
    procedure btnBuscarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  FuncionarioDAO, InterfaceFuncionarioModel;

{$R *.dfm}

procedure TfrmPrincipal.btnBuscarClick(Sender: TObject);
var
  x : TFuncionarioDAO;
  l : IFuncionarioModel;
begin
  x := TFuncionarioDAO.Create();

  l := x.ObterFuncionarioPorNome(edtNomeFuncionario.Text);

  ShowMessage(FloatToStr(l.CalcularSalario(100000)));
end;

end.
