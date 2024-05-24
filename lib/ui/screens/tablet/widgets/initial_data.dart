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
        SizedBox(height: 30),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Flexible(
              child: Wrap(
                spacing: 12.0,
                runSpacing: 13.0,
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
            const SizedBox(width: 10),
            Container(
              width: 120,
              height: 145,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
                color: Colors.white,
                border: Border.all(
                  color: Colors.white,
                  width: 3,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: const Center(
                child: Text(
                  "Display Image Here",
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        const Wrap(
          spacing: 12.0,
          runSpacing: 13.0,
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
      ],
    );
  }
}
