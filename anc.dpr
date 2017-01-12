program anc;

uses
  Forms,
  main in 'main.pas' {main_form},
  importExcel_f in 'importExcel_f.pas' {importExcel_form},
  Module_f in 'Module_f.pas' {Module: TDataModule},
  connection_f in 'connection_f.pas' {connection_form},
  input_f in 'input_f.pas' {input_form},
  report_f in 'report_f.pas' {report_form},
  view_f in 'view_f.pas' {view_form},
  text_f in 'text_f.pas' {text_form},
  export_f in 'export_f.pas' {export_form};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TModule, Module);
  Application.CreateForm(Tmain_form, main_form);
  Application.CreateForm(Tconnection_form, connection_form);
  Application.CreateForm(Texport_form, export_form);
  Application.Run;
end.
