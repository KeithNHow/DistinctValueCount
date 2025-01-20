//Run sales invoice line query to get the distinct integration codes with count 
namespace KNHIntegrationCount;
using Microsoft.Sales.History;

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