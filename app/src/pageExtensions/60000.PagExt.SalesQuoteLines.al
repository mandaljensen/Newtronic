// Version List=LC00.01;

pageextension 60000 SalesQuoteLines extends "Sales Quote Subform"
{
    layout
    {
        addlast(Control1)
        {
            field("Expected Delivery"; Rec."Expected Delivery")
            {
                ApplicationArea = All;
            }
        }
    }
}