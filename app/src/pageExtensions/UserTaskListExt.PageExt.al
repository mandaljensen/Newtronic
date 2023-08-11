pageextension 50001 "User Task List Ext." extends "User Task List"
{
    layout
    {
        addlast(FactBoxes)
        {
            systempart(Links; Links)
            {
                ApplicationArea = RecordLinks;
            }
            systempart(Notes; Notes)
            {
                ApplicationArea = Notes;
            }
        }
    }
}
