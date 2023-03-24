// Version List=LC00.06;

pageextension 60002 SalesQuote extends "Sales Quote"
{
    layout
    {
        addlast(General)
        {
            field("Segment Code"; "Segment Code")
            {
                ApplicationArea = All;
            }
        }
    }
}