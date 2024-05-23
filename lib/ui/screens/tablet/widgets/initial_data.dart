

import 'package:flutter/material.dart';
import 'package:jewellery_app/ui/screens/tablet/widgets/content_pills.dart';
import 'package:jewellery_app/ui/widgets/table.dart';

class InitialDataTab extends StatelessWidget {
  const InitialDataTab({
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
                  ContentPillsTab("Barcode No."),
                  ContentPillsTab("Location"),
                  ContentPillsTab("Branch"),
                  ContentPillsTab("Status"),
                  ContentPillsTab("Counter"),
                  ContentPillsTab("Source"),
                  ContentPillsTab("Category"),
                  ContentPillsTab("Collection"),
                  ContentPillsTab("Description"),
                  ContentPillsTab("Metal Grp"),
                  ContentPillsTab("STK Section"),
                  ContentPillsTab("Mfgd By"),
                  ContentPillsTab("Notes"),
                  ContentPillsTab("In STK Since"),
                  ContentPillsTab("Cert No."),
                  ContentPillsTab("HUID No."),
                  ContentPillsTab("Order No."),
                  ContentPillsTab("Cus Name"),
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
            ContentPillsTab("Size"),
            ContentPillsTab("Quality"),
            ContentPillsTab("KT"),
            ContentPillsTab("Pcs"),
            ContentPillsTab("Gross Wt"),
            ContentPillsTab("Net Wt"),
            ContentPillsTab("Dia Pcs"),
            ContentPillsTab("Dia Wt"),
            ContentPillsTab("Cls Pcs"),
            ContentPillsTab("Cls Wt"),
            ContentPillsTab("Chain Wt"),
            ContentPillsTab("M Rate"),
            ContentPillsTab("M Value"),
            ContentPillsTab("L Rate"),
            ContentPillsTab("L Charges"),
            ContentPillsTab("R Charges"),
            ContentPillsTab("O Charges"),
            ContentPillsTab("MRP"),
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


