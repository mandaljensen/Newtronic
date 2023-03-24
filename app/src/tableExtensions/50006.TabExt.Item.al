// Version List=LC00.11;

tableextension 50006 Item extends Item
{
    procedure GetVendorItemNo(VendorNo: Text): Code[50]
    var
        ItemReference: Record "Item Reference";
    begin
        ItemReference.SetCurrentKey("Reference Type", "Reference Type No.");
        ItemReference.SetRange("Reference Type", ItemReference."Reference Type"::Vendor);
        ItemReference.SetRange("Reference Type No.", VendorNo);
        ItemReference.SetRange("Item No.", "No.");
        if ItemReference.FindFirst() then
            exit(ItemReference."Reference No.");
    end;
}