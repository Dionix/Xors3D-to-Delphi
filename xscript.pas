{
  Corporation: @D-Dionix
  Author: Dionix_100
  Connection: https://vk.com/id212262518
}

unit xscript;
interface

{$IFDEF MSWINDOWS}
uses
  Windows;

const
    Dlls_xscript= 'xscript.dll';

    function xLoadScript(fileName_prs:AnsiString):Integer; stdcall; external Dlls_xscript name '_xLoadScript@4';
    function xExecuteScript(script_prs:Integer; entryPoint_prs:AnsiString):Integer; stdcall; external Dlls_xscript name '_xExecuteScript@8';
    procedure xDeleteScript(script_prs:Integer); stdcall; external Dlls_xscript name '_xDeleteScript@4';
    procedure xSetIntegerVariable(script_prs:Integer; varName_prs:AnsiString; value_prs:Integer); stdcall; external Dlls_xscript name '_xSetIntegerVariable@12';
    function xGetIntegerVariable(script_prs:Integer; varName_prs:AnsiString):Integer; stdcall; external Dlls_xscript name '_xGetIntegerVariable@8';
    procedure xSetFloatVariable(script_prs:Integer; varName_prs:AnsiString; value_prs:Single); stdcall; external Dlls_xscript name '_xSetFloatVariable@12';
    function xGetFloatVariable(script_prs:Integer; varName_prs:AnsiString):Single; stdcall; external Dlls_xscript name '_xGetFloatVariable@8';
    procedure xSetStringVariable(script_prs:Integer; varName_prs, value_prs:AnsiString); stdcall; external Dlls_xscript name '_xSetStringVariable@12';
    function xGetStringVariable(script_prs:Integer; varName_prs:AnsiString):PAnsiChar; stdcall; external Dlls_xscript name '_xGetStringVariable@8';
    procedure xRegisterFunction(decl_prs:AnsiString; funcAddr_prs:Integer); stdcall; external Dlls_xscript name '_xRegisterFunction@8';
    procedure xSetIntegerArg(index_prs, value_prs:Integer); stdcall; external Dlls_xscript name '_xSetIntegerArg@8';
    procedure xSetFloatArg(index_prs:Integer; value_prs:Single); stdcall; external Dlls_xscript name '_xSetFloatArg@8';
    procedure xSetStringArg(index_prs:Integer; value_prs:AnsiString); stdcall; external Dlls_xscript name '_xSetStringArg@8';
    function xGetIntegerReturn():Integer; stdcall; external Dlls_xscript name '_xGetIntegerReturn@0';
    function xGetFloatReturn():Single; stdcall; external Dlls_xscript name '_xGetFloatReturn@0';
    function xGetStringReturn():PAnsiChar; stdcall; external Dlls_xscript name '_xGetStringReturn@0';
    function xCreateScript(data_prs, length_prs:Integer):Integer; stdcall; external Dlls_xscript name '_xCreateScript@8';
{$ENDIF}
    implementation
end.
