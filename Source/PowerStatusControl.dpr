program PowerStatusControl;

uses
  Vcl.Forms,
  Winapi.Windows,
  PowerStatusForm in 'PowerStatusForm.pas' {FormWidget},
  TaskbarList in 'TaskbarList.pas';

{$R *.res}
{$WEAKLINKRTTI ON}
{$SETPEFlAGS IMAGE_FILE_RELOCS_STRIPPED}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormWidget, FormWidget);
  Application.Run;
end.
