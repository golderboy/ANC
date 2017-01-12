unit importExcel_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, StdCtrls, Mask, RzEdit, RzBtnEdt,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxLabel, RzButton, DB, DBAccess, MyAccess, MemDS,ComObj, ADODB,
  DBCtrls, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid ,ShellAPI,cxExport,cxGridExportLink;

type
  TimportExcel_form = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    RzBitBtn1: TRzBitBtn;
    load_btn: TRzBitBtn;
    Danc: TDataSource;
    OpenDialog: TOpenDialog;
    Qanc: TMyQuery;
    update_btn: TRzBitBtn;
    clear_btn: TRzBitBtn;
    Navigator: TDBNavigator;
    export_btn: TRzBitBtn;
    save_btn: TRzBitBtn;
    cxGrid: TcxGrid;
    cxGridDBTableView: TcxGridDBTableView;
    cxGridDBTableViewnum_row: TcxGridDBColumn;
    cxGridDBTableViewhospital: TcxGridDBColumn;
    cxGridDBTableViewfname: TcxGridDBColumn;
    cxGridDBTableViewlname: TcxGridDBColumn;
    cxGridDBTableViewcid: TcxGridDBColumn;
    cxGridDBTableViewage: TcxGridDBColumn;
    cxGridDBTableViewedc: TcxGridDBColumn;
    cxGridDBTableViewhouse: TcxGridDBColumn;
    cxGridDBTableViewmoo: TcxGridDBColumn;
    cxGridDBTableViewtumbon: TcxGridDBColumn;
    cxGridDBTableViewhome: TcxGridDBColumn;
    cxGridDBTableViewrisk1: TcxGridDBColumn;
    cxGridDBTableViewrisk2: TcxGridDBColumn;
    cxGridDBTableViewrisk3: TcxGridDBColumn;
    cxGridDBTableViewplan: TcxGridDBColumn;
    cxGridDBTableViewinhome: TcxGridDBColumn;
    cxGridDBTableViewinfomation: TcxGridDBColumn;
    cxGridDBTableViewbdate: TcxGridDBColumn;
    cxGridDBTableViewbplace: TcxGridDBColumn;
    cxGridDBTableViewbweight: TcxGridDBColumn;
    cxGridDBTableViewanc5: TcxGridDBColumn;
    cxGridDBTableViewanc12w: TcxGridDBColumn;
    cxGridDBTableViewdetail: TcxGridDBColumn;
    cxGridLevel: TcxGridLevel;
    cxGridDBTableViewd_update: TcxGridDBColumn;
    cxGridDBTableViewlabor: TcxGridDBColumn;
    procedure load_btnClick(Sender: TObject);
    procedure clear_btnClick(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure export_btnClick(Sender: TObject);
    procedure save_btnClick(Sender: TObject);
    procedure update_btnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    function gettempdir():string;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxGridDBTableViewhospitalCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBTableViewfnameCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBTableViewlnameCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBTableViewageCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBTableViewbweightCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBTableViewcidCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  importExcel_form: TimportExcel_form;

implementation

uses Module_f;

{$R *.dfm}

procedure TimportExcel_form.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        Qanc.close;
        Qanc.SQL.Text:='truncate temp_import ';
        Qanc.Execute;
end;

procedure TimportExcel_form.FormShow(Sender: TObject);
begin
Navigator.Enabled := false;
clear_btn.Enabled := false;
update_btn.Enabled := false;
save_btn.Enabled := false;
export_btn.Enabled := false;
end;

function TimportExcel_form.gettempdir: string;
var
  TempDir: array[0..MAX_PATH] of Char;
begin
  TempDir[GetTempPath(260, TempDir)] := #0;
  Result := TempDir;
end;

procedure TimportExcel_form.RzBitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TimportExcel_form.cxGridDBTableViewageCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if VarToStr(AViewInfo.GridRecord.Values[5]) = '' then
        Acanvas.brush.Color := clHighlight ;
end;

procedure TimportExcel_form.cxGridDBTableViewbweightCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if VarToStr(AViewInfo.GridRecord.Values[19]) = '' then
        Acanvas.brush.Color := clHighlight ;
end;

procedure TimportExcel_form.cxGridDBTableViewcidCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if (VarToStr(AViewInfo.GridRecord.Values[4]) = '' )
or (length(VarToStr(AViewInfo.GridRecord.Values[4])) <13 ) then
        Acanvas.brush.Color := clHighlight ;
end;

procedure TimportExcel_form.cxGridDBTableViewfnameCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if VarToStr(AViewInfo.GridRecord.Values[2]) = '' then
        Acanvas.brush.Color := clHighlight ;
end;

procedure TimportExcel_form.cxGridDBTableViewhospitalCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if VarToStr(AViewInfo.GridRecord.Values[1]) = '' then
        Acanvas.brush.Color := clHighlight ;
end;

procedure TimportExcel_form.cxGridDBTableViewlnameCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if VarToStr(AViewInfo.GridRecord.Values[3]) = '' then
        Acanvas.brush.Color := clHighlight ;
end;

procedure TimportExcel_form.export_btnClick(Sender: TObject);
begin
 ExportGridToExcel(gettempdir + 'data_export.xls', cxGrid, True, True);
 shellexecute(handle, 'Open', pchar(gettempdir + 'data_export.xls'), nil, nil,sw_normal);
end;

procedure TimportExcel_form.load_btnClick(Sender: TObject);
var
  Cols,icols: integer;
  Rows,irows,rowsstart: integer;
  IntCellValue: string;
  Excel, XLSheet,dataexcel: Variant;
  failure: Integer;

begin
        Qanc.close;
        Qanc.SQL.Text:='truncate temp_import ';
        Qanc.Execute;

  failure:=0;
  try
    Excel:=CreateOleObject('Excel.Application');
  except
    failure:=1;
  end;
  if failure = 0 then
  begin
  if opendialog.Execute then
begin
    Excel.Visible:=False;
    Excel.WorkBooks.Open(opendialog.FileName);
    XLSheet := Excel.Worksheets[1];
    Cols := XLSheet.UsedRange.Columns.Count;
    Rows := XLSheet.UsedRange.Rows.Count;

    rowsstart := 2 ;
        for irows := rowsstart to rows do
        begin
        Qanc.close;
        Qanc.SQL.Text:='select * from temp_import';
        Qanc.open;
        Qanc.insert;
        for icols := 1 to cols do
        begin
        IntCellValue:=Excel.Cells[irows,icols];
        Qanc.Fields[icols-1].asstring:=IntCellValue;
        end;
        Qanc.post;
        end;
    Excel.Workbooks.Close;
    Excel.Quit;
    //Excel:=Unassigned;
    showmessage('เตรียมข้อมูลเสร็จสิ้น');

    Navigator.Enabled := true;
    clear_btn.Enabled := true;
    update_btn.Enabled := true;
    export_btn.Enabled := true;

  end;
  end;
        Qanc.close;
        Qanc.SQL.Text:='select * from temp_import ';
        Qanc.open;
//     end;   // confirm
end;

procedure TimportExcel_form.update_btnClick(Sender: TObject);
begin
  if messagedlg('Please confirm update , ยืนยันการปรับปรุงข้อมูล ?',
     mtconfirmation,[mbyes,mbno],0)=mryes then
     begin
        Qanc.close;
        Qanc.SQL.Text :=  ' update temp_import set d_update = CURDATE() '+
                          ' where (d_update = "" OR d_update is null) ';
        Qanc.Execute;
        //step1
        Qanc.SQL.Text :=  ' UPDATE temp_import    '+
                          ' SET edc =              '+
        ' IF( DATE_FORMAT(edc,"%Y") > 2500 '+
        ' ,concat((DATE_FORMAT(edc,"%Y-")-1086),(DATE_FORMAT(edc,"-%c-%e")) )'+
        ' ,concat((DATE_FORMAT(edc,"%Y-")),(DATE_FORMAT(edc,"-%c-%e")) ) '+
        ') '+
        ' WHERE (edc is not null or edc = ""); ';
        Qanc.Execute;
        //step2
        Qanc.SQL.Text :=  ' UPDATE temp_import    '+
                          ' SET bdate =              '+
                ' IF( DATE_FORMAT(bdate,"%Y") > 2500 '+
        ' ,concat((DATE_FORMAT(bdate,"%Y-")-1086),(DATE_FORMAT(bdate,"-%c-%e")) )'+
        ' ,concat((DATE_FORMAT(bdate,"%Y-")),(DATE_FORMAT(bdate,"-%c-%e")) ) '+
        ') '+
        ' WHERE (bdate is not null or bdate = ""); ';
        Qanc.Execute;
        //step3
        showmessage('ปรับปรุงข้อมูลเสร็จสิ้น');

        Qanc.close;
        Qanc.SQL.Text:='select * from temp_import ';
        Qanc.open;

        save_btn.Enabled := true;
     end;
end;

procedure TimportExcel_form.clear_btnClick(Sender: TObject);
begin
  if messagedlg('Please confirm clear , ยืนยันการยกเลิกนำเข้า ?',
     mtconfirmation,[mbyes,mbno],0)=mryes then
     begin
        Qanc.close;
        Qanc.SQL.Text:='truncate temp_import ';
        Qanc.Execute;

        showmessage('เคลียข้อมูลเสร็จสิ้น');

        Qanc.close;

        Navigator.Enabled := false;
        clear_btn.Enabled := false;
        update_btn.Enabled := false;
        save_btn.Enabled := false;
        export_btn.Enabled := false;
     end;
end;

procedure TimportExcel_form.save_btnClick(Sender: TObject);
begin
  if messagedlg('Please confirm import DB, ยืนยันการนำเข้า ?',
     mtconfirmation,[mbyes,mbno],0)=mryes then
     begin
        Qanc.close;
        Qanc.SQL.Text:='INSERT INTO t_person_anc (select *,"" as t_id from temp_import) ';
        Qanc.Execute;

        showmessage('นำเข้าข้อมูลเสร็จสิ้น');

        Qanc.close;
        Qanc.SQL.Text:='truncate temp_import ';
        Qanc.Execute;

        Qanc.close;
        Qanc.SQL.Text:='select * from t_person_anc  order by d_update';
        Qanc.open;

        Navigator.Enabled := false;
        clear_btn.Enabled := false;
        update_btn.Enabled := false;
        save_btn.Enabled := false;
        cxGridDBTableView.OptionsData.Appending := false;
        cxGridDBTableView.OptionsData.CancelOnExit := false;
        cxGridDBTableView.OptionsData.Deleting := false;
        cxGridDBTableView.OptionsData.DeletingConfirmation := false;
        cxGridDBTableView.OptionsData.Editing := false;
        cxGridDBTableView.OptionsData.Inserting := false;

     end;
end;

end.
