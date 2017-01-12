unit view_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, JvExControls, JvNavigationPane, RzButton,jpeg, pngimage,
  DBCtrls,ExtDlgs,cxBlobEdit, DB, DBAccess, MyAccess, MemDS;

type
  Tview_form = class(TForm)
    JvNavPanelHeader1: TJvNavPanelHeader;
    Panel1: TPanel;
    Panel2: TPanel;
    map: TImage;
    exit_btn: TRzBitBtn;
    PictureDialog: TOpenPictureDialog;
    Qanc: TMyQuery;
    Danc: TMyDataSource;
    procedure exit_btnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  view_form: Tview_form;

implementation

uses Module_f, input_f;

{$R *.dfm}

procedure Tview_form.exit_btnClick(Sender: TObject);
begin
close;
end;

procedure Tview_form.FormShow(Sender: TObject);
var
  S : TMemoryStream;
  strm : TMemoryStream;
  indexpoint:integer;
  img: TJpegimage;
  blob: tblobfield;
begin
          input_form.Qanc.Open;
                    S := TMemoryStream.Create;
                    img := TJpegimage.Create;
                    try
                      blob := TBlobField(input_form.Qanc.FieldByName('map'));
                      blob.SaveToStream(s);
                      S.Position := 0;
                      if s.Memory<>nil then
                        begin
                          img.LoadFromStream(s);
                          map.Picture.Assign(img);
                        end
                        else map.Picture := nil;
                      finally
                        img.Free;
                      end;

end;

end.
