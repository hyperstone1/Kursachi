unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    RadioGroup1: TRadioGroup;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    procedure Button2Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


  Type
  Tuchenik=Record
  Ocenka:integer;
  FIOuch:string[80];
  Tel:integer;
  Kolvochasov:integer;
  Koduch:integer;
  NazvFak:string[80];
  End;


 var
  Form1: TForm1;
  Fz:file of Tuchenik;
  Ft:textfile;
  nzapU:integer;
  uchenik:array [1..100] of Tuchenik;
  FileNameZ,FileNameT:string;

implementation

{$R *.dfm}

uses Unit8, Unit2;


procedure TForm1.Button1Click(Sender: TObject);
begin
nzapU:=nzapU+1;
With uchenik[nzapU] do
begin
  KodUch:=strToint(Edit1.Text);
  Fiouch:=Edit2.Text;
  Tel:=strtoint(Edit3.Text);
  Memo1.Lines.Add(InttoStr(Koduch)+' '+FIOuch+' '+Inttostr(Tel));

end;
Write(Fz, uchenik[nzapU]);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
if OpenDialog1.Execute then
begin
  FileNameZ:=OpenDialog1.FileName;
  AssignFile(Fz, FileNameZ);
  Reset(Fz);

end;

nzapU:=0;
while not eof(Fz) do
begin
  nzapU:=nzapU+1;
  Read(Fz,uchenik[nzapU]);
with uchenik[nzapU] do
Memo1.Lines.Add(InttoStr(Koduch)+' '+FIOuch+' '+Inttostr(Tel));
end;

end;

procedure TForm1.Button3Click(Sender: TObject);
var
i:word;
begin
if SaveDialog1.Execute then
begin
FileNameT:=SaveDialog1.FileName;
AssignFile(Ft,FileNameT);
Rewrite(Ft);
end;
for i := 1 to nzapU do
with uchenik[i] do writeln(Ft, InttoStr(Koduch)+' '+FIOuch+' '+Inttostr(Tel));
CloseFile(Ft);
ShowMessage('Файл сохранен');

end;

procedure TForm1.Button4Click(Sender: TObject);
begin
Close();
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
nzapU:=0;
end;

procedure TForm1.RadioGroup1Click(Sender: TObject);
Var
i,j:integer;
Fp:Tuchenik;
begin

if RadioGroup1.ItemIndex=0 then
  begin
      begin
        for i := 1 to NzapU-1 do
          for j := i+1 to NzapU do
        if Uchenik[i].Tel>Uchenik[j].Tel then
            begin
            Fp:=Uchenik[i];
            Uchenik[i]:=Uchenik[j];
            Uchenik[j]:=Fp;
            end;
      Memo1.Clear;
      for i := 1 to NzapU do
        With Uchenik[i] do
      Memo1.Lines.Add(InttoStr(Koduch)+' '+FIOuch+' '+Inttostr(Tel));

      end;

  end;
 if RadioGroup1.ItemIndex=1 then
  begin
      begin
      for i := 1 to NzapU-1 do
        for j := i+1 to NzapU do
        if Uchenik[i].Koduch>Uchenik[j].Koduch then
          begin
          Fp:=Uchenik[i];
          Uchenik[i]:=Uchenik[j];
          Uchenik[j]:=Fp;
          end;
      Memo1.Clear;
      for i := 1 to NzapU do
        With Uchenik[i] do
      Memo1.Lines.Add(InttoStr(Koduch)+' '+FIOuch+' '+Inttostr(Tel));


      end;


  end;
end;

end.
