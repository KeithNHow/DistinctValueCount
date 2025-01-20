//this codeunit is used to get the distinct integration codes with their count 
//from the KNH Distinct Integration Codes query.
namespace KNHIntegrationCount;

codeunit 55000 "KNH Integration Code Handler"
{
    procedure GetDistinctCodesWithCount(): Dictionary of [Text[20], Integer]
    var
        DistinctIntegrationCodes: Query "KNH Distinct Integration Codes";
        IntegrationCodes: Dictionary of [Text[20], Integer];
        IntegrationCode: Text[20];
        Count: Integer;
    begin
        DistinctIntegrationCodes.Open(); //open query
        while DistinctIntegrationCodes.Read() do begin //read query
            IntegrationCode := DistinctIntegrationCodes.IntegrationCode; //place code in var
            Count := DistinctIntegrationCodes.Count; //place record number in var
            IntegrationCodes.Add(IntegrationCode, Count); //add code & rec number to dictionary
        end;
        DistinctIntegrationCodes.Close(); //close query

        exit(IntegrationCodes);
    end;
}