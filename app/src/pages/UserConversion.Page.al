page 50003 "User Conversion"
{
    ApplicationArea = All;
    Caption = 'User Conversion';
    PageType = List;
    SourceTable = "User Conversion";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("On-Premise User Name"; Rec."On-Premise User Name")
                {
                    ToolTip = 'Specifies the value of the On-Premise User Name field.';
                }
                field("User SID"; Rec."User SID")
                {
                    ToolTip = 'Specifies the value of the User field.';
                }
                field("User ID"; Rec."User ID")
                {
                    ToolTip = 'Specifies the value of the User ID field.';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(FillTable)
            {
                Caption = 'Fill table';
                ApplicationArea = All;
                ToolTip = 'Executes the Fill table action.';
                Image = SparkleFilled;

                trigger OnAction()
                var
                    NTRecordLinks: Record "NT Record Link";
                    UserConversion: Record "User Conversion";
                begin
                    if NTRecordLinks.FindSet(false) then
                        repeat
                            if not UserConversion.Get(NTRecordLinks."User ID") then begin
                                UserConversion.Init();
                                UserConversion."On-Premise User Name" := NTRecordLinks."User ID";
                                UserConversion.Insert(true);
                            end;
                            if not UserConversion.Get(NTRecordLinks."To User ID") then begin
                                UserConversion.Init();
                                UserConversion."On-Premise User Name" := NTRecordLinks."To User ID";
                                UserConversion.Insert(true);
                            end;
                        until (NTRecordLinks.Next() <= 0);
                end;
            }
        }
    }
}
