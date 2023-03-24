// Version List=LC00.09;

pageextension 60006 SalesSetup extends "Sales & Receivables Setup"
{
    layout
    {
        addlast(General)
        {
            field(SalesDocFooterPicture; Rec."Sales Doc. Footer Picture")
            {
                ApplicationArea = All;
                ToolTipML = DAN = 'Angiver billedet som vises i footeren på salgsdokumenter',
                            ENU = 'Specifies the picture shown in the footer of sales documents.';

                trigger OnValidate()
                begin
                    CurrPage.SaveRecord;
                end;
            }
        }
    }
}