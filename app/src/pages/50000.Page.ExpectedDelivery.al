// Version List=LC00.01;

page 50000 "Expected Delivery"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Expected Delivery";
    CaptionML = DAN = 'Forventet levering', ENU = 'Expected Delivery';

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Code; Rec.Code)
                {
                    ApplicationArea = All;

                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}