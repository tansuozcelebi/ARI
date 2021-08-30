unit f06_DinamikRaporlar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, FileCtrl, FR_Class, Buttons, ToolWin,
  ComCtrls;

type
  Tf06_DinamikRaporlarForm = class(TForm)
    FileListBox: TFileListBox;
    Panel1: TPanel;
    Label1: TLabel;
    frReport: TfrReport;
    Memo1: TMemo;
    ToolBar1: TToolBar;
    DesignBtn: TBitBtn;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    PreviewBtn: TBitBtn;
    BitBtn1: TBitBtn;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    frReportDesign: TfrReport;
    procedure FormCreate(Sender: TObject);
    procedure FileListBoxClick(Sender: TObject);
    procedure PreviewBtnClick(Sender: TObject);
    procedure DesignBtnClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FileListBoxDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f06_DinamikRaporlarForm: Tf06_DinamikRaporlarForm;

implementation

uses f01_AnaForm, f12_InfoDialog;

{$R *.dfm}

procedure Tf06_DinamikRaporlarForm.FormCreate(Sender: TObject);
begin
  FileListBox.Directory := f01_MainForm.WPath;
end;

procedure Tf06_DinamikRaporlarForm.FileListBoxClick(Sender: TObject);
var RapName : string;
begin
  Screen.Cursor := crSQLWait;
  RapName := '';
  RapName := FileListBox.FileName;
  label1.Caption := f01_MainForm.WPath +RapName;
  if RapName <> '' then
  begin
    with frReport do
    begin
      LoadFromFile(f01_MainForm.WPath + RapName);
      if Dictionary.Variables.IndexOf('Aciklama') <> - 1 then
        Memo1.Text := Dictionary.Variables['Aciklama'] else
        Memo1.Text := 'Verisozlugune Aciklama tanimlanmamiş....';
    end;
  end; (* else ShowMessage('Menüden rapor tipi seciniz....'); *)
  Screen.Cursor := crDefault;
end;

procedure Tf06_DinamikRaporlarForm.PreviewBtnClick(Sender: TObject);
var RapName : string;
begin
  Screen.Cursor := crSQLWait;
  RapName := '';
  RapName := FileListBox.FileName;
  label1.Caption := f01_MainForm.WPath +RapName;
  if RapName <> '' then
  begin
    with frReport do
    begin
      if LoadFromFile(f01_MainForm.WPath + RapName) then
      ShowReport
      else ShowMessage('Ozel Rapor bulunamadı... Kayit hatasi...');
    end;
  end;
  Screen.Cursor := crDefault;
end;

procedure Tf06_DinamikRaporlarForm.DesignBtnClick(Sender: TObject);
var RapName : string;
begin
  Screen.Cursor := crSQLWait;
  RapName := '';
  RapName := FileListBox.FileName;
  label1.Caption := f01_MainForm.WPath +RapName;
  if RapName <> '' then
  begin
    with frReport do
    begin
      if LoadFromFile(f01_MainForm.WPath + RapName) then
      DesignReport
      else ShowMessage('Ozel Rapor bulunamadı... Kayit hatasi...');
    end;
  end;
  Screen.Cursor := crDefault;
end;

procedure Tf06_DinamikRaporlarForm.BitBtn1Click(Sender: TObject);
begin
  InformationDialog.Show;
  frReportDesign.DesignReport;
  FileListBox.Update;
  InformationDialog.Hide;
end;

procedure Tf06_DinamikRaporlarForm.FormShow(Sender: TObject);
begin
  FileListBox.Update;
end;

procedure Tf06_DinamikRaporlarForm.FileListBoxDblClick(Sender: TObject);
begin
  FileListBox.Update;
end;

end.
