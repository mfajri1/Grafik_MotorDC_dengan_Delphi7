unit aplikasi;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Db, DBTables, Grids, DBGrids, OleCtrls,
  DateUtils, Math, QDialogs, MSCommLib_TLB, ComObj, TeEngine,
  Series, TeeProcs, Chart, CPort;

type
  TfrmAplikasi = class(TForm)
    Timer1: TTimer;
    StringGrid1: TStringGrid;
    GroupBox1: TGroupBox;
    btConnect: TBitBtn;
    btRunning: TBitBtn;
    btClear: TBitBtn;
    btExit: TBitBtn;
    Edit1: TEdit;
    Label3: TLabel;
    Label6: TLabel;
    lbl_tgl: TLabel;
    lbl_jam: TLabel;
    Chart1: TChart;
    Series1: TLineSeries;
    Label_Keterangan: TLabel;
    ed_tegangan: TEdit;
    lbl_count_data: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    CheckBox1: TCheckBox;
    MSComm1: TMSComm;
    procedure btExitClick(Sender: TObject);
    procedure btConnectClick(Sender: TObject);
    procedure btClearClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure btRunningClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
    procedure bersih;
  public
    { Public declarations }
  end;

var
  frmAplikasi: TfrmAplikasi;
  mydelay   : boolean;
  x,waktu   : integer;
  Myseries  : TLineSeries;
  status    : byte;
implementation

{$R *.dfm}

procedure TfrmAplikasi.bersih;
begin
StringGrid1.ColWidths[0]:=20;
StringGrid1.ColWidths[1]:=100;
StringGrid1.cells[0,0]:='NO';
StringGrid1.cells[1,0]:='TEGANGAN';
end;

procedure TfrmAplikasi.btExitClick(Sender: TObject);
begin
   frmAplikasi.close;
end;

procedure TfrmAplikasi.btConnectClick(Sender: TObject);
begin
  if MSComm1.PortOpen then MSComm1.PortOpen := false;
  MSComm1.CommPort := 4;
  MSComm1.InputLen := 0;
  MSComm1.PortOpen := true;

end;

procedure TfrmAplikasi.btClearClick(Sender: TObject);
begin
mydelay := false;
btClear.Enabled:=false;
btRunning.Enabled:=true;
end;

procedure TfrmAplikasi.Timer1Timer(Sender: TObject);
begin
  lbl_tgl.caption:=datetostr(now);
  lbl_jam.caption:=timetostr(now);
end;

procedure TfrmAplikasi.btRunningClick(Sender: TObject);
var
buffer : string;
i      : integer;
str_teg : string;
int_teg : byte;
tegangan : real;
begin
   mydelay := true;
   waktu := 0;tegangan:=0;
   btRunning.Enabled:=false;
   btClear.Enabled:=true;
   i:=0;

repeat
    application.ProcessMessages;
    MySeries.AddXY(Waktu,tegangan);
    buffer := '';
    repeat
  	buffer := buffer + MSComm1.Input;
    until
//    (Pos('', buffer) > 0) or
           (secondsbetween(waktu, now) > 3);
    edit1.text:=buffer;
    if (edit1.text<>'') then
//     and (pos(' ',edit1.text)=0)then
    begin
    waktu := waktu + 1;
    i:=i+1;
    lbl_count_data.caption:=inttostr(i);
    StringGrid1.cells[0,i]:=inttostr(i);
    str_teg:=trim(edit1.text);
{    if length(edit1.text)=1 then
    str_teg:=copy(edit1.text,1,1)
    else
    if length(edit1.text)=2 then
    str_teg:=copy(edit1.text,1,2)
    else
    if length(edit1.text)=3 then
    str_teg:=copy(edit1.text,1,3)
    else
    if length(edit1.text)=4 then
    str_teg:=copy(edit1.text,1,4);}
    int_teg:=strtoint(str_teg);
    tegangan:=int_teg/1023*5;
//    tegangan:=tegangan * 20;
    ed_tegangan.text:=floattostr(tegangan);
    StringGrid1.cells[1,i]:=ed_tegangan.text;
  if i<=20 then
  begin
    if i=20 then
       begin
          label_keterangan.caption:='Data Sudah Penuh!';
          mydelay:=false;
       end
    else
       begin
          label_keterangan.caption:='Proses Penyimpanan Data Sedang Dilakukan!';
       end;
  end;
    end;
    edit1.text:='';
    sleep(1000);   //data diambil setiap 1 detik

if Waktu>60 Then
 Begin
 Repeat
 Myseries.Delete(0);
 waktu:=waktu - 1;
 until Waktu = 0;
 end;
until mydelay=false;
end;

procedure TfrmAplikasi.FormCreate(Sender: TObject);
begin
  bersih;
  MySeries := TlineSeries.Create(self);
  MySeries.ParentChart := Chart1;
  MySeries.Seriescolor := clblue;
end;

procedure TfrmAplikasi.CheckBox1Click(Sender: TObject);
begin
if checkbox1.checked=true then chart1.view3d:=true else chart1.view3d:=false;
end;

end.

