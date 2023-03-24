// Version List=LC00.06;

pageextension 60004 SalesOrder extends "Sales Order"
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