unit Unit10;

{$MODE Delphi}

interface

uses
  LCLIntf, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, Unit8, StdCtrls, Buttons, LResources;

type
  TForm10 = class(TForm8)
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
    health: integer;
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

uses Unit4;


procedure TForm10.Button2Click(Sender: TObject);
begin
  hide;
  form4:=tform4.create(self);
  form4.show;
end;

procedure TForm10.Button1Click(Sender: TObject);
var oldhealth: dword;
    h,m,s,ms: word;
begin
  if health>500 then health:=500;

  oldhealth:=health;
  dec(health);
  label1.Caption:=inttostr(health);
  decodetime(time,h,m,s,ms);

  if (s>=30) and (health=1000) then button2.Enabled:=true;
  if (s<30) and (health=2000) then button2.Enabled:=true;

  if health<0 then
  begin
    showmessage('You died! Loser! But don''t worry, i''ll bring you back to life.');
    health:=100;
    label1.Caption:=inttostr(health);
  end;
end;

procedure TForm10.FormCreate(Sender: TObject);
begin
  memo1.Lines.Insert(0,'Step 9: Injection++: (PW='+inttostr(313)+inttostr(37157)+')');
  memo1.SelStart:=0;
  health:=100;
end;

procedure TForm10.SpeedButton1Click(Sender: TObject);
begin
  showmessage('This was the last tutorial and you skipped it. You lose');
  Application.Terminate;
end;

initialization
  {$i Unit10.lrs}
  {$i Unit10.lrs}

end.
