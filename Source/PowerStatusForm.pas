unit PowerStatusForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Classes,
  Vcl.Controls, Vcl.Forms, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Menus;

type
  TFormWidget = class(TForm)
    TrackBarExecutionStatus: TTrackBar;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure TrackBarExecutionStatusChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure WMNCHitTest(var Message: TWMNCHitTest); message WM_NCHITTEST;
    procedure WMSysCommand(var Message: TWMSysCommand); message WM_SYSCOMMAND;
  end;

var
  FormWidget: TFormWidget;

implementation

{$R *.dfm}

uses TaskbarList;

const
  idOnTop = 10001; // Stay OnTop menu item

  Modes: array [0..3] of Cardinal = (0, ES_SYSTEM_REQUIRED, ES_DISPLAY_REQUIRED,
    ES_AWAYMODE_REQUIRED);

procedure TFormWidget.TrackBarExecutionStatusChange(Sender: TObject);
begin
  SetThreadExecutionState(ES_CONTINUOUS or
    Modes[TrackBarExecutionStatus.Position]);
end;

procedure TFormWidget.FormCreate(Sender: TObject);
var
  hSysMenu: HMENU;
begin
  DisableTaskbarIcon(Handle);
  Left := Screen.WorkAreaWidth - Width;
  Top := Screen.WorkAreaHeight - Height;
  hSysMenu := GetSystemMenu(Handle, False);
  AppendMenu(hSysMenu, MF_SEPARATOR, 0, nil);
  AppendMenu(hSysMenu, MF_STRING or MF_CHECKED, idOnTop, 'Stay On Top');
end;

procedure TFormWidget.WMNCHitTest(var Message: TWMNCHitTest);
var
  p: TPoint;
begin
  p.X := Message.XPos;
  p.Y := Message.YPos;
  p := ScreenToClient(p);
  if PtInRect(GetClientRect, p) then
    Message.Result := HTCaption
  else
    Message.Result := DefWindowProc(Handle, Message.Msg, 0,
      Message.YPos shl 16 or Message.XPos);
end;

procedure TFormWidget.WMSysCommand(var Message: TWMSysCommand);
var
  hSysMenu: HMENU;
begin
  if Message.CmdType = idOnTop then
  begin
    hSysMenu := GetSystemMenu(Handle, False);
    if FormStyle = fsNormal then
    begin
      FormStyle := fsStayOnTop;
      CheckMenuItem(hSysMenu, idOnTop, MF_CHECKED);
    end
    else
    begin
      FormStyle := fsNormal;
      CheckMenuItem(hSysMenu, idOnTop, MF_UNCHECKED);
    end;
  end
  else
    Message.Result := DefWindowProc(Handle, Message.Msg, Message.CmdType,
      Message.YPos shl 16 or Message.XPos);
end;

end.
