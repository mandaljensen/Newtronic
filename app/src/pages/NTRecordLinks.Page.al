page 50002 "NT Record Links"
{
    ApplicationArea = All;
    Caption = 'NT Record Links';
    PageType = List;
    SourceTable = "NT Record Link";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Link ID"; Rec."Link ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Link ID field.';
                }
                field("Record ID"; Rec."Record ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Record ID field.';
                }
                field(URL1; Rec.URL1)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the URL1 field.';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Description field.';
                }
                field("Type"; Rec."Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Type field.';
                }
                field(Note; Rec.Note)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Note field.';
                }
                field(Created; Rec.Created)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Created field.';
                }
                field("User ID"; Rec."User ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the User ID field.';
                }
                field(Company; Rec.Company)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Company field.';
                }
                field(Notify; Rec.Notify)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Notify field.';
                }
                field("To User ID"; Rec."To User ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the To User ID field.';
                }
                field(Processed; Rec.Processed)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Processed field.';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(MoveRecordLinks)
            {
                Caption = 'Move RecordLinks';
                ApplicationArea = All;
                Image = CreateMovement;
                ToolTip = 'Executes the Move RecordLinks action.';

                trigger OnAction()
                var
                    RecordLink: Record "Record Link";
                    NTRecordLink: Record "NT Record Link";
                begin
                    if RecordLink.FindSet(false) then
                        repeat
                            RecordLink.CalcFields(Note);

                            NTRecordLink.Init();
                            NTRecordLink."Link ID" := RecordLink."Link ID";
                            NTRecordLink."Record ID" := RecordLink."Record ID";
                            NTRecordLink.URL1 := RecordLink.URL1;
                            NTRecordLink.Description := RecordLink.Description;
                            NTRecordLink.Type := RecordLink.Type;
                            NTRecordLink.Note := RecordLink.Note;
                            NTRecordLink.Created := RecordLink.Created;
                            NTRecordLink."User ID" := RecordLink."User ID";
                            NTRecordLink.Company := RecordLink.Company;
                            NTRecordLink.Notify := RecordLink.Notify;
                            NTRecordLink."To User ID" := RecordLink."To User ID";
                            NTRecordLink.Insert(true);
                        until (RecordLink.Next() <= 0);
                end;
            }

            action(CreateRecordLinks)
            {
                Caption = 'Create Record Links';
                ApplicationArea = All;
                ToolTip = 'Executes the Create Record Links action.';
                Image = Create;

                trigger OnAction()
                var
                    NTRecordLinks: Record "NT Record Link";
                    NTRecordLinks2: Record "NT Record Link";
                    RecordLink: Record "Record Link";
                    UserConversion: Record "User Conversion";
                    UserConversionToUser: Record "User Conversion";
                begin
                    NTRecordLinks.SetRange(Processed, false);
                    if NTRecordLinks.FindSet(false) then
                        repeat
                            NTRecordLinks.CalcFields(Note);
                            If (UserConversion.Get(NTRecordLinks."User ID") and (UserConversionToUser.Get(NTRecordLinks."To User ID"))) then begin
                                RecordLink.Init();
                                RecordLink."Link ID" := NTRecordLinks."Link ID";
                                RecordLink."Record ID" := NTRecordLinks."Record ID";
                                RecordLink.URL1 := NTRecordLinks.URL1;
                                RecordLink.Description := NTRecordLinks.Description;
                                RecordLink.Type := NTRecordLinks.Type;
                                RecordLink.Note := NTRecordLinks.Note;
                                RecordLink.Created := NTRecordLinks.Created;
                                RecordLink."User ID" := UserConversion."User ID";
                                RecordLink.Company := NTRecordLinks.Company;
                                RecordLink.Notify := NTRecordLinks.Notify;
                                RecordLink."To User ID" := UserConversionToUser."User ID";
                                RecordLink.Insert(true);

                                NTRecordLinks2.Get(NTRecordLinks."Link ID");
                                NTRecordLinks2.Processed := true;
                                NTRecordLinks2.Modify(true);
                            end;
                        until (NTRecordLinks.Next() <= 0);
                end;
            }

            action(TestNoteField)
            {
                Caption = 'Test Note';
                ApplicationArea = All;
                ToolTip = 'Executes the Test Note action.';
                Image = TestFile;

                trigger OnAction()
                var
                    RecordLink: Record "Record Link";
                    InStr: InStream;
                    Note: Text;
                begin
                    RecordLink.Get(Rec."Link ID");
                    RecordLink.CalcFields(Note);
                    RecordLink.Note.CreateInStream(InStr, TextEncoding::Windows);
                    InStr.Read(Note);
                    Message('%1\%2', Rec."Record ID", Note);
                end;
            }
        }
    }
}
