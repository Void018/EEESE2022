import 'package:flutter/material.dart';

class DoctorsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Choose your doctor"),
          Flexible(
            child: ListView(
              shrinkWrap: true,
              children: [
                SizedBox(
                  height: 200,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      FilterChip(
                        label: Text("Orthopedist"),
                        onSelected: (b) {},
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      FilterChip(
                        label: Text("Ophthalmologist"),
                        onSelected: (b) {},
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      FilterChip(
                        label: Text("Pediatritian"),
                        onSelected: (b) {},
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      FilterChip(
                        label: Text("Radiologist"),
                        onSelected: (b) {},
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      FilterChip(
                        label: Text("surgeon"),
                        onSelected: (b) {},
                      ),
                      SizedBox(
                        width: 1,
                      ),
                    ],
                  ),
                ),
                for (int i = 0; i < 7; i++)
                  Container(
                    child: Card(
                      child: ListTile(
                        leading: CircleAvatar(),
                        title: Text('DR.Munther'),
                        trailing: (Icon(Icons.message)),
                        subtitle: Text('*Specialty*'),
                      ),
                    ),
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
