table 50003 "User Conversion"
{
    Caption = 'User Conversion';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "On-Premise User Name"; Code[100])
        {
            Caption = 'On-Premise User Name';
        }
        field(2; "User SID"; Guid)
        {
            Caption = 'User SID';
            TableRelation = User;

            trigger OnValidate()
            var
                User: Record User;
            begin
                User.Get("User SID");
                "User ID" := User."User Name";
            end;
        }
        field(3; "User ID"; Code[132])
        {

        }
    }
    keys
    {
        key(PK; "On-Premise User Name")
        {
            Clustered = true;
        }
    }
}
