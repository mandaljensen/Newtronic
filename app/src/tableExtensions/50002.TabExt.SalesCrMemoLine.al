// Version List=LC00.01;

tableextension 50002 SalesCrMemoLine extends "Sales Cr.Memo Line"
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