unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm6 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  var
  j,i:integer;

var
  Form6: TForm6;

implementation

{$R *.dfm}

uses Unit2;

procedure TForm6.Button1Click(Sender: TObject);
begin
j:=strtoint(Edit1.Text);
 for i   := 1 to nzapB do
 begin
  if Bug[i].KodBug = j  then
  Bug[i].Coast := strtoint(Edit2.Text);
 end;
  Form2.Memo1.Clear;

  for i := 1 to nzapB do
  with Bug[i] do begin
    Form2.Memo1.Lines.Add(inttostr(KodBug)+' '+Inttostr(KodPrepoda)+' '+Inttostr(KodUch)+' '+Inttostr(KodFak)+' '+Nazvfak+' '+Inttostr(Coast)+' '+Data+' '+Inttostr(Kolvozan)+' '+inttostr(Ocenka));
  end;




end;

procedure TForm6.FormCreate(Sender: TObject);
begin
Edit1.Clear;
Edit2.Clear;
end;

end.
