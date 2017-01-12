unit export_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, ComCtrls, dxCore, cxDateUtils, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxLabel, RzButton, ExtCtrls, JvExControls, JvNavigationPane, MemDS, DBAccess,
  MyAccess,ShellAPI,cxExport,cxGridExportLink;

type
  Texport_form = class(TForm)
    PanelHeader: TJvNavPanelHeader;
    Panel4: TPanel;
    run_btn: TRzBitBtn;
    cxLabel2: TcxLabel;
    date_start: TcxDateEdit;
    date_end: TcxDateEdit;
    RzBitBtn1: TRzBitBtn;
    Panel3: TPanel;
    cxGrid: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
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
    cxGridDBTableView1labor: TcxGridDBColumn;
    cxGridDBTableView1detail: TcxGridDBColumn;
    cxGridDBTableView1d_update: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Panel2: TPanel;
    close_btn: TRzBitBtn;
    MyData: TMyDataSource;
    MyQuery: TMyQuery;
    cxLabel1: TcxLabel;
    procedure RzBitBtn1Click(Sender: TObject);
    function gettempdir():string;
    procedure run_btnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure close_btnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  export_form: Texport_form;

implementation

uses Module_f, main;

{$R *.dfm}

procedure Texport_form.close_btnClick(Sender: TObject);
begin
close;
end;

procedure Texport_form.FormShow(Sender: TObject);
begin
  date_start.Date := now;
  date_end.Date   := now;
end;

function Texport_form.gettempdir: string;
var
  TempDir: array[0..MAX_PATH] of Char;
begin
  TempDir[GetTempPath(260, TempDir)] := #0;
  Result := TempDir;
end;

procedure Texport_form.run_btnClick(Sender: TObject);
begin
MyQuery.Close;
  //date_start.Date := now;
  //date_end.Date   := now;
  MyQuery.Params.ParamValues['date1']:=StrToDate(FormatDateTime('dd/mm/yyyy',date_start.Date));
  MyQuery.Params.ParamValues['date2']:=StrToDate(FormatDateTime('dd/mm/yyyy',date_end.Date));
MyQuery.Open;
end;

procedure Texport_form.RzBitBtn1Click(Sender: TObject);
begin
 ExportGridToExcel(gettempdir + 'data_export.xls', cxGrid, True, True);
 shellexecute(handle, 'Open', pchar(gettempdir + 'data_export.xls'), nil, nil,sw_normal);
end;

end.
