import 'package:flutter/material.dart';
import 'package:jewellery_app/ui/screens/web/widgets/content_pills.dart';
import 'package:jewellery_app/ui/widgets/table.dart';

class InitialDataWeb extends StatelessWidget {
  const InitialDataWeb({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Flexible(
              child: Wrap(
                spacing: 12.0, // Horizontal spacing between items
                runSpacing: 13.0, // Vertical spacing between lines
                runAlignment: WrapAlignment.start,
                direction: Axis.horizontal,
                alignment: WrapAlignment.start,
                children: [
                  ContentPillsWeb("Barcode No. "),
                  ContentPillsWeb("Location"),
                  ContentPillsWeb("Branch"),
                  ContentPillsWeb("Status"),
                  ContentPillsWeb("Counter"),
                  ContentPillsWeb("Source"),
                  ContentPillsWeb("Category"),
                  ContentPillsWeb("Collection"),
                  ContentPillsWeb("Description"),
                  ContentPillsWeb("Metal Grp"),
                  ContentPillsWeb("STK Section"),
                  ContentPillsWeb("Mfgd By"),
                  ContentPillsWeb("Notes"),
                  ContentPillsWeb("In STK Since"),
                  ContentPillsWeb("Cert No."),
                  ContentPillsWeb("HUID No."),
                  ContentPillsWeb("Order No."),
                  ContentPillsWeb("Cus Name"),
                ],
              ),
            ),
            const SizedBox(width: 10),
            Container(
              width: 120,
              height: 145,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
                color: Colors.white,
                border: Border.all(
                  color: Colors.white, // Set the border color
                  width: 3, // Set the border width
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), // Shadow color
                    spreadRadius: 2, // Spread radius
                    blurRadius: 7, // Blur radius
                    offset: Offset(0, 3), // Offset of the shadow
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  "Display Image Here",
                  textAlign: TextAlign.center,
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
            ContentPillsWeb("Size"),
            ContentPillsWeb("Quality"),
            ContentPillsWeb("KT"),
            ContentPillsWeb("Pc"),
            ContentPillsWeb("Gross Wt"),
            ContentPillsWeb("Net Wt"),
            ContentPillsWeb("Dia Pcs"),
            ContentPillsWeb("Dia Wt"),
            ContentPillsWeb("Cls Pcs"),
            ContentPillsWeb("Cls Wt"),
            ContentPillsWeb("Chain Wt"),
            ContentPillsWeb("M Rate"),
            ContentPillsWeb("M Value"),
            ContentPillsWeb("L Rate"),
            ContentPillsWeb("L Charges"),
            ContentPillsWeb("R Charges"),
            ContentPillsWeb("O Charges"),
            ContentPillsWeb("MRP"),
          ],
        ),

        const SizedBox(height: 20),
        MyDataTable(
            lotDescription: "",
            group: "",
            units: "",
            pcs: "",
            weight: "",
            rate: "",
            value: "",
            sRate: "",
            sValue: ""),
        const SizedBox(height: 90)
      ],
    );
  }
}
