program grafik_delphi;

uses
  Forms,
  aplikasi in 'aplikasi.pas' {frmAplikasi};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmAplikasi, frmAplikasi);
  Application.Run;
end.
