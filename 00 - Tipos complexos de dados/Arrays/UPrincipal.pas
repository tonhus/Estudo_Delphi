unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TrdLuxo = class(TForm)
    Button1: TButton;
    Button2: TButton;
    rdbLuxo: TRadioButton;
    rdbDiamante: TRadioButton;
    rdbCristal: TRadioButton;
    rdbPresidencial: TRadioButton;
    lblResultado: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rdLuxo: TrdLuxo;

implementation

{$R *.dfm}

procedure TrdLuxo.Button1Click(Sender: TObject);
type
   TMinhasCores = 'A'..'E';
   Mat01 = array of Char;
var
  temp : TMinhasCores;
  mat : Mat01;
  Mat02 : array[1..10] of Char;
  Mat03 : array of Char;
begin
    //mat[1]
   ShowMessage(temp);
end;

procedure TrdLuxo.Button2Click(Sender: TObject);
type
  Suite = (Luxo, Diamente, Cristal, Presidencial);
var
  escolha : Suite;
begin
  if rdbLuxo.Checked then
    escolha := Luxo
  else if rdbDiamante.Checked then
    escolha := Diamente
  else if rdbCristal.Checked then
    escolha := Cristal
  else if rdbPresidencial.Checked then
    escolha := Presidencial;

    case escolha of
      Luxo        : lblResultado.Caption := 'Suite Luxo';
      Diamente    : lblResultado.Caption := 'Suite Diamante';
      Cristal     : lblResultado.Caption := 'Suite Cristal';
      Presidencial: lblResultado.Caption := 'Suite Presidencial';
    end;

end;

end.
