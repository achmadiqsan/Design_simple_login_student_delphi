unit U_login;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.Edit, FMX.Controls.Presentation, FMX.ImgList,
  System.ImageList, FMX.Colors, U_frame;

type
  TForm1 = class(TForm)
    Rectangle1: TRectangle;
    ImageList1: TImageList;
    Glyph1: TGlyph;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Rectangle2: TRectangle;
    Glyph2: TGlyph;
    Edit2: TEdit;
    Rectangle3: TRectangle;
    Glyph3: TGlyph;
    Label3: TLabel;
    Label4: TLabel;
    RoundRect1: TRoundRect;
    Glyph4: TGlyph;
    Button1: TButton;
    Frame2: TFrame2;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure Edit2Click(Sender: TObject);
    procedure RoundRect1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Single);
    procedure RoundRect1MouseLeave(Sender: TObject);
   // procedure Label5Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Label6Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    //procedure RoundRect1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.Button1Click(Sender: TObject);
begin
  application.Terminate;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  if edit1.Text = 'admin' then
    begin
      if edit2.Text = 'admin' then
      begin
        Rectangle1.Visible := false;
        frame2.rectangle4.visible := true;
      end
      else showmessage('Your Password is Wrong');
    end
  else showmessage('Your Student ID Number is Wrong');
end;

procedure TForm1.Edit1Click(Sender: TObject);
begin
  edit1.Text :='';
  Rectangle2.Fill.Color := Talphacolorrec.Yellow;
  Rectangle2.Stroke.Color := Talphacolorrec.Yellow;
  if edit2.Text = '' then
    begin
      edit2.Text := 'Type your Password';
      Rectangle3.Fill.Color := Talphacolorrec.gray;
      Rectangle3.Stroke.Color := Talphacolorrec.gray;
    end;
end;

procedure TForm1.Edit2Click(Sender: TObject);
begin
  edit2.Text :='';
  Rectangle3.Fill.Color := Talphacolorrec.Yellow;
  Rectangle3.Stroke.Color := Talphacolorrec.Yellow;
  if edit1.Text = '' then
    begin
      edit1.Text := 'Type your Student ID Number';
      Rectangle2.Fill.Color := Talphacolorrec.gray;
      Rectangle2.Stroke.Color := Talphacolorrec.gray;
    end;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
  frame2.rectangle4.visible := false;
end;

procedure TForm1.Label6Click(Sender: TObject);
begin
application.Terminate;
end;

{procedure TForm1.Label5Click(Sender: TObject);
begin
  if edit1.Text = '1703002' then
    begin
      if edit2.Text = 'iksan123' then
      begin
        Rectangle1.Visible := false;
        frame2.rectangle4.visible := true;
      end
      else showmessage('Your Password is Wrong');
    end
  else showmessage('Your Student ID Number is Wrong');
end;

procedure TForm1.RoundRect1Click(Sender: TObject);
begin
  if edit1.Text = '1703002' then
    begin
      if edit2.Text = 'iksan123' then
      begin
        Rectangle1.Visible := false;
        frame2.rectangle4.visible := true;
      end
      else showmessage('Your Password is Wrong');
    end
  else showmessage('Your Student ID Number is Wrong');
end;  }

procedure TForm1.RoundRect1MouseLeave(Sender: TObject);
begin
  RoundRect1.Fill.Color := Talphacolorrec.Yellow;
  RoundRect1.Stroke.Color := talphacolorrec.Yellow;
end;

procedure TForm1.RoundRect1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Single);
begin
  RoundRect1.Fill.Color := Talphacolorrec.Gold;
  RoundRect1.Stroke.Color := talphacolorrec.Gold;
end;

end.
