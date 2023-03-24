// Version List=LC00.08;

tableextension 50004 ExtendedTextHeader extends "Extended Text Header"
{
    procedure SetUnsetSalesReports(Set: Boolean)
    begin
        Rec."Sales Blanket Order" := Set;
        Rec."Sales Credit Memo" := Set;
        Rec."Sales Invoice" := Set;
        Rec."Sales Order" := Set;
        Rec."Sales Quote" := Set;
        Rec."Sales Return Order" := Set;
        Rec."Prepmt. Sales Credit Memo" := Set;
        Rec."Prepmt. Sales Invoice" := Set;
        Rec.Reminder := Set;
        Rec."Finance Charge Memo" := Set;
        Rec.Modify(true);
    end;

    procedure SetUnsetPurchReports(Set: Boolean)
    begin
        Rec."Prepmt. Purchase Credit Memo" := Set;
        Rec."Prepmt. Purchase Invoice" := Set;
        Rec."Purchase Blanket Order" := Set;
        Rec."Purchase Credit Memo" := Set;
        Rec."Purchase Invoice" := Set;
        Rec."Purchase Order" := Set;
        Rec."Purchase Quote" := Set;
        Rec."Purchase Return Order" := Set;
        Rec.Modify(true);
    end;
}