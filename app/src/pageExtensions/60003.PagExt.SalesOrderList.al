// Version List=LC00.06;

pageextension 60003 SalesOrderList extends "Sales Order List"
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