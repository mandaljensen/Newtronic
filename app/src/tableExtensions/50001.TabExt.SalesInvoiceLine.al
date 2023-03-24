// Version List=LC00.01;

tableextension 50001 SalesInvoiceLine extends "Sales Invoice Line"
{
    fields
    {
        field(50000; "Expected Delivery"; Code[10])
        {
            CaptionML = DAN = 'Forventet levering', ENU = 'Expected Delivery';
            TableRelation = "Expected Delivery";
        }
    }
}