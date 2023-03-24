// Version List=LC00.09;

tableextension 50005 SalesSetup extends "Sales & Receivables Setup"
{
    fields
    {
        field(50000; "Sales Doc. Footer Picture"; Blob)
        {
            CaptionML = DAN = 'Salgsdok. footer billede', ENU = 'Sales Doc. Footer Picture';
            SubType = Bitmap;
        }
    }
}