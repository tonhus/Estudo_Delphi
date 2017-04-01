unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, MaskUtils;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Button1: TButton;
    procedure Edit1Change(Sender: TObject);
    function cpf(num: string): boolean;
    procedure Edit3Enter(Sender: TObject);
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

procedure TForm1.Edit1Change(Sender: TObject);
var
  num1, num2 : Double;
begin
    if (Pos('.', Edit1.Text) > 0) and (Length(Edit1.Text) <= 3)then
      begin
         //ShowMessage('Caracter invalido!');
          Edit1.Text := StringReplace(Edit1.Text, '.', '', []);
          Edit1.SetFocus;
          //Edit1.Text[Pos('.', Edit1.Text)] := ','; 2.000,00
      end else
        if Length(Edit1.Text) > 0 then
        begin
          num2 := 0;
          num1 := StrToFloat(Edit1.Text);
          num2 := num1 * 2;
          Edit2.Text := FloatToStr(num2);
        end;
end;

procedure TForm1.Button1Click(Sender: TObject);
Var
   FormatarCNPJ:String;
   FormatarCPF:String;
begin
      if Length(Edit3.Text) <= 0 then
      begin
        ShowMessage('Campo vazio!!');
        Exit;
      end;

      if Length(Edit3.Text) = 11 then
      Begin
         if cpf(Edit3.Text) = True Then
         Begin
            FormatarCPF:= Copy(Edit3.Text, 1,3)
            + '.' + Copy(Edit3.Text, 4,3)
            + '.' + Copy(Edit3.Text,7,3)
            + '-' + Copy(Edit3.Text, 10,2);
            Edit3.Text:= FormatarCPF;
            //Label1.Caption := 'CPF';
         End
         Else
         begin
             ShowMessage('CPF com erro. favor verificar');
             Edit3.SetFocus;
         end;
       End
       Else
       Begin
           ShowMessage ('O CPF tem 11 n�meros.'#13'Prencha com n�meros');
           Edit3.SetFocus;
           Edit3.SelectAll;
       End;
end;

function TForm1.cpf(num: string): boolean;
var
   n1,n2,n3,n4,n5,n6,n7,n8,n9: integer;
   d1,d2: integer;
   digitado, calculado: string;
begin
   n1:=StrToInt(num[1]);
   n2:=StrToInt(num[2]);
   n3:=StrToInt(num[3]);
   n4:=StrToInt(num[4]);
   n5:=StrToInt(num[5]);
   n6:=StrToInt(num[6]);
   n7:=StrToInt(num[7]);
   n8:=StrToInt(num[8]);
   n9:=StrToInt(num[9]);
   d1:=n9*2+n8*3+n7*4+n6*5+n5*6+n4*7+n3*8+n2*9+n1*10;
   d1:=11-(d1 mod 11);
   if d1>=10 then d1:=0;
     d2:=d1*2+n9*3+n8*4+n7*5+n6*6+n5*7+n4*8+n3*9+n2*10+n1*11;
     d2:=11-(d2 mod 11);
   if d2>=10 then d2:=0;
     calculado:=inttostr(d1)+inttostr(d2);
     digitado:=num[10]+num[11];
   if calculado=digitado then
     cpf:=true
   else
     cpf:=false;
end;

procedure TForm1.Edit3Enter(Sender: TObject);
var
    I: integer;
    S, Texto: string;
begin
    S := '';
    Texto := Edit1.Text;
    for I := 1 to Length(Texto) do
    begin
        if (Texto[I] in ['0'..'9']) then
        begin
            S := S + Copy(Texto, I, 1);
        end;
    end;
    Edit1.Text := S;
end;

end.
