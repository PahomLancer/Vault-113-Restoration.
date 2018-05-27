program build_cleaner;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  System.IOUtils,
  System.Generics.Collections,
  RegularExpressions,
  System.Classes,
  UnusedFiles in 'UnusedFiles.pas';

var
  UnusedFiles: TUnusedFiles;
begin
  UnusedFiles:=TUnusedFiles.Create;
  UnusedFiles.GetList;
  UnusedFiles.GetSize;


  WriteLn('Press any key to remove files...');
  ReadLn;

  UnusedFiles.Clear;

  UnusedFiles.Free;
end.
