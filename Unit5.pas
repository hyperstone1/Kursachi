unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm5 = class(TForm)
    Memo1: TMemo;
    RadioGroup1: TRadioGroup;
    procedure RadioGroup1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
          var
          j,i:integer;
var
  Form5: TForm5;

implementation

{$R *.dfm}

uses Unit1, Unit2, Unit3, Unit4, Unit8;



procedure TForm5.RadioGroup1Click(Sender: TObject);
begin


if RadioGroup1.ItemIndex = 0 then
begin
Memo1.Clear;

for j := 1 to nzapU do
begin
  for i := 1 to nzapB do
    if ( bug[i].KodUch = j)  and (bug[i].KodFak = 1) then
    begin
    Memo1.Lines.Add(inttostr(bug[i].Koduch)+ ' ' +uchenik[j].FIOuch + '  '+inttostr(bug[i].Kolvozan));
    end;
end;
end;



if RadioGroup1.ItemIndex = 1 then
begin
 Memo1.Clear;
for j := 1 to nzapU do
begin
  for i := 1 to nzapB do
    if ( bug[i].KodUch = j)  and (bug[i].KodFak = 2) then
    begin
    Memo1.Lines.Add(inttostr(bug[i].Koduch)+ ' ' +uchenik[j].FIOuch + '  '+inttostr(bug[i].Kolvozan));
    end;
end;
end;


if RadioGroup1.ItemIndex = 2 then
begin
  Memo1.Clear;
for j := 1 to nzapU do
begin
  for i := 1 to nzapB do
    if ( bug[i].KodUch = j)  and (bug[i].KodFak = 3) then
    begin
    Memo1.Lines.Add(inttostr(bug[i].Koduch)+ ' ' +uchenik[j].FIOuch + '  '+inttostr(bug[i].Kolvozan));
    end;


end;


end;

end;

end.
