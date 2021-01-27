unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Memo1: TMemo;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    MaskEdit1: TMaskEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    RadioGroup1: TRadioGroup;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    Label8: TLabel;
    Edit7: TEdit;
    Edit8: TEdit;
    Label9: TLabel;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  Type
  TBug=Record
  KodUch:integer;
  KodFak:integer;
  Nazvfak:string[80];
  Coast:integer;
  KodPrepoda:integer;
  Data:string[90];
  KodBug:integer;
  Kolvozan:integer;
  ocenka:integer;
  End;

var
  Form2: TForm2;
  Fz:file of TBug;
  Ft:textfile;
  nzapB:integer; //nomer zapisi
  Bug:array [1..100] of TBug;
  FileNameZ,FileNameT:string;


implementation

{$R *.dfm}

uses Unit8, Unit6;



procedure TForm2.Button1Click(Sender: TObject);
begin
nzapB:=nzapB+1;
With Bug[nzapB] do
begin
  KodBug:=strtoint(Edit6.Text);
  KodPrepoda:=strToint(Edit1.Text);
  KodUch:=strToint(Edit2.Text);
  KodFak:=strtoint(Edit3.Text);
  Nazvfak:=(Edit4.Text);
  Coast:=strtoint(Edit5.Text);
  Data:=(MaskEdit1.Text);
  Kolvozan:=strtoint(Edit7.Text);
  Ocenka:=strtoint(Edit8.Text);
  if length(Edit4.Text) = 0   then
   begin
  showmessage('������� ������ ���� ������������ ������������');
  end
  else
  Memo1.Lines.Add(inttostr(KodBug)+' '+Inttostr(KodPrepoda)+' '+Inttostr(KodUch)+' '+Inttostr(KodFak)+' '+Nazvfak+' '+Inttostr(Coast)+' '+Data+' '+Inttostr(Kolvozan)+' '+inttostr(Ocenka));
end;
if length(Edit4.Text) > 0 then
Write(Fz, Bug[nzapB]);

end;

procedure TForm2.Button2Click(Sender: TObject);
var
i:word;
begin
if SaveDialog1.Execute then
    begin
    FileNameT:=SaveDialog1.FileName;
    AssignFile(Ft,FileNameT);
    Rewrite(Ft);
    end;
  for i := 1 to nzapB do
  with bug[i] do writeln(Ft,inttostr(KodBug)+' '+Inttostr(KodPrepoda)+' '+Inttostr(KodUch)+' '+Inttostr(KodFak)+' '+Nazvfak+' '+Inttostr(Coast)+' '+Data+' '+Inttostr(Kolvozan)+' '+inttostr(Ocenka));
  CloseFile(Ft);
  ShowMessage('���� ��������');
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
  FileNameZ:=OpenDialog1.FileName;
  AssignFile(Fz, FileNameZ);
  Reset(Fz); // ��������� ����

  end;

  nzapB:=0;
  while not eof(Fz) do     // ����� ��������� ����,���� ��������� �� ����� � ����� �����
  begin
  nzapB:=nzapB+1;
  Read(Fz,bug[nzapB]); // ���������� ���������� ����� Fz � ������ ������ nzap

  with bug[nzapB] do
  Memo1.Lines.Add(inttostr(KodBug)+' '+Inttostr(KodPrepoda)+' '+Inttostr(KodUch)+' '+Inttostr(KodFak)+' '+Nazvfak+' '+Inttostr(Coast)+' '+Data+' '+Inttostr(Kolvozan)+' '+inttostr(Ocenka));
  end;
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
Close();
end;


procedure TForm2.Button5Click(Sender: TObject);
begin
Form6.ShowModal;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
NzapB:=0;
end;


procedure TForm2.RadioGroup1Click(Sender: TObject);
Var
i,j:integer;
Fp:TBug;
begin

if RadioGroup1.ItemIndex=0 then
 begin
    begin
      for i := 1 to NzapB-1 do
        for j := i+1 to NzapB do
      if Bug[i].KodFak>Bug[j].KodFak then
        begin
        Fp:=Bug[i];
        Bug[i]:=Bug[j];
        Bug[j]:=Fp;
        end;
    Memo1.Clear;
    for i := 1 to NzapB do
      With Bug[i] do
    Memo1.Lines.Add(inttostr(KodBug)+' '+Inttostr(KodPrepoda)+' '+Inttostr(KodUch)+' '+Inttostr(KodFak)+' '+Nazvfak+' '+Inttostr(Coast)+' '+Data+' '+Inttostr(Kolvozan)+' '+inttostr(Ocenka));

    end;
if RadioGroup1.ItemIndex=1 then
 begin
    begin
      for i := 1 to NzapB-1 do
        for j := i+1 to NzapB do
      if Bug[i].Coast>Bug[j].Coast then
        begin
        Fp:=Bug[i];
        Bug[i]:=Bug[j];
        Bug[j]:=Fp;
        end;
    Memo1.Clear;
    for i := 1 to NzapB do
      With Bug[i] do
    Memo1.Lines.Add(inttostr(KodBug)+' '+Inttostr(KodPrepoda)+' '+Inttostr(KodUch)+' '+Inttostr(KodFak)+' '+Nazvfak+' '+Inttostr(Coast)+' '+Data+' '+Inttostr(Kolvozan)+' '+inttostr(Ocenka));

    end;
 end;
end;
end;





end.
