import 'package:flutter/material.dart';

class PharmacisScreen extends StatelessWidget {
  const PharmacisScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: ListTile(
          onTap: () {},
          leading: CircleAvatar(),
          title: Text('DR.Munther'),
          trailing: (Icon(Icons.report_gmailerrorred)),
          subtitle: Text('*Date* '),
        ),
      ),
    );
  }
}
