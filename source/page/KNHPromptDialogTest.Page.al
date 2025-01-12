page 55000 "KNH Prompt Dialog Test"
{
    PageType = PromptDialog;
    ApplicationArea = All;
    Caption = 'Prompt Test';
    PromptMode = Prompt;
    Extensible = false;

    layout
    {
        area(Prompt)
        {
            field(Question; Question)
            {
                ApplicationArea = All;
                ShowCaption = false;
                MultiLine = true;
            }
        }
        area(PromptOptions)
        {
            
        }
        area(Content)
        {
            
        }
    }

    actions
    {
        area(SystemActions)
        {
            systemaction(Generate)
            {
                ToolTip = 'Answer Question';
                trigger OnAction()
                begin
                    Result := 'Good try but nothing found';
                end;
            }
        }
    }

    var
        Question: Text[250];
        Result: Text[250];

}