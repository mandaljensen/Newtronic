pageextension 50000 "User Task Card Ext." extends "User Task Card"
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
