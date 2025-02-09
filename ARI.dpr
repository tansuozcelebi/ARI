program ARI;

{2010 yılında yazılan Borland Delphi ile derlenebilen bir kütüphane}
uses
  Forms,
  SysUtils,
  Dialogs,
  f01_AnaForm in 'f01_AnaForm.pas' {f01_MainForm},
  ARI_DataModule in 'ARI_DataModule.pas' {ARI_DM: TDataModule},
  MainDef in 'MainDef.pas',
  f12_InfoDialog in 'f12_InfoDialog.pas' {f12_InformationDialog},
  f02_Intro in 'f02_Intro.pas' {f02_IntroForm},
  FastReportModule in 'FastReportModule.pas' {MBSFrModule},
  f04_secenekler in 'f04_Secenekler.pas' {f04_SeceneklerForm},
  f03_LogonForm in 'f03_LogonForm.pas' {f03_fLogonForm},
  f05_Avanslar in 'f05_Avanslar.pas' {f05_AvanslarForm},
  f07_EkipSec in 'f07_EkipSec.pas' {f07_EkipSecForm},
  f08_MasrafTablo in 'f08_MasrafTablo.pas' {f08_MasrafTabloForm},
  f06_DinamikRaporlar in 'f06_DinamikRaporlar.pas' {f06_DinamikRaporlarForm};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'ARI Personel Takip Sistemi';
  with Tf02_IntroForm.Create(Application) do
  try
    ProgressBar1.Max := 100;
    Show;   // show a splash screen contain ProgressBar control
    InfoLabel.Caption := 'DataModule.API - Veritabani';
    ProgressBar1.StepBy(30);
    Update;
    Application.CreateForm(TARI_DM, ARI_DM);
  Application.CreateForm(Tf01_MainForm, f01_MainForm);
  Application.CreateForm(Tf08_MasrafTabloForm, f08_MasrafTabloForm);
  Application.CreateForm(Tf06_DinamikRaporlarForm, f06_DinamikRaporlarForm);
  InfoLabel.Caption := 'AnaForm.API - Kontrol';
    ProgressBar1.StepBy(10);
    Update;
    Application.CreateForm(Tf01_MainForm, f01_MainForm);
    Application.CreateForm(TMBSFrModule, MBSFrModule);
    InfoLabel.Caption := 'Rapor Sistemi.API - Fast & Quick';
    ProgressBar1.StepBy(20);
    Update;
    Application.CreateForm(Tf04_SeceneklerForm, f04_SeceneklerForm);
    Application.CreateForm(Tf07_EkipSecForm, f07_EkipSecForm);
    ProgressBar1.StepBy(10);
    Update;
    Application.CreateForm(Tf03_fLogonForm, f03_fLogonForm);
    Application.CreateForm(Tf12_InformationDialog, InformationDialog);
    InfoLabel.Caption := 'Avanslar.API - Veri Hazirlik';
    ProgressBar1.StepBy(10);
    Update;
    Application.CreateForm(Tf05_AvanslarForm, f05_AvanslarForm);
    ProgressBar1.Position := ProgressBar1.Max;
    Close;
  except on E:Exception do
  begin
    ShowMessage('HATA : Kod(100B) : ' + CRLF +   E.Message + CRLF +
                          'Form olusturulamiyor.Uygulama Kapatýlacak...');
    Application.Terminate;
  end;
  end;
//  Application.MainForm := f01_MainForm;
  Application.Run;
end.
