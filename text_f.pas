unit text_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxTextEdit, DB, DBAccess, MyAccess, MemDS, Grids, DBGrids,
  StdCtrls, Buttons, ExtCtrls, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid;

type
  Ttext_form = class(TForm)
    text_id: TcxTextEdit;
    MyQuery: TMyQuery;
    MyData: TMyDataSource;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1cid: TcxGridDBColumn;
    cxGrid1DBTableView1fname: TcxGridDBColumn;
    cxGrid1DBTableView1lname: TcxGridDBColumn;
    cxGrid1DBTableView1t_id: TcxGridDBColumn;
    procedure text_idKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    kid,tid :string;
  end;

var
  text_form: Ttext_form;

implementation

uses Module_f, input_f;

{$R *.dfm}

procedure Ttext_form.BitBtn1Click(Sender: TObject);
begin
    Myquery.Close;
    Myquery.SQL.Text := ' select * from t_person_anc where cid = "'+text_id.Text+'" ' ;
    Myquery.Open;
    if Myquery.RecordCount = 1 then
    begin
    input_form.kid := Myquery.FieldByName('t_id').AsString;
    input_form.chk_cid.Text := text_id.Text;
      input_form.Qanc.Close;
      input_form.Qanc.SQL.Text := 'select * from t_person_anc where t_id ="'+Myquery.FieldByName('t_id').AsString+'" ' ;
      input_form.Qanc.Open;

      input_form.num_row.Enabled :=  true;
      input_form.hospital.Enabled :=  true;
      input_form.fname.Enabled :=  true;
      input_form.lname.Enabled :=  true;
      input_form.age.Enabled :=  true;
      input_form.edc.Enabled :=  true;
      input_form.house.Enabled :=  true;
      input_form.moo.Enabled :=  true;
      input_form.tumbon.Enabled :=  true;
      input_form.home.Enabled :=  true;
      input_form.risk1.Enabled :=  true;
      input_form.risk2.Enabled :=  true;
      input_form.risk3.Enabled :=  true;
      input_form.plan.Enabled :=  true;
      input_form.inhome.Enabled :=  true;
      input_form.infomation.Enabled :=  true;
      input_form.bdate.Enabled :=  true;
      input_form.bweight.Enabled :=  true;
      input_form.anc5.Enabled :=  true;
      input_form.anc12w.Enabled :=  true;
      input_form.detail.Enabled :=  true;
      input_form.save_btn.Enabled :=  true;
    end;

    close;
end;

procedure Ttext_form.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
text_id.Text := MyQuery.FieldByName('cid').AsString;
tid :=    MyQuery.FieldByName('t_id').AsString;
end;

procedure Ttext_form.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
    Myquery.Close;
    Myquery.SQL.Text := ' select * from t_person_anc where t_id = "'+tid+'" ' ;
    showmessage(tid);
    Myquery.Open;
    if Myquery.RecordCount = 1 then
    begin
    input_form.kid := Myquery.FieldByName('t_id').AsString;
    input_form.chk_cid.Text := text_id.Text;
      input_form.Qanc.Close;
      input_form.Qanc.SQL.Text := 'select * from t_person_anc where t_id ="'+tid+'" ' ;
      showmessage(input_form.Qanc.SQL.Text);
      input_form.Qanc.Open;

      input_form.num_row.Enabled :=  true;
      input_form.hospital.Enabled :=  true;
      input_form.fname.Enabled :=  true;
      input_form.lname.Enabled :=  true;
      input_form.age.Enabled :=  true;
      input_form.edc.Enabled :=  true;
      input_form.house.Enabled :=  true;
      input_form.moo.Enabled :=  true;
      input_form.tumbon.Enabled :=  true;
      input_form.home.Enabled :=  true;
      input_form.risk1.Enabled :=  true;
      input_form.risk2.Enabled :=  true;
      input_form.risk3.Enabled :=  true;
      input_form.plan.Enabled :=  true;
      input_form.inhome.Enabled :=  true;
      input_form.infomation.Enabled :=  true;
      input_form.bdate.Enabled :=  true;
      input_form.bweight.Enabled :=  true;
      input_form.anc5.Enabled :=  true;
      input_form.anc12w.Enabled :=  true;
      input_form.detail.Enabled :=  true;
      input_form.save_btn.Enabled :=  true;
    end;

    close;
end;

procedure Ttext_form.FormShow(Sender: TObject);
begin
 MyQuery.Open;
end;

procedure Ttext_form.text_idKeyPress(Sender: TObject; var Key: Char);
begin
MyQuery.Close;
MyQuery.SQL.Text := '  select t_id,cid,fname,lname from t_person_anc '+
                     ' where cid = "'+text_id.Text+'" '+
                     ' or fname Like "'+text_id.Text+'%" '+
                     ' or lname Like "%'+text_id.Text+'" '+
                     ' or fname Like "'+text_id.Text+'%" and lname Like  "%'+text_id.Text+'" ';
MyQuery.Open;
end;

end.
