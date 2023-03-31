pageextension 11237500 "DDC Sales Order" extends "Sales Order"
{
    trigger OnOpenPage()
    var
        DDCMain: Codeunit "DDC Main";
    begin
        DDCMain.ShowWelcome();
    end;
}