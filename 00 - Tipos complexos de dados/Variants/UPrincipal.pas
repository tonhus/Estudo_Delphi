unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
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
var
  MinhaVariavel : Variant;
begin
  MinhaVariavel := 'Meu texto';
  ShowMessage('String: '+MinhaVariavel);

  MinhaVariavel := 25;
  ShowMessage(MinhaVariavel);

  MinhaVariavel := True;
  ShowMessage(MinhaVariavel);

  MinhaVariavel := 10.36;
  ShowMessage(MinhaVariavel);

end;

end.
