import 'package:flutter/material.dart';

class MyTable extends StatelessWidget {
  const MyTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DataTable(
        columns: const [
          DataColumn(
            label: Text("id"),
          ),
          DataColumn(
            label: Text("name"),
          ),
          DataColumn(
            label: Text("age"),
          ),
        ],
        rows: const [
          DataRow(cells: [
            DataCell(
              Text("1"),
            ),
            DataCell(
              Text("Anu"),
            ),
            DataCell(
              Text('20'),
            ),
          ]),
          DataRow(cells: [
            DataCell(
              Text("1"),
            ),
            DataCell(
              Text("Anu"),
            ),
            DataCell(
              Text('20'),
            ),
          ]),
          DataRow(cells: [
            DataCell(
              Text("1"),
            ),
            DataCell(
              Text("Anu"),
            ),
            DataCell(
              Text('20'),
            ),
          ]),
          DataRow(cells: [
            DataCell(
              Text("1"),
            ),
            DataCell(
              Text("Anu"),
            ),
            DataCell(
              Text('20'),
            ),
          ]),
        ],
      ),
    );
  }
}
