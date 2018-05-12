unit TaskbarList;

interface

uses
  Winapi.Windows;

procedure DisableTaskbarIcon(Handle: HWND);

implementation

uses System.Win.ComObj;

const
  CLSID_TaskbarList: TGUID = '{56FDF344-FD6D-11d0-958A-006097C9A090}';

type
  ITaskbarList = interface
  ['{56FDF342-FD6D-11d0-958A-006097C9A090}']
     procedure HrInit; safecall;
     procedure AddTab(hwnd: Cardinal); safecall;
     procedure DeleteTab(hwnd: Cardinal); safecall;
     procedure ActivateTab(hwnd: Cardinal); safecall;
     procedure SetActiveAlt(hwnd: Cardinal); safecall;
  end;

procedure DisableTaskbarIcon(Handle: HWND);
var
  Taskbar: ITaskbarList;
begin
  Taskbar := CreateComObject(CLSID_TaskbarList) as ITaskbarList;
  Taskbar.HrInit;
  Taskbar.DeleteTab(Handle);
end;

end.
