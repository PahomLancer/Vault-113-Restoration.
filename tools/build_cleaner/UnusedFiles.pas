unit UnusedFiles;

interface

uses
  System.SysUtils,
  System.IOUtils,
  System.Generics.Collections,
  RegularExpressions,
  System.Classes,
  IdGlobalProtocols;

type
  TUnusedFiles = class
  public
    procedure GetList;
    procedure GetSize;
    procedure Clear;
  end;

implementation

{ TUnusedFiles }

procedure TUnusedFiles.Clear;
var
  I: Integer;
  Size: Integer;
begin
  if not TFile.Exists('unused_assets.txt') then
    raise Exception.Create('Can''t find unused_assets.txt!');

  with TStringList.Create do begin
    LoadFromFile('unused_assets.txt');
    for I:=0 to Count - 1 do
      TFile.Delete(Strings[I]);

    Free;
  end;
end;

procedure TUnusedFiles.GetList;
const
  Path = '..\..\..\..\';
  //Regular = '(([''"])((?:icons|sound)\/.+))\1';
  Regular =  '[''"]((icons|sound)\/.+?\.(dmi|ogg))';
var
  Files: TList<String>;
  Match: TMatch;
  F, Asset: String;
  I: Integer;
begin
  Files:=TList<String>.Create;

  for F in TDirectory.GetFiles(Path + 'icons', '*.dmi', TSearchOption.soAllDirectories) do
    Files.Add(F.LowerCase(F));

  for F in TDirectory.GetFiles(Path + 'sound', '*.ogg', TSearchOption.soAllDirectories) do
    Files.Add(F.LowerCase(F));

  for F in TDirectory.GetFiles(Path + 'code', '*.dm', TSearchOption.soAllDirectories) do begin
    with TStringList.Create do begin
      LoadFromFile(F);
      for Match in TRegEx.Matches(Text, Regular) do begin
        Asset:=Path + Match.Groups[1].Value;
        Asset:=Asset.Replace('/', '\');
        Asset:=Asset.LowerCase(Asset);
        WriteLn(Asset);

        I:=Files.IndexOf(Asset);
        if (I <> -1) then
          Files.Delete(I);
      end;

      Free;
    end;
  end;

  with TStringList.Create do begin
    for F in Files do
      Add(F);

    SaveToFile('unused_assets.txt');

    Free;
  end;

  WriteLn('Unused file list created!');
end;

procedure TUnusedFiles.GetSize;
var
  I: Integer;
  Size: Integer;
begin
  if not TFile.Exists('unused_assets.txt') then
    raise Exception.Create('Can''t find unused_assets.txt!');

  with TStringList.Create do begin
    LoadFromFile('unused_assets.txt');
    for I:=0 to Count - 1 do
      Inc(Size, FileSizeByName(Strings[I]));

    Free;
  end;

  WriteLn(Format('Total Size: %0.1fMB', [Size / 1024 / 1024]));
end;

end.
