unit f12_InfoDialog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg;

type
  Tf12_InformationDialog = class(TForm)
    Label1: TLabel;
    Image1: TImage;
    Button1: TButton;
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InformationDialog: Tf12_InformationDialog;

implementation

{$R *.dfm}

procedure Tf12_InformationDialog.FormActivate(Sender: TObject);
begin
  Application.ProcessMessages;
end;

procedure Tf12_InformationDialog.FormShow(Sender: TObject);
begin
  Screen.Cursor := crSQLWait;
end;

procedure Tf12_InformationDialog.FormHide(Sender: TObject);
begin
  Screen.Cursor := crDefault;
end;

procedure Tf12_InformationDialog.Button1Click(Sender: TObject);
begin
  Close;
end;

end.
