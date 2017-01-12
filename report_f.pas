unit report_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzButton, ExtCtrls, JvExControls, JvNavigationPane, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, DBAccess, MyAccess, MemDS,
  ComCtrls, cxContainer, cxTreeView, StdCtrls, cxLabel, dxCore, cxDateUtils,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,ShellAPI,cxExport,cxGridExportLink,
  ppDB, ppDBPipe, ppBands, ppCache, ppClass, ppDesignLayer, ppParameter, ppComm,
  ppRelatv, ppProd, ppReport, ppModule, raCodMod, ppVar, ppPrnabl, ppCtrls,
  ppStrtch, ppMemo;

type
  Treport_form = class(TForm)
    PanelHeader: TJvNavPanelHeader;
    Panel2: TPanel;
    close_btn: TRzBitBtn;
    Panel1: TPanel;
    Panel3: TPanel;
    MyQuery: TMyQuery;
    MyData: TMyDataSource;
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
    cxGridDBTableView1detail: TcxGridDBColumn;
    cxGridDBTableView1d_update: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    report_list: TListBox;
    Panel4: TPanel;
    run_btn: TRzBitBtn;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    date_start: TcxDateEdit;
    date_end: TcxDateEdit;
    export_btn: TRzBitBtn;
    cxGridDBTableView1labor: TcxGridDBColumn;
    ppReport: TppReport;
    print_btn: TRzBitBtn;
    ppParameterList1: TppParameterList;
    DBPipeline: TppDBPipeline;
    for_print: TMyDataSource;
    ppTitleBand1: TppTitleBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppHeaderBand1: TppHeaderBand;
    ppShape21: TppShape;
    ppShape20: TppShape;
    ppShape19: TppShape;
    ppShape18: TppShape;
    ppShape17: TppShape;
    ppShape16: TppShape;
    ppShape14: TppShape;
    ppShape12: TppShape;
    ppShape10: TppShape;
    ppShape8: TppShape;
    ppShape6: TppShape;
    ppShape4: TppShape;
    ppShape1: TppShape;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppShape27: TppShape;
    ppShape26: TppShape;
    ppShape25: TppShape;
    ppShape24: TppShape;
    ppShape23: TppShape;
    ppShape22: TppShape;
    ppShape15: TppShape;
    ppShape13: TppShape;
    ppShape11: TppShape;
    ppShape9: TppShape;
    ppShape5: TppShape;
    ppShape7: TppShape;
    ppShape3: TppShape;
    ppShape2: TppShape;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBMemo1: TppDBMemo;
    ppLabel16: TppLabel;
    ppShape28: TppShape;
    ppFooterBand1: TppFooterBand;
    raCodeModule1: TraCodeModule;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    QP: TMyQuery;
    procedure close_btnClick(Sender: TObject);
    procedure run_btnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure export_btnClick(Sender: TObject);
    function gettempdir():string;
    procedure print_btnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  report_form: Treport_form;

implementation

uses Module_f;

{$R *.dfm}

procedure Treport_form.close_btnClick(Sender: TObject);
begin
close;
end;

procedure Treport_form.FormShow(Sender: TObject);
begin
MyQuery.Close;
  date_start.Date := now;
  date_end.Date   := now;
  print_btn.Enabled := false;
  export_btn.Enabled := false;
 // MyQuery.Params.ParamValues['date1']:=StrToDate(FormatDateTime('dd/mm/yyyy',date_start.Date));
 // MyQuery.Params.ParamValues['date2']:=StrToDate(FormatDateTime('dd/mm/yyyy',date_end.Date));

end;

function Treport_form.gettempdir: string;
var
  TempDir: array[0..MAX_PATH] of Char;
begin
  TempDir[GetTempPath(260, TempDir)] := #0;
  Result := TempDir;
end;

procedure Treport_form.run_btnClick(Sender: TObject);
var date1,date2 :string;
begin
MyQuery.Close;
QP.Close;
  date1 := FormatDateTime('yyyymmdd',date_start.Date);
  date2 := FormatDateTime('yyyymmdd',date_end.Date);
  //Report.ppLabel1.Caption := 'xxxxxx';

  case report_list.ItemIndex of
  0 : MyQuery.SQL.Text := 'select * from t_person_anc where edc between '+date1+' and '+date2+' and cid !=""  order by d_update ';
  1 : MyQuery.SQL.Text := 'select * from t_person_anc where anc12w != "" and edc between '+date1+' and '+date2+' and cid !=""  order by d_update ';
  2 : MyQuery.SQL.Text := 'select * from t_person_anc where risk1 != "" and edc between '+date1+' and '+date2+' and cid !=""  order by d_update ';
  3 : MyQuery.SQL.Text := 'select * from t_person_anc where risk2 != "" and edc between '+date1+' and '+date2+' and cid !=""  order by d_update ';
  4 : MyQuery.SQL.Text := 'select * from t_person_anc where risk3 != "" and edc between '+date1+' and '+date2+' and cid !=""  order by d_update ';
  5 : MyQuery.SQL.Text := 'select * from t_person_anc where age <= 20 and edc between '+date1+' and '+date2+' and cid !=""  order by d_update ';
  6 : MyQuery.SQL.Text := 'select * from t_person_anc where bdate = "" AND edc between '+date1+' and '+date2+' and cid !=""  order by d_update ';
  7 : MyQuery.SQL.Text := 'select * from t_person_anc where bdate != "" AND bdate between '+date1+' and '+date2+' and cid !=""  order by d_update ';
  8 : MyQuery.SQL.Text := 'select * from t_person_anc where bdate != "" AND bweight <= 2500 AND bdate between '+date1+' and '+date2+' and cid !=""  order by d_update ';
  9 : MyQuery.SQL.Text := 'select * from t_person_anc where bdate != "" AND anc5 != "" AND bdate between '+date1+' and '+date2+' and cid !=""  order by d_update ';
  10 : MyQuery.SQL.Text := 'select * from t_person_anc where cid = "" OR cid is null ';
  end ;
  //showmessage('กรุณาเลือกรายงาน');

  //MyQuery.Params.ParamValues['date1']:=StrToDate(FormatDateTime('dd/mm/yyyy',date_start.Date));
  //MyQuery.Params.ParamValues['date2']:=StrToDate(FormatDateTime('dd/mm/yyyy',date_end.Date));
//showmessage(MyQuery.SQL.Text);
MyQuery.Open;
  Qp.SQL.Text := MyQuery.SQL.Text;
QP.Open;
  print_btn.Enabled := true;
  export_btn.Enabled := true;
end;

procedure Treport_form.export_btnClick(Sender: TObject);
begin
 ExportGridToExcel(gettempdir + 'data_export.xls', cxGrid, True, True);
 shellexecute(handle, 'Open', pchar(gettempdir + 'data_export.xls'), nil, nil,sw_normal);
end;

procedure Treport_form.print_btnClick(Sender: TObject);
begin

        case report_list.ItemIndex of
        0 : ppLabel1.Caption :=  report_list.Items[report_list.ItemIndex];
        1 : ppLabel1.Caption :=  report_list.Items[report_list.ItemIndex];
        2 : ppLabel1.Caption :=  report_list.Items[report_list.ItemIndex];
        3 : ppLabel1.Caption :=  report_list.Items[report_list.ItemIndex];
        4 : ppLabel1.Caption :=  report_list.Items[report_list.ItemIndex];
        5 : ppLabel1.Caption :=  report_list.Items[report_list.ItemIndex];
        6 : ppLabel1.Caption :=  report_list.Items[report_list.ItemIndex];
        7 : ppLabel1.Caption :=  report_list.Items[report_list.ItemIndex];
        8 : ppLabel1.Caption :=  report_list.Items[report_list.ItemIndex];
        9 : ppLabel1.Caption :=  report_list.Items[report_list.ItemIndex];
        10 : ppLabel1.Caption :=  report_list.Items[report_list.ItemIndex];
        end ;

  ppReport.PrintReport;

end;

end.
