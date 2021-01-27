unit Unit8;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm8 = class(TForm)
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    MainMenu1: TMainMenu;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    Image1: TImage;
    N10: TMenuItem;
    N11: TMenuItem;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N11Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

uses Unit1, Unit2, Unit3, Unit4, Unit5;





procedure TForm8.N10Click(Sender: TObject);
begin
Form4.ShowModal;
end;

procedure TForm8.N11Click(Sender: TObject);
begin
Form5.ShowModal;
end;

procedure TForm8.N2Click(Sender: TObject);
begin
if OpenDialog1.Execute then
begin
  FileNameZ:=OpenDialog1.FileName;
  AssignFile(fz, FileNameZ);
  ReWrite(Fz);
  ShowMessage('Файл учеников создан');
  CloseFile(Fz);
end;
end;


procedure TForm8.N3Click(Sender: TObject);
begin
if OpenDialog1.Execute then
begin
  FileNameZ:=OpenDialog1.FileName;
  AssignFile(fz, FileNameZ);
  ReWrite(Fz);
  ShowMessage('Файл бухгалтерии создан');
  CloseFile(Fz);
end;
end;

procedure TForm8.N4Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
begin
  FileNameZ:=OpenDialog1.FileName;
  AssignFile(fz, FileNameZ);
  ReWrite(Fz);
  ShowMessage('Файл преподавателей создан');
  CloseFile(Fz);
end;
end;

procedure TForm8.N6Click(Sender: TObject);
begin
Form1.ShowModal;
end;

procedure TForm8.N7Click(Sender: TObject);
begin
Form2.ShowModal;
end;

procedure TForm8.N8Click(Sender: TObject);
begin
Form3.ShowModal;
end;


end.
