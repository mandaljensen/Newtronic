// Version List=LC00.07;

codeunit 50002 EventManagement
{
    // Fix - skal muligvis slettes ved opgradering
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"VAT Lookup Ext. Data Hndl", 'OnSendRequestToVatRegistrationServiceOnBeforeSendRequestToWebService', '', false, false)]
    local procedure OnSendRequestToVatRegistrationServiceOnBeforeSendRequestToWebService(var SOAPWebServiceRequestMgt: Codeunit "SOAP Web Service Request Mgt."; var TempBlobBody: Codeunit "Temp Blob")
    begin
        SOAPWebServiceRequestMgt.SetContentType('text/xml; charset=utf-8');
    end;
}