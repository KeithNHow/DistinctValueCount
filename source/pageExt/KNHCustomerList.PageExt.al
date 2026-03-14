pageextension 55000 KNHCustomerList extends "Customer List"
{
    actions
    {
        addlast(Processing)
        {
            action(GetIntegrationCodeCount)
            {
                Caption = 'Get Integration Code Count';
                Image = Task;
                ApplicationArea = All;
                ToolTip = 'Run the process to get distinct integration codes with count.';
                trigger OnAction()
                var
                    IntegrationCodeHandler: Codeunit "KNH Integration Code Handler";
                begin
                    IntegrationCodeHandler.GetDistinctCodesWithCount();
                end;
            }
        }
    }
}