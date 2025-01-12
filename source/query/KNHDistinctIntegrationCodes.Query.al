query 55000 "KNH Distinct Integration Codes"
{
    UsageCategory = Tasks;
    Caption = 'Distinct Integration Codes with Count';
    QueryType = Normal;

    elements
    {
        dataitem(SalesInvoiceLine; "Sales Invoice Line")
        {
            column(IntegrationCode; "Integration Code")
            {
                Caption = 'Integration Code';
            }
            column(Count)
            {
                Method = Count;
                Caption = 'Count';
            }
        }
    }
}