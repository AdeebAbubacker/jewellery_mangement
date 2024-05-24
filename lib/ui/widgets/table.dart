import 'package:flutter/material.dart';

class MyDataTable extends StatelessWidget {
  final String lotDescription;
  final String group;
  final String units;
  final String pcs;
  final String weight;
  final String rate;
  final String value;
  final String sRate;
  final String sValue;

  const MyDataTable({
    Key? key,
    required this.lotDescription,
    required this.group,
    required this.units,
    required this.pcs,
    required this.weight,
    required this.rate,
    required this.value,
    required this.sRate,
    required this.sValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15), 

            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                _buildRow(
                  constraints.maxWidth,
                  true,
                  [
                    'LOT Description',
                    'Group',
                    'Units',
                    'Pcs',
                    'Weight',
                    'Rate',
                    'Value',
                    'S Rate',
                    'S Value',
                  ],
                ),
                _buildRow(
                    constraints.maxWidth,
                    false,
                    [
                      lotDescription,
                      group,
                      units,
                      pcs,
                      weight,
                      rate,
                      value,
                      sRate,
                      sValue,
                    ],
                    height: 230),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildRow(double maxWidth, bool isHeader, List<String> values,
      {double height = 90.0}) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        color: isHeader
            ? const Color.fromRGBO(73, 76, 83, 1.0)
            : const Color.fromRGBO(44, 44, 44, 1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: values
            .map((value) => _buildCell(value, maxWidth / 9, isHeader))
            .toList(),
      ),
    );
  }

  Widget _buildCell(String value, double width, bool isHeader) {
    return Container(
      width: width,
      padding: const EdgeInsets.all(8.0),
      child: Text(
        value,
        style: TextStyle(
            color: Colors.white,
            fontWeight: isHeader ? FontWeight.bold : FontWeight.normal),
        textAlign: TextAlign.center,
      ),
    );
  }
}
