// Version List=LC00.06;

tableextension 50003 SalesHeader extends "Sales Header"
{
    fields
    {
        field(50000; "Segment Code"; Code[10])
        {
            CaptionML = DAN = 'Segment kode', ENU = 'Segment Code';
            TableRelation = Segment;
        }
    }
}