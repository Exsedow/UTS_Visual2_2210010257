unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  Tnama = class(TForm)
    lblnama: TLabel;
    lbl1: TLabel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    lbl2: TLabel;
    edt3: TEdit;
    dbgrd1: TDBGrid;
    edt1: TEdit;
    edt2: TEdit;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure edt3Change(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure posisiawal;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  nama: Tnama;
  a : string;

implementation

uses
  Unit2;

{$R *.dfm}

procedure Tnama.btn1Click(Sender: TObject);
begin
//kode simpan
  if edt1.Text = '' then
  begin
    ShowMessage('Nama satuan tidak boleh kosong');
  end
  else if DataModule2.zqry1.Locate('nama', edt1.Text, []) then
  begin
    ShowMessage('Nama Satuan ' + edt1.Text + ' sudah ada dalam sistem');
  end
  else
  begin
    with DataModule2.zqry1 do
    begin
      Insert;
      SQL.Clear;
      SQL.Add('INSERT INTO satuan VALUES (NULL, "' + edt1.Text + '", "' + edt2.Text + '")');
      ExecSQL;
      SQL.Clear;
      SQL.Add('SELECT * FROM satuan');
      Open;
    end;
    ShowMessage('Data berhasil disimpan');
  end;
  posisiawal;
end;

procedure Tnama.btn2Click(Sender: TObject);
begin
//kode update
  if edt1.Text = '' then
begin
  ShowMessage('Nama Satuan tidak boleh kosong');
end
else if (edt1.Text = DataModule2.zqry1.FieldByName('nama').AsString) and (edt2.Text = DataModule2.zqry1.FieldByName('diskripsi').AsString) then
begin
  ShowMessage('Nama Satuan ' + edt1.Text + ' dan deskripsi tidak mengalami perubahan');
end
else
begin
  with DataModule2.zqry1 do
  begin
    SQL.Clear;
    SQL.Add('UPDATE satuan SET nama="' + edt1.Text + '", diskripsi="' + edt2.Text + '" WHERE id="' + a + '"');
    ExecSQL;

    SQL.Clear;
    SQL.Add('SELECT * FROM satuan');
    Open;
  end;
  ShowMessage('Data berhasil disimpan');
end;
posisiawal;
end;

procedure Tnama.btn3Click(Sender: TObject);
begin
//kode delete
if MessageDlg('Apakah Anda Yakin Menghapus Data Ini',mtWarning,[mbYes,mbNo],0)=mryes then
begin
with DataModule2.zqry1 do
begin
     SQL.Clear;
     SQL.Add('delete from satuan where id="'+a+'"');
     ExecSQL;

     SQL.Clear;
     SQL.Add('select * from satuan');
     Open;
end;
   ShowMessage('Data Berhasil DiDelete!');
end else
begin
  ShowMessage('Data Batal Dihapus!');
end;
posisiawal;
end;

procedure Tnama.btn4Click(Sender: TObject);
begin
// batal
edt1.Text := '';
edt2.Text := '';
end;

procedure Tnama.edt3Change(Sender: TObject);
begin
   //kode search
begin
with DataModule2.zqry1 do
begin
  SQL.Clear;
  SQL.Add('select * from satuan where nama like"%'+edt3.Text+'%"');
  Open;
end;
end;
posisiawal;
end;

procedure Tnama.dbgrd1CellClick(Column: TColumn);
begin
edt1.Text:=DataModule2.zqry1.Fields[1].AsString;
edt2.Text:=DataModule2.zqry1.Fields[2].AsString;
a:= DataModule2.zqry1.Fields[0].AsString;
end;



procedure Tnama.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure Tnama.posisiawal;
begin
edt1.Clear;
edt2.Clear;
end;

end.
