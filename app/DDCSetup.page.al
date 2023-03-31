page 11237500 "DDC Setup"
{
    PageType = Card;
    Caption = 'DDC Setup';
    SourceTable = "DDC Setup";
    ApplicationArea = All;
    UsageCategory = Administration;
    DeleteAllowed = false;
    InsertAllowed = false;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field(WelcomeMessage; Rec.WelcomeMessage)
                {
                    ToolTip = 'This text will be shown after a user successfully opens this page!';
                }
            }
        }
    }

    trigger OnOpenPage()
    begin
        if not Rec.Get() then begin
            Rec.Init();
            Rec.Insert();
        end;
    end;
}