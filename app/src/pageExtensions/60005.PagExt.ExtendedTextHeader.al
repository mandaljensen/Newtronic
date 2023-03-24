// Version List=LC00.08;

pageextension 60005 ExtendedTextHeader extends "Extended Text"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        addlast(Processing)
        {
            action("Set Sales Reports")
            {
                Image = Approval;
                CaptionML = DAN = 'Markér salgsrapporter', ENU = 'Set Sales Reports';
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                ApplicationArea = All;

                trigger OnAction()
                begin
                    Rec.SetUnsetSalesReports(true);
                end;
            }

            action("Unset Sales Reports")
            {
                Image = Reject;
                CaptionML = DAN = 'Fjern markering på salgsrapporter', ENU = 'Unset Sales Reports';
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                ApplicationArea = All;

                trigger OnAction()
                begin
                    Rec.SetUnsetSalesReports(false);
                end;
            }

            action("Set Purch Reports")
            {
                Image = Approval;
                CaptionML = DAN = 'Markér købsrapporter', ENU = 'Set Purch. Reports';
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                ApplicationArea = All;

                trigger OnAction()
                begin
                    Rec.SetUnsetPurchReports(true);
                end;
            }

            action("Unset Purch Reports")
            {
                Image = Reject;
                CaptionML = DAN = 'Fjern markering på købsrapporter', ENU = 'Unset Purch. Reports';
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                ApplicationArea = All;

                trigger OnAction()
                begin
                    Rec.SetUnsetPurchReports(false);
                end;
            }
        }
    }

    var
        myInt: Integer;
}