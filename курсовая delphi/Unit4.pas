unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TForm4 = class(TForm)
    BitBtn1: TBitBtn;
    Memo1: TMemo;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    procedure BitBtn1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;
  type
  TMASS = record
  zap1:string[30];
  zap2:string[30];
  zap3:integer;
  zap4:integer;
  end;


        var
        i,j,summZ,colZ,summObh:integer;
        a:array[1..50] of TMASS ;
         sr:TMASS;



var
Form4:Tform4;

implementation

{$R *.dfm}

uses Unit1, Unit2, Unit3, Unit8;



procedure TForm4.BitBtn1Click(Sender: TObject);


begin


for j := 1 to nzapO do
 begin
 for i := 1 to nzapB do
  if bug[i].KodFak = j   then
  begin
  a[i].zap1:=bug[i].Nazvfak;
  a[i].zap2:=otdel[j].Fioprepoda;
  a[i].zap3 :=bug[i].Coast ;
  a[i].zap4:=bug[i].Kolvozan;

  end;


 end;



    for i := 1 to nzapB-1 do
   for j := i+1 to nzapB do
   if a[i].zap1 > a[j].zap1 then
  begin
    sr:=a[i];
     a[i]:=a[j];
     a[j]:=sr  ;
   end;


    colZ:=0;
    summZ:=0;
   for i := 1 to nzapB do
 if a[i].zap1 <> a[i+1].zap1 then
  begin
  colZ:=a[i].zap3 + colZ;
 summZ:=a[i].zap4 + summZ;
 memo1.Lines.Add(a[i].zap1+' '+ a[i].zap2+ ' ' +inttostr(summZ)+' ' +inttostr(colZ));
 colZ:=0;
 summZ:=0;
 end
 else
 begin
 colZ:=colZ+a[i].zap3;
 summZ:=summZ+a[i].zap4;

 end;
 summObh:=0;
 for i := 1 to nzapB do
 begin
    summObh:=summObh+bug[i].coast;
 end;


Memo1.lines.Add('����� ��������� ������������� = ' + inttostr(summObh));
end;

end.
