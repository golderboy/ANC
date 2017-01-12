unit Module_f;

interface

uses
  SysUtils, Classes, DB, DBAccess, MyAccess;

type
  TModule = class(TDataModule)
    Connection: TMyConnection;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Module: TModule;

implementation

{$R *.dfm}

{ TModule }



end.
