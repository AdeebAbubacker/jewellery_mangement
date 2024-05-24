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
        SizedBox(
          height: 30,
        ),
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
            const SizedBox(width: 10),
            Container(
              width: 110,
              height: 140,
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
