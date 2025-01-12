codeunit 55000 "KNH Integration Code Handler"
{
    procedure GetDistinctCodesWithCount(): Dictionary of [Text[20], Integer]
    var
        DistinctIntegrationCodes: Query "KNH Distinct Integration Codes";
        IntegrationCodes: Dictionary of [Text[20], Integer];
        IntegrationCode: Text[20];
        Count: Integer;
    begin
        DistinctIntegrationCodes.Open();
        while DistinctIntegrationCodes.Read() do begin
            IntegrationCode := DistinctIntegrationCodes.IntegrationCode; //place code in var
            Count := DistinctIntegrationCodes.Count; //count codes
            IntegrationCodes.Add(IntegrationCode, Count); //add rec to dictionary
        end;
        DistinctIntegrationCodes.Close();

        exit(IntegrationCodes);
    end;
}