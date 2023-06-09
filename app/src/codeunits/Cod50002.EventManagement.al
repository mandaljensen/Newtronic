// Version List=LC00.07;

codeunit 50002 "EventManagement"
{
    // Fix - skal muligvis slettes ved opgradering
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"VAT Lookup Ext. Data Hndl", 'OnSendRequestToVatRegistrationServiceOnBeforeSendRequestToWebService', '', false, false)]
    local procedure OnSendRequestToVatRegistrationServiceOnBeforeSendRequestToWebService(var SOAPWebServiceRequestMgt: Codeunit "SOAP Web Service Request Mgt."; var TempBlobBody: Codeunit "Temp Blob")
    begin
        SOAPWebServiceRequestMgt.SetContentType('text/xml; charset=utf-8');
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::ArchiveManagement, 'OnBeforeRestoreSalesDocument', '', true, false)]
    local procedure CreateSalesQuoteBeforeRestore(var SalesHeaderArchive: Record "Sales Header Archive"; var IsHandled: Boolean)
    var
        SalesHeader: Record "Sales Header";
    begin
        if SalesHeaderArchive."Document Type" <> SalesHeaderArchive."Document Type"::Quote then
            exit;

        if not SalesHeader.Get(SalesHeaderArchive."Document Type", SalesHeaderArchive."No.") then begin
            SalesHeader.Init();
            SalesHeader.Validate("Document Type", SalesHeaderArchive."Document Type");
            SalesHeader."No." := SalesHeaderArchive."No.";
            SalesHeader.Insert(true);
            SalesHeader."Doc. No. Occurrence" := SalesHeaderArchive."Doc. No. Occurrence";
            SalesHeader.Modify(true);
        end;
    end;
}