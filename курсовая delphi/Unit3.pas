unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    RadioGroup1: TRadioGroup;
    Edit5: TEdit;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

   Type
  Totdel=Record
  KodFak:integer;
  Fioprepoda:string[80];
  Tel:integer;
  KodPrepoda:integer;
  KodBug:integer;
  End;

var
  Form3: TForm3;
  Fz:file of Totdel;
  Ft:textfile;
  nzapO:integer; //nomer zapisi
  otdel:array [1..100] of Totdel;
  FileNameZ,FileNameT:string;

implementation

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
nzapO:=nzapO+1;
With otdel[nzapO] do
  begin
  Kodprepoda:=strtoint(Edit1.Text);
  KodFak:=strToint(Edit2.Text);
  Fioprepoda:=(Edit3.Text);
  Tel:=strtoint(Edit4.Text);
  KodBug:=strtoint(Edit5.Text);
  Memo1.Lines.Add(Inttostr(KodBug)+' '+Inttostr(KodPrepoda)+' '+inttostr(KodFak)+' '+Fioprepoda+' '+Inttostr(Tel));

  end;
Write(Fz, otdel[nzapO]);
end;

procedure TForm3.Button2Click(Sender: TObject);
var
i:word;
  begin
  if SaveDialog1.Execute then
    begin
    FileNameT:=SaveDialog1.FileName;
    AssignFile(Ft,FileNameT);
    Rewrite(Ft);
    end;
for i := 1 to nzapO do
with otdel[i] do
writeln(Ft,Inttostr(KodBug)+' '+inttostr(KodPrepoda)+' '+Inttostr(KodFak)+' '+Fioprepoda+' '+Inttostr(Tel));
CloseFile(Ft);
ShowMessage('Файл сохранен');
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
if OpenDialog1.Execute then
  begin
  FileNameZ:=OpenDialog1.FileName;
  AssignFile(Fz, FileNameZ);
  Reset(Fz); // открывает файл

  end;

nzapO:=0;
while not eof(Fz) do     // будет проверять файл,пока указатель не будет в конце файла
  begin
  nzapO:=nzapO+1;
  Read(Fz,otdel[nzapO]); // записываем содержимое файла Fz в массив ученик nzap
  with otdel[nzapO] do
  Memo1.Lines.Add(Inttostr(KodBug)+' '+Inttostr(KodPrepoda)+' '+inttostr(KodFak)+' '+Fioprepoda+' '+Inttostr(Tel));
  end;
end;
procedure TForm3.Button4Click(Sender: TObject);
begin
Close();
end;


procedure TForm3.FormCreate(Sender: TObject);
begin
NzapO:=0;
end;

procedure TForm3.RadioGroup1Click(Sender: TObject);
Var
i,j:integer;
Fp:Totdel;
  begin

  if RadioGroup1.ItemIndex=0 then
    begin
      begin
          for i := 1 to NzapO-1 do
            for j := i+1 to NzapO do
      if otdel[i].Fioprepoda>otdel[j].Fioprepoda then
        begin
        Fp:=otdel[i];
        otdel[i]:=otdel[j];
        otdel[j]:=Fp;
        end;
      Memo1.Clear;
      for i := 1 to NzapO do
      With otdel[i] do

        Memo1.Lines.Add(Inttostr(KodBug)+' '+inttostr(KodPrepoda)+' '+Inttostr(KodFak)+' '+Fioprepoda+' '+Inttostr(Tel));

      end;

    end;
  if RadioGroup1.ItemIndex=1 then
    begin
      begin
        for i := 1 to NzapO-1 do
          for j := i+1 to NzapO do
      if otdel[i].KodFak>otdel[j].KodFak then
          begin
          Fp:=otdel[i];
          otdel[i]:=otdel[j];
          otdel[j]:=Fp;
          end;
        Memo1.Clear;
        for i := 1 to NzapO do
          With otdel[i] do
        Memo1.Lines.Add(Inttostr(KodBug)+' '+Inttostr(KodPrepoda)+' '+inttostr(KodFak)+' '+Fioprepoda+' '+Inttostr(Tel));
      end;
    end;
end;

end.
