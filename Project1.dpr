program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {nama},
  Unit2 in 'Unit2.pas' {DataModule2: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tnama, nama);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.Run;
end.
