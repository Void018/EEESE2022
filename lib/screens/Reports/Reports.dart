import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Text("Updates"),
      Flexible(
          child: ListView(
        shrinkWrap: true,
        children: [
          SizedBox(),
          for (int i = 0; i < 7; i++)
            Container(
                child: Card(
                    child: ListTile(
              onTap: () {},
              leading: CircleAvatar(),
              title: Text('DR.Munther'),
              trailing: (Icon(Icons.report_gmailerrorred)),
              subtitle: Text('*Date* '),
            )))
        ],
      ))
    ]));
  }
}
