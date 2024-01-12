permissionset 50000 NewtronicPermission
{
    Assignable = true;
    Permissions = tabledata "Expected Delivery"=RIMD,
        tabledata "NT Record Link"=RIMD,
        tabledata Segment=RIMD,
        tabledata "User Conversion"=RIMD,
        table "Expected Delivery"=X,
        table "NT Record Link"=X,
        table Segment=X,
        table "User Conversion"=X,
        report "Purchase Order (Newtronic)"=X,
        report "Sales Credit Memo (Newtronic)"=X,
        report "Sales Invoice (Newtronic)"=X,
        report "Sales Order (Newtronic)"=X,
        report "Sales Quote (Newtronic)"=X,
        report "Sales Shipment (Newtronic)"=X,
        codeunit EventManagement=X,
        codeunit PurchPostMgt=X,
        codeunit SalesPostMgt=X,
        page "Expected Delivery"=X,
        page "NT Record Links"=X,
        page SegmentList=X;
}