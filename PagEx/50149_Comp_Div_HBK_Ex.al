pageextension 50149 Comp_Div_HBK_ERPG extends "Company Information"
{
    layout
    {
        // Add changes to page layout here//
    }

    actions
    {
        /*
        // Add changes to page actions here
        addafter(Codes)
        //addlast(Navigation)
        {
            action("Konvertering")
            {
                CaptionML = ENU = 'C5 Data2 Migration',
                                DAN = 'Konvertering af data fra C5';
                Promoted = true;
                PromotedIsBig = true;
                Image = UnitConversions;
                RunObject = report "Multi C5 Import";
                ApplicationArea = All;
            }
        }
        */

        addlast(Navigation)
        {


            action("ERP-TEST")
            {
                Caption = 'ITB';
                ApplicationArea = All;  //

                trigger OnAction()
                begin
                    svar := Dialog.StrMenu('FyldBogOps,Kontibog,FinansGrp');

                    case svar of
                        1:
                            begin
                                Message('dette er ok 12345-271120');
                                Codeunit.Run(50150);
                                //Xmlport.Run(50149);
                            end;

                        2:
                            begin
                                Message('ok - konti');
                                Xmlport.Run(50150);
                                //Xmlport.Run(50149);
                            end;

                        3:
                            begin
                                Message('ok - Boggrp');
                                Xmlport.Run(50151);
                                //Xmlport.Run(50149);
                            end;
                    end;
                end;
            }

            action("Konvertering")
            {
                CaptionML = ENU = 'C5 Data2 Migration',
                                DAN = 'Konvertering af data fra C5_KONV_NYT';
                //Promoted = true;
                //PromotedIsBig = true;
                Image = UnitConversions;
                RunObject = report "Multi C5 Import";
                ApplicationArea = All;
            }

        }
    }

    var
        svar: Option;

}