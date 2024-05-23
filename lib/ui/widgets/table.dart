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
                Color.fromRGBO(44, 44, 44, 1),
              ),
              dividerThickness: 0,
              headingRowColor: MaterialStateProperty.all(
                Color.fromRGBO(73, 76, 83, 1.0),
              ),
              headingTextStyle: TextStyle(color: Colors.white),
              columns: <DataColumn>[
                DataColumn(
                  label: SizedBox(
                    width: constraints.maxWidth *
                        0.1, // Adjust the width as needed
                    child: Text('LOT Description'),
                  ),
                ),
                DataColumn(
                  label: SizedBox(
                    width: constraints.maxWidth *
                        0.1, // Adjust the width as needed
                    child: Text('Group'),
                  ),
                ),
                DataColumn(
                  label: SizedBox(
                    width: constraints.maxWidth *
                        0.1, // Adjust the width as needed
                    child: Text('Units'),
                  ),
                ),
                DataColumn(
                  label: SizedBox(
                    width: constraints.maxWidth *
                        0.05, // Adjust the width as needed
                    child: Text('Pcs'),
                  ),
                  numeric: true,
                ),
                DataColumn(
                  label: SizedBox(
                    width: constraints.maxWidth *
                        0.1, // Adjust the width as needed
                    child: Text('Weight'),
                  ),
                  numeric: true,
                ),
                DataColumn(
                  label: SizedBox(
                    width: constraints.maxWidth *
                        0.1, // Adjust the width as needed
                    child: Text('Rate'),
                  ),
                  numeric: true,
                ),
                DataColumn(
                  label: SizedBox(
                    width: constraints.maxWidth *
                        0.1, // Adjust the width as needed
                    child: Text('Value'),
                  ),
                  numeric: true,
                ),
                DataColumn(
                  label: SizedBox(
                    width: constraints.maxWidth *
                        0.1, // Adjust the width as needed
                    child: Text('S Rate'),
                  ),
                  numeric: true,
                ),
                DataColumn(
                  label: SizedBox(
                    width: constraints.maxWidth *
                        0.1, // Adjust the width as needed
                    child: Text('S Value'),
                  ),
                  numeric: true,
                ),
              ],
              rows: <DataRow>[
                DataRow(
                  color: MaterialStateProperty.all(
                    Color.fromARGB(255, 53, 53, 54),
                  ),
                  cells: [
                    DataCell(SizedBox(
                      width: constraints.maxWidth *
                          0.1, // Adjust the width as needed
                      child: Text('CBR'),
                    )),
                    DataCell(SizedBox(
                      width: constraints.maxWidth *
                          0.1, // Adjust the width as needed
                      child: Text('GOLD'),
                    )),
                    DataCell(SizedBox(
                      width: constraints.maxWidth *
                          0.1, // Adjust the width as needed
                      child: Text('CARATS'),
                    )),
                    DataCell(SizedBox(
                      width: constraints.maxWidth *
                          0.05, // Adjust the width as needed
                      child: Text('1'),
                    )),
                    DataCell(SizedBox(
                      width: constraints.maxWidth *
                          0.1, // Adjust the width as needed
                      child: Text('0.05'),
                    )),
                    DataCell(SizedBox(
                      width: constraints.maxWidth *
                          0.1, // Adjust the width as needed
                      child: Text('0.0'),
                    )),
                    DataCell(SizedBox(
                      width: constraints.maxWidth *
                          0.1, // Adjust the width as needed
                      child: Text('0.0'),
                    )),
                    DataCell(SizedBox(
                      width: constraints.maxWidth *
                          0.1, // Adjust the width as needed
                      child: Text('0.0'),
                    )),
                    DataCell(SizedBox(
                      width: constraints.maxWidth *
                          0.1, // Adjust the width as needed
                      child: Text('0.0'),
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
