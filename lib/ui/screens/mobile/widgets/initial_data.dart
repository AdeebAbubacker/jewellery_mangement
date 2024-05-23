


import 'package:flutter/material.dart';
import 'package:jewellery_app/ui/screens/mobile/widgets/content_pills.dart';
import 'package:jewellery_app/ui/widgets/table.dart';

class InitialDataMob extends StatelessWidget {
  const InitialDataMob({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Flexible(
              child: Wrap(
                spacing:
                    12.0, // Horizontal spacing between items
                runSpacing:
                    13.0, // Vertical spacing between lines
                runAlignment: WrapAlignment.start,
                direction: Axis.horizontal,
                alignment: WrapAlignment.start,
                children: [
                  ContentPillsMob("Barcode No."),
                  ContentPillsMob("Location"),
                  ContentPillsMob("Branch"),
                  ContentPillsMob("Status"),
                  ContentPillsMob("Counter"),
                  ContentPillsMob("Source"),
                  ContentPillsMob("Category"),
                  ContentPillsMob("Collection"),
                  ContentPillsMob("Description"),
                  ContentPillsMob("Metal Grp"),
                  ContentPillsMob("STK Section"),
                  ContentPillsMob("Mfgd By"),
                  ContentPillsMob("Notes"),
                  ContentPillsMob("In STK Since"),
                  ContentPillsMob("Cert No."),
                  ContentPillsMob("HUID No"),
                  ContentPillsMob("Order No."),
                  ContentPillsMob("Cus Name"),
                ],
              ),
            ),
            SizedBox(width: 10),
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
                color: Colors.white,
                border: Border.all(
                  color: Colors.white, // Set the border color
                  width: 3, // Set the border width
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey
                        .withOpacity(0.5), // Shadow color
                    spreadRadius: 2, // Spread radius
                    blurRadius: 7, // Blur radius
                    offset:
                        Offset(0, 3), // Offset of the shadow
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  "Display Image Here",
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20), // Add spacing between rows
        Wrap(
          spacing: 12.0, // Horizontal spacing between items
          runSpacing: 13.0, // Vertical spacing between lines
          runAlignment: WrapAlignment.start,
          direction: Axis.horizontal,
          alignment: WrapAlignment.start,
          children: [
            ContentPillsMob("Size"),
            ContentPillsMob("Quality"),
            ContentPillsMob("KT"),
            ContentPillsMob("Pcs"),
            ContentPillsMob("Gross Wt"),
            ContentPillsMob("Net Wt"),
            ContentPillsMob("Dia Pcs"),
            ContentPillsMob("Dia Wt"),
            ContentPillsMob("Cls Pcs"),
            ContentPillsMob("Cls Wt"),
            ContentPillsMob("Chain Wt"),
            ContentPillsMob("M Rate"),
            ContentPillsMob("M Value"),
            ContentPillsMob("L Rate"),
            ContentPillsMob("L Charges"),
            ContentPillsMob("R Charges"),
            ContentPillsMob("O Charges"),
            ContentPillsMob("MRP"),
          ],
        ),
        const SizedBox(
            height: 20), // Add spacing before the table
        MyDataTable(
          Lot_Description: "",
          Group: "",
          Units: "",
          Pcs: "",
          Weight: "",
          Rate: "",
          Value: "",
          S_Rate: "",
          S_Value: "",
        )
      ],
    );
  }
}
