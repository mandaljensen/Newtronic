// Version List=LC00.06;

table 50001 Segment
{
    DataClassification = ToBeClassified;
    CaptionML = DAN = 'Segment', ENU = 'Segment';
    DrillDownPageId = SegmentList;
    LookupPageId = SegmentList;

    fields
    {
        field(1; Code; Code[10])
        {
            CaptionML = DAN = 'Kode', ENU = 'Code';
            NotBlank = true;
        }

        field(2; Description; Text[50])
        {
            CaptionML = DAN = 'Beskrivelse', ENU = 'Description';
        }
    }

    keys
    {
        key(Key1; Code)
        {
            Clustered = true;
        }
    }
}