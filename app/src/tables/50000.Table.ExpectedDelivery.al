// Version List=LC00.01;

table 50000 "Expected Delivery"
{
    CaptionML = DAN = 'Forventet levering', ENU = 'Expected Delivery';
    DataCaptionFields = Code, Description;
    LookupPageId = "Expected Delivery";

    fields
    {
        field(1; Code; Code[10])
        {
            CaptionML = DAN = 'Kode', ENU = 'Code';
        }
        field(2; Description; Text[100])
        {
            CaptionML = DAN = 'Beskrivelse', ENU = 'Description';
        }
    }

    keys
    {
        key(PK; Code)
        {
            Clustered = true;
        }
    }
}