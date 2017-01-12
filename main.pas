unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxRibbonSkins, dxBar, cxClasses, dxRibbon, RzButton, ExtCtrls, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, DB,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, DBAccess,
  MyAccess, MemDS, cxGridLevel, cxGridCustomView, cxGrid,IniFiles;

type
  Tmain_form = class(TForm)
    menubarTab1: TdxRibbonTab;
    menubar: TdxRibbon;
    BarManager: TdxBarManager;
    menubarTab2: TdxRibbonTab;
    BarManagerBar1: TdxBar;
    dxBarButton1: TdxBarButton;
    connect_btn: TdxBarLargeButton;
    import_btn: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    BarManagerBar2: TdxBar;
    new_btn: TdxBarLargeButton;
    report_btn: TdxBarLargeButton;
    view_btn: TdxBarLargeButton;
    Panel1: TPanel;
    close_btn: TRzBitBtn;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGrid: TcxGrid;
    Qanc: TMyQuery;
    Danc: TMyDataSource;
    cxGridDBTableView1num_row: TcxGridDBColumn;
    cxGridDBTableView1hospital: TcxGridDBColumn;
    cxGridDBTableView1fname: TcxGridDBColumn;
    cxGridDBTableView1lname: TcxGridDBColumn;
    cxGridDBTableView1cid: TcxGridDBColumn;
    cxGridDBTableView1age: TcxGridDBColumn;
    cxGridDBTableView1edc: TcxGridDBColumn;
    cxGridDBTableView1house: TcxGridDBColumn;
    cxGridDBTableView1moo: TcxGridDBColumn;
    cxGridDBTableView1tumbon: TcxGridDBColumn;
    cxGridDBTableView1home: TcxGridDBColumn;
    cxGridDBTableView1risk1: TcxGridDBColumn;
    cxGridDBTableView1risk2: TcxGridDBColumn;
    cxGridDBTableView1risk3: TcxGridDBColumn;
    cxGridDBTableView1plan: TcxGridDBColumn;
    cxGridDBTableView1inhome: TcxGridDBColumn;
    cxGridDBTableView1infomation: TcxGridDBColumn;
    cxGridDBTableView1bdate: TcxGridDBColumn;
    cxGridDBTableView1bplace: TcxGridDBColumn;
    cxGridDBTableView1bweight: TcxGridDBColumn;
    cxGridDBTableView1anc5: TcxGridDBColumn;
    cxGridDBTableView1anc12w: TcxGridDBColumn;
    cxGridDBTableView1detail: TcxGridDBColumn;
    edit_btn: TRzBitBtn;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    cxGridDBTableView1labor: TcxGridDBColumn;
    expoet_btn: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    procedure import_btnClick(Sender: TObject);
    procedure connect_btnClick(Sender: TObject);
    procedure close_btnClick(Sender: TObject);
    procedure view_btnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure new_btnClick(Sender: TObject);
    procedure edit_btnClick(Sender: TObject);
    procedure cxGridDBTableView1hospitalCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBTableView1fnameCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBTableView1cidCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBTableView1ageCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBTableView1bweightCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure report_btnClick(Sender: TObject);
    procedure expoet_btnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    controlstore : TIniFile;
    kid :string;
  end;

var
  main_form: Tmain_form;

implementation

uses Module_f, importExcel_f, connection_f, input_f, report_f, export_f;

{$R *.dfm}

procedure Tmain_form.connect_btnClick(Sender: TObject);
begin
    connection_form   := Tconnection_form.Create(application);
    connection_form.ShowModal;
    connection_form.Free
end;

procedure Tmain_form.cxGridDBTableView1ageCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if VarToStr(AViewInfo.GridRecord.Values[5]) = '' then
        Acanvas.brush.Color := clHighlight ;
end;

procedure Tmain_form.cxGridDBTableView1bweightCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if VarToStr(AViewInfo.GridRecord.Values[19]) = '' then
        Acanvas.brush.Color := clHighlight ;
end;

procedure Tmain_form.cxGridDBTableView1cidCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if (VarToStr(AViewInfo.GridRecord.Values[4]) = '' )
or (length(VarToStr(AViewInfo.GridRecord.Values[4])) <13 ) then
        Acanvas.brush.Color := clHighlight ;
end;

procedure Tmain_form.cxGridDBTableView1fnameCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if VarToStr(AViewInfo.GridRecord.Values[2]) = '' then
        Acanvas.brush.Color := clHighlight ;
end;

procedure Tmain_form.cxGridDBTableView1hospitalCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if VarToStr(AViewInfo.GridRecord.Values[1]) = '' then
        Acanvas.brush.Color := clHighlight ;
end;

procedure Tmain_form.expoet_btnClick(Sender: TObject);
begin
    export_form   := Texport_form.Create(application);
    export_form.ShowModal;
    export_form.Free
end;

procedure Tmain_form.edit_btnClick(Sender: TObject);
begin
    input_form   := Tinput_form.Create(application);
    input_form.kid := Qanc.FieldByName('t_id').AsString;
    input_form.text_btn.Enabled := false;
    input_form.ShowModal;
    input_form.Free
end;

procedure Tmain_form.import_btnClick(Sender: TObject);
begin
    importExcel_form   := TimportExcel_form.Create(application);
    importExcel_form.ShowModal;
    importExcel_form.Free
end;

procedure Tmain_form.new_btnClick(Sender: TObject);
begin
    input_form   := Tinput_form.Create(application);
    input_form.ShowModal;
    input_form.Free
end;

procedure Tmain_form.report_btnClick(Sender: TObject);
begin
    report_form   := Treport_form.Create(application);
    report_form.ShowModal;
    report_form.Free
end;

procedure Tmain_form.view_btnClick(Sender: TObject);
begin
Qanc.Close;
Qanc.Open;
end;

procedure Tmain_form.FormShow(Sender: TObject);
begin
             Module.Connection.Connected := false;

          Module.Connection.Server := connection_form.host.Text;
          Module.Connection.Database := connection_form.database.Text;
          Module.Connection.Username := connection_form.user.Text;
          Module.Connection.Password := connection_form.pass.Text;
          Module.Connection.Port := connection_form.Port.Value;
          Module.Connection.Options.Charset := 'tis620';

         try
          Module.Connection.Connected := true;
         if  Module.Connection.Connected then
            begin
            showmessage('Connect ok..');
            end;
         except
           on e : exception do
              begin
             showmessage('False Connect!!'+e.Message);
             menubar.Enabled := false;
             connection_form := Tconnection_form.Create(application);
             connection_form.ShowModal;
             connection_form.Free;
              end;
         end;
end;

procedure Tmain_form.close_btnClick(Sender: TObject);
begin
close;
end;

end.
