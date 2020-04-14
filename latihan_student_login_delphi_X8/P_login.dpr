program P_login;

uses
  System.StartUpCopy,
  FMX.Forms,
  U_login in 'U_login.pas' {Form1},
  U_frame in 'U_frame.pas' {Frame2: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
