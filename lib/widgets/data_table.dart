import 'package:flutter/material.dart';

class ProfileDataTable extends StatelessWidget {
  const ProfileDataTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scrollbar(
        showTrackOnHover: true,
        isAlwaysShown: true,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: DataTable(columns: const [
            DataColumn(label: Text('Name')),
            DataColumn(label: Text('Age')),
            DataColumn(label: Text('Role')),
            DataColumn(label: Text('Favorite Food')),
            DataColumn(label: Text('Game')),
          ], rows: const [
            DataRow(selected: true, cells: [
              DataCell(Text('Doraemon')),
              DataCell(Text('5')),
              DataCell(Text('Robot')),
              DataCell(Text('Dora Cake')),
              DataCell(Text('Baseball')),
            ]),
            DataRow(cells: [
              DataCell(Text('Nobita')),
              DataCell(Text('10')),
              DataCell(Text('Child')),
              DataCell(Text('Pizza')),
              DataCell(Text('Castcadel')),
            ])
          ]),
        ),
      ),
    );
  }
}
