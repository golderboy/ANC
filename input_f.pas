unit input_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxLabel, RzButton, ExtCtrls, JvExControls,
  JvNavigationPane, DB, DBAccess, MyAccess, MemDS, StdCtrls, Buttons,
  cxTextEdit, cxDBEdit, cxMaskEdit, cxSpinEdit, cxDropDownEdit, cxCalendar,
  cxMemo, cxImage, cxCheckBox, cxTimeEdit,jpeg, pngimage, DBCtrls, ExtDlgs,
  cxBlobEdit;

type
  Tinput_form = class(TForm)
    PanelHeader: TJvNavPanelHeader;
    Panel1: TPanel;
    Panel2: TPanel;
    exit_btn: TRzBitBtn;
    save_btn: TRzBitBtn;
    cxLabel1: TcxLabel;
    cid: TcxDBTextEdit;
    chk_btn: TBitBtn;
    Qanc: TMyQuery;
    Danc: TMyDataSource;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    cxLabel18: TcxLabel;
    cxLabel19: TcxLabel;
    cxLabel20: TcxLabel;
    cxLabel21: TcxLabel;
    fname: TcxDBTextEdit;
    lname: TcxDBTextEdit;
    house: TcxDBTextEdit;
    tumbon: TcxDBTextEdit;
    home: TcxDBTextEdit;
    plan: TcxDBTextEdit;
    inhome: TcxDBTextEdit;
    infomation: TcxDBTextEdit;
    bplace: TcxDBTextEdit;
    num_row: TcxDBSpinEdit;
    age: TcxDBSpinEdit;
    moo: TcxDBSpinEdit;
    bweight: TcxDBSpinEdit;
    edc: TcxDBDateEdit;
    bdate: TcxDBDateEdit;
    detail: TcxDBMemo;
    risk1: TcxDBCheckBox;
    risk2: TcxDBCheckBox;
    risk3: TcxDBCheckBox;
    anc5: TcxDBCheckBox;
    anc12w: TcxDBCheckBox;
    cxLabel22: TcxLabel;
    hospital: TcxDBTextEdit;
    d_update: TcxDBDateEdit;
    chk_cid: TcxTextEdit;
    cxLabel23: TcxLabel;
    labor: TcxDBCheckBox;
    PictureDialog: TOpenPictureDialog;
    map: TImage;
    img_btn: TRzBitBtn;
    text_btn: TRzBitBtn;
    RzBitBtn1: TRzBitBtn;
    procedure exit_btnClick(Sender: TObject);
    procedure save_btnClick(Sender: TObject);
    procedure chk_btnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure chk_cidKeyPress(Sender: TObject; var Key: Char);
    procedure chk_btnKeyDown(Sender: TObject; var Key: Word;
    //procedure open_text;
   // procedure close_text(Sender: TObject);
      Shift: TShiftState);
    procedure img_btnClick(Sender: TObject);
    procedure mapDblClick(Sender: TObject);
    procedure text_btnClick(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    kid :string;

  end;

var
  input_form: Tinput_form;

implementation

uses Module_f, main, view_f, text_f;

{$R *.dfm}


procedure Tinput_form.chk_btnClick(Sender: TObject);
var
  S : TMemoryStream;
  img: TJpegimage;
  blob:tblobfield;
begin
if (length(chk_cid.Text) = 13) then
    begin
    Qanc.Close;
    Qanc.SQL.Text := 'select * from t_person_anc where cid ="'+chk_cid.Text+'" ' ;
    //showmessage(Qanc.SQL.Text+' '+chk_cid.Text+' '+cid.Text) ;
    Qanc.Open;

          if not Qanc.Eof then
            begin
              Qanc.Edit;
                  S := TMemoryStream.Create;
                  img := TJpegimage.Create;
                  try
                    blob:=TBlobField(input_form.Qanc.FieldByName('map'));
                    blob.SaveToStream(s);
                    S.Position := 0;
                    if s.Memory<>nil then
                      begin
                        img.LoadFromStream(s);
                        map.Picture.Assign(img);
                      end
                      else map.Picture:=nil;
                    finally
                      img.Free;
                    end;
            end
          else
            begin
              Qanc.Insert;
            end;



num_row.Enabled :=  true;
hospital.Enabled :=  true;
fname.Enabled :=  true;
lname.Enabled :=  true;
age.Enabled :=  true;
edc.Enabled :=  true;
house.Enabled :=  true;
moo.Enabled :=  true;
tumbon.Enabled :=  true;
home.Enabled :=  true;
risk1.Enabled :=  true;
risk2.Enabled :=  true;
risk3.Enabled :=  true;
plan.Enabled :=  true;
inhome.Enabled :=  true;
infomation.Enabled :=  true;
bdate.Enabled :=  true;
bweight.Enabled :=  true;
anc5.Enabled :=  true;
anc12w.Enabled :=  true;
detail.Enabled :=  true;
save_btn.Enabled :=  true;
    end
    else
    showmessage('กรุณากรอกเลขบัตรประชาชนให้ครบ 13 หลัก')  ;

end;

procedure Tinput_form.chk_btnKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_return then
end;

procedure Tinput_form.chk_cidKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in [#8, '0'..'9', DecimalSeparator]) then begin
      ShowMessage('กรุณากรอกตัวเลข : ' + Key);
      //chk_cid.Clear;
      Key := #0;
    end
 {   else if (Key = DecimalSeparator) and
            (Pos(Key, chk_cid.Text) > 0) then begin
      ShowMessage(' กรุณากรอกตัวเลข: twice ' + Key);
      chk_cid.Clear;
      Key := #0;
    end;

    if length(chk_cid.Text) < 13 then
      begin
      ShowMessage(' กรุณากรอกตัวเลข 13 หลัก ');
      chk_cid.Clear;
      end;
      }
end;

procedure Tinput_form.exit_btnClick(Sender: TObject);
begin
close;
end;

procedure Tinput_form.FormShow(Sender: TObject);
var
  S : TMemoryStream;
  img: TJpegimage;
  blob:tblobfield;
begin
Qanc.Close;
Qanc.SQL.Text := 'select cid from t_person_anc where t_id = "'+kid+'" ';
Qanc.OPen;
//showmessage(Qanc.SQL.Text+Qanc.FieldByName('cid').AsString);
chk_cid.Text := Qanc.FieldByName('cid').AsString;
cid.Text :=  chk_cid.Text;
d_update.Date := now;
  if (chk_cid.Text <> '') or (kid <> '') then
    begin
          Qanc.Close;
          Qanc.SQL.Text := 'select * from t_person_anc where t_id ="'+kid+'" ' ;
          //showmessage(Qanc.SQL.Text+' '+chk_cid.Text+' '+cid.Text) ;
          Qanc.Open;
      Qanc.Open;
      if not Qanc.Eof then
            begin
              Qanc.Edit;
                    S := TMemoryStream.Create;
                    img := TJpegimage.Create;
                    try
                      blob:=TBlobField(input_form.Qanc.FieldByName('map'));
                      blob.SaveToStream(s);
                      S.Position := 0;
                      if s.Memory<>nil then
                        begin
                          img.LoadFromStream(s);
                          map.Picture.Assign(img);
                        end
                        else map.Picture:=nil;
                      finally
                        img.Free;
                      end;
            end
          else
            begin
              Qanc.Insert;
            end;



      num_row.Enabled :=  true;
      hospital.Enabled :=  true;
      fname.Enabled :=  true;
      lname.Enabled :=  true;
      age.Enabled :=  true;
      edc.Enabled :=  true;
      house.Enabled :=  true;
      moo.Enabled :=  true;
      tumbon.Enabled :=  true;
      home.Enabled :=  true;
      risk1.Enabled :=  true;
      risk2.Enabled :=  true;
      risk3.Enabled :=  true;
      plan.Enabled :=  true;
      inhome.Enabled :=  true;
      infomation.Enabled :=  true;
      bdate.Enabled :=  true;
      bweight.Enabled :=  true;
      anc5.Enabled :=  true;
      anc12w.Enabled :=  true;
      detail.Enabled :=  true;
      save_btn.Enabled :=  true;
    end
  else
    begin
      num_row.Enabled := false;
      hospital.Enabled := false;
      fname.Enabled := false;
      lname.Enabled := false;
      age.Enabled := false;
      edc.Enabled := false;
      house.Enabled := false;
      moo.Enabled := false;
      tumbon.Enabled := false;
      home.Enabled := false;
      risk1.Enabled := false;
      risk2.Enabled := false;
      risk3.Enabled := false;
      plan.Enabled := false;
      inhome.Enabled := false;
      infomation.Enabled := false;
      bdate.Enabled := false;
      bweight.Enabled := false;
      anc5.Enabled := false;
      anc12w.Enabled := false;
      detail.Enabled := false;
      save_btn.Enabled :=  false;
    end;


end;

procedure Tinput_form.img_btnClick(Sender: TObject);
var   strm : TMemoryStream;
      indexpoint:integer;
begin
  if picturedialog.Execute then map.Picture.LoadFromFile(picturedialog.FileName);
end;

procedure Tinput_form.mapDblClick(Sender: TObject);
begin
    view_form   := Tview_form.Create(application);
    view_form.ShowModal;
    view_form.Free
end;

procedure Tinput_form.RzBitBtn1Click(Sender: TObject);
var confirm : integer;
begin
  if Qanc.RecordCount > 0 then
  begin
    confirm := MessageDlg('Are your confirm delete',mtwarning,mbOKCancel,0) ;
      if confirm = mrOK then
      begin
       Qanc.Delete;
       showmessage ('delete ...OK');
       close;
    end
      else
      begin
        showmessage (' cannot delete');
        //close;
      end
  end;
end;

procedure Tinput_form.text_btnClick(Sender: TObject);
begin
    text_form   := Ttext_form.Create(application);
    text_form.ShowModal;
    text_form.Free
end;

procedure Tinput_form.save_btnClick(Sender: TObject);
var   strm : TMemoryStream;
      indexpoint,chk :integer;
begin
chk :=  strtoint(BoolToStr(labor.Checked));
//showmessage(inttostr(chk));
if chk = 0 then
begin

 //if unchack
if  (cid.Text <> '') and (fname.Text <> '') and (lname.Text <> '') and
     (age.Text <> '') and (house.Text <> '') and (moo.Text <> '')  and
      (tumbon.Text <> '') and (hospital.Text <> '') and (chk_cid.Text <> '') then
          begin
                if Qanc.State in [dsInsert,dsEdit] then
                        begin
                        if assigned(map.picture.graphic)  then
                          begin
                            strm := TMemoryStream.Create;
                                       try
                                         map.Picture.Graphic.SaveToStream(strm);
                                         strm.Position := 0;
                                         if strm.Memory <> nil then
                                         TBlobField(input_form.Qanc.FieldByName('map')).LoadFromStream(strm);
                                       finally
                                         strm.Free;
                                       end;
                          end;
                          Qanc.Post;
                          main_form.Qanc.Close;
                          main_form.Qanc.Open;
                          showmessage('บักทึกข้อมูลเสร็จสิ้น') ;
                          close;
                end

          end// end if 1
          else
                  showmessage('กรุณากรอกข้อมูลให้ครบ ')  ;




end// end if 1
else
begin
if  (fname.Text <> '')and (age.Text <> '') and (hospital.Text <> '') then
          begin
                if Qanc.State in [dsInsert,dsEdit] then
                        begin
                        if assigned(map.picture.graphic)  then
                          begin
                            strm := TMemoryStream.Create;
                                       try
                                         map.Picture.Graphic.SaveToStream(strm);
                                         strm.Position := 0;
                                         if strm.Memory <> nil then
                                         TBlobField(input_form.Qanc.FieldByName('map')).LoadFromStream(strm);
                                       finally
                                         strm.Free;
                                       end;
                          end;
                          Qanc.Post;
                          main_form.Qanc.Close;
                          main_form.Qanc.Open;
                          showmessage('บักทึกข้อมูลต่างด้าว') ;
                          close;
                end

          end// end if 1
          else
                 showmessage('กรุณากรอกข้อมูลให้ครบ ')  ;

         end;
end;

end.
