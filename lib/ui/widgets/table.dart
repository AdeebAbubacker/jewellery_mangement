import 'package:flutter/material.dart';

class MyDataTable extends StatelessWidget {
  final String Lot_Description;
  final String Group;
  final String Units;
  final String Pcs;
  final String Weight;
  final String Rate;
  final String Value;
  final String S_Rate;
  final String S_Value;
  const MyDataTable(
      {Key? key,
      required this.Lot_Description,
      required this.Group,
      required this.Units,
      required this.Pcs,
      required this.Weight,
      required this.Rate,
      required this.Value,
      required this.S_Rate,
      required this.S_Value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: ConstrainedBox(
            constraints: BoxConstraints(minWidth: constraints.maxWidth),
            child: DataTable(
              dataRowColor: MaterialStateProperty.all(
                const Color.fromRGBO(44, 44, 44, 1),
              ),
              dividerThickness: 0,
              headingRowColor: MaterialStateProperty.all(
                const Color.fromRGBO(73, 76, 83, 1.0),
              ),
              headingTextStyle: const TextStyle(color: Colors.white),
              dataTextStyle: const TextStyle(color: Colors.white),
              columns: <DataColumn>[
                DataColumn(
                  label: SizedBox(
                    width: constraints.maxWidth * 0.1,
                    child: const Text('LOT Description'),
                  ),
                ),
                DataColumn(
                  label: SizedBox(
                    width: constraints.maxWidth * 0.1,
                    child: const Text('Group'),
                  ),
                ),
                DataColumn(
                  label: SizedBox(
                    width: constraints.maxWidth * 0.1,
                    child: const Text('Units'),
                  ),
                ),
                DataColumn(
                  label: SizedBox(
                    width: constraints.maxWidth * 0.05,
                    child: const Text('Pcs'),
                  ),
                  numeric: true,
                ),
                DataColumn(
                  label: SizedBox(
                    width: constraints.maxWidth * 0.1,
                    child: const Text('Weight'),
                  ),
                  numeric: true,
                ),
                DataColumn(
                  label: SizedBox(
                    width: constraints.maxWidth * 0.1,
                    child: const Text('Rate'),
                  ),
                  numeric: true,
                ),
                DataColumn(
                  label: SizedBox(
                    width: constraints.maxWidth * 0.1,
                    child: const Text('Value'),
                  ),
                  numeric: true,
                ),
                DataColumn(
                  label: SizedBox(
                    width: constraints.maxWidth * 0.1,
                    child: const Text('S Rate'),
                  ),
                  numeric: true,
                ),
                DataColumn(
                  label: SizedBox(
                    width: constraints.maxWidth * 0.1,
                    child: const Text('S Value'),
                  ),
                  numeric: true,
                ),
              ],
              rows: <DataRow>[
                DataRow(
                  color: MaterialStateProperty.all(
                    const Color.fromARGB(255, 53, 53, 54),
                  ),
                  cells: [
                    DataCell(SizedBox(
                      width: constraints.maxWidth * 0.1,
                      child: Text(Lot_Description),
                    )),
                    DataCell(SizedBox(
                      width: constraints.maxWidth * 0.1,
                      child: Text(Group),
                    )),
                    DataCell(SizedBox(
                      width: constraints.maxWidth * 0.1,
                      child: Text(Units),
                    )),
                    DataCell(SizedBox(
                      width: constraints.maxWidth * 0.05,
                      child: Text(Pcs),
                    )),
                    DataCell(SizedBox(
                      width: constraints.maxWidth * 0.1,
                      child: Text(Weight),
                    )),
                    DataCell(SizedBox(
                      width: constraints.maxWidth * 0.1,
                      child: Text(Rate),
                    )),
                    DataCell(SizedBox(
                      width: constraints.maxWidth * 0.1,
                      child: Text(Value),
                    )),
                    DataCell(SizedBox(
                      width: constraints.maxWidth * 0.1,
                      child: Text(S_Rate),
                    )),
                    DataCell(SizedBox(
                      width: constraints.maxWidth * 0.1,
                      child: Text(S_Value),
                    )),
                  ],
                ),
                DataRow(
                  color: MaterialStateProperty.all(
                    const Color.fromARGB(255, 53, 53, 54),
                  ),
                  cells: [
                    DataCell(SizedBox(
                      width: constraints.maxWidth * 0.1,
                      child: Text(""),
                    )),
                    DataCell(SizedBox(
                      width: constraints.maxWidth * 0.1,
                      child: Text(""),
                    )),
                    DataCell(SizedBox(
                      width: constraints.maxWidth * 0.1,
                      child: Text(""),
                    )),
                    DataCell(SizedBox(
                      width: constraints.maxWidth * 0.1,
                      child: Text(""),
                    )),
                    DataCell(SizedBox(
                      width: constraints.maxWidth * 0.1,
                      child: Text(""),
                    )),
                    DataCell(SizedBox(
                      width: constraints.maxWidth * 0.1,
                      child: Text(""),
                    )),
                    DataCell(SizedBox(
                      width: constraints.maxWidth * 0.1,
                      child: Text(""),
                    )),
                    DataCell(SizedBox(
                      width: constraints.maxWidth * 0.1,
                      child: Text(""),
                    )),
                    DataCell(SizedBox(
                      width: constraints.maxWidth * 0.1,
                      child: Text(""),
                    )),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
