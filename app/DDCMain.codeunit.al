codeunit 11237500 "DDC Main"
{
    trigger OnRun()
    begin

    end;

    procedure ShowWelcome()
    var
        DDCSetup: Record "DDC Setup";
        DefaultWelcomeMessage: Label 'Thanks for shopping at DDC !';
    begin
        if NavApp.IsUnlicensed('47ed1a1e-66c6-4522-8fab-3a31028e033c') then begin
            Message('Please contact your partner to get an updated license!');
            exit;
        end;

        if NavApp.IsEntitled('DDCFull') then begin
            if not DDCSetup.Get() then begin
                DDCSetup.Init();
                DDCSetup.WelcomeMessage := DefaultWelcomeMessage;
            end;
            Message(DDCSetup.WelcomeMessage);
            exit;
        end;

        Message('Entitlements not active.');
    end;

}