unit connection_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus, cxControls,
  cxContainer, cxEdit, cxMaskEdit, cxSpinEdit, cxTextEdit, StdCtrls, cxButtons,
  ExtCtrls, JvExControls, JvNavigationPane,IniFiles;

type
  Tconnection_form = class(TForm)
    JvNavPanelHeader1: TJvNavPanelHeader;
    Panel1: TPanel;
    save_btn: TcxButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    host: TcxTextEdit;
    database: TcxTextEdit;
    user: TcxTextEdit;
    pass: TcxTextEdit;
    connect_btn: TcxButton;
    port: TcxSpinEdit;
    procedure connect_btnClick(Sender: TObject);
    procedure save_btnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    controlstore : TIniFile;
  end;

var
  connection_form: Tconnection_form;

implementation

uses Module_f;

{$R *.dfm}

procedure Tconnection_form.connect_btnClick(Sender: TObject);
begin
   Module.Connection.Server := host.Text;
   Module.Connection.Database := database.Text;
   Module.Connection.Username := user.Text;
   Module.Connection.Password := pass.Text;
   Module.Connection.Port := port.Value;
   Module.Connection.Options.Charset := 'tis620';
   try
   module.Connection.Connected := true;

   if module.Connection.Connected then
      begin
      showmessage('Connect ok..');
      end;
   except
     on e : exception do
        begin
        showmessage('False Connect!!'+e.Message);
        end;
   end;
end;

procedure Tconnection_form.FormCreate(Sender: TObject);
begin
  if fileexists('C:\\ANC\cof.ini') then
   begin
		controlstore := Tinifile.Create('C:\\ANC\cof.ini');
		host.Text := controlstore.ReadString('anc','host','127.0.0.1');
		database.Text := controlstore.ReadString('anc','database','db_anc');
		user.Text := controlstore.ReadString('anc','user','root');
		pass.Text := controlstore.ReadString('anc','pass','123456');
		port.Text := controlstore.ReadString('anc','port','3306');
   end;
end;

procedure Tconnection_form.FormShow(Sender: TObject);
begin
      if fileexists('C:\\ANC\cof.ini') then
   begin
		controlstore := Tinifile.Create('C:\\ANC\cof.ini');
		host.Text := controlstore.ReadString('anc','host','127.0.0.1');
		database.Text := controlstore.ReadString('anc','database','db_anc');
		user.Text := controlstore.ReadString('anc','user','root');
		pass.Text := controlstore.ReadString('anc','pass','123456');
		port.Text := controlstore.ReadString('anc','port','3306');
   end;
end;

procedure Tconnection_form.save_btnClick(Sender: TObject);
begin
   controlstore := Tinifile.Create('C:\\ANC\cof.ini');
   controlstore.WriteString('anc','host',host.Text);
   controlstore.WriteString('anc','database',database.Text);
   controlstore.WriteString('anc','user',user.Text);
   controlstore.WriteString('anc','pass',pass.Text);
   controlstore.WriteString('anc','port',port.Text);

   controlstore.Free;
   close;
end;

end.
