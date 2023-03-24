// Version List=LC00.06;

pageextension 60001 SalesQuotes extends "Sales Quotes"
{
    layout
    {
        addlast(Control1)
        {
            field("Segment Code"; "Segment Code")
            {
                ApplicationArea = All;
            }
        }
    }
}