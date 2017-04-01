unit UTypes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin;

type
  TForm1 = class(TForm)
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    Button1: TButton;
    SpinEdit1: TSpinEdit;
    Label1: TLabel;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
type
  TDiaSemana = (Domingo, Segunda, Terca, Quarta, Quinta, Sexta, Sabado);
const
  DiaFolga : Set of TDiaSemana = [Domingo, Sabado];

var
  DiasExpediente : Set of TDiaSemana;
  DiaAtual : TDiaSemana;
begin
  DiasExpediente := [Segunda..Sexta];

  if RadioButton1.Checked then
    DiaAtual := Domingo
  else if RadioButton2.Checked then
    DiaAtual := Segunda
  else if RadioButton3.Checked then
    DiaAtual := Terca
  else if RadioButton4.Checked then
    DiaAtual := Quarta
  else if RadioButton5.Checked then
    DiaAtual := Quinta
  else if RadioButton6.Checked then
    DiaAtual := Sexta
  else if RadioButton7.Checked then
    DiaAtual := Sabado;

//  if DiaAtual in DiasExpediente then
//    ShowMessage('Hoj� � dia de trabalho')
//  else
//    ShowMessage('Hoj� � dia de folga!');

  if DiaAtual in DiaFolga then
    ShowMessage('� um dia de folga')
  else
    ShowMessage('� um dia de trabalho normal!!');


end;

procedure TForm1.Button2Click(Sender: TObject);
var
  MeuConjunto : Set of 1..10;
  numEscolhido : Integer;
begin
  MeuConjunto := [1, 2, 3, 4..10];

  numEscolhido := SpinEdit1.Value;

  if numEscolhido in MeuConjunto then
    ShowMessage('O numero escolhido esta dentro do conjunto')
  else
    ShowMessage('O numero n�o existe dentro do conjunto');

end;

end.
