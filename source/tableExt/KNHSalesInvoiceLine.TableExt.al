//Add new field to Sales Invoice Line table
namespace KNHIntegrationCount;
using Microsoft.Sales.History;

tableextension 55000 "KNH Sales Invoice Line" extends "Sales Invoice Line"
{
    fields
    {
        field(55000; "Integration Code"; Text[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Integration Code';
            ToolTip = 'Integration Code';
        }
    }
}
