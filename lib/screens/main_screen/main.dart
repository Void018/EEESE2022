import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          Container(
            child: Text("Welcome Mr.Ahmed"),
          ),
          SizedBox(
            height: 250,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SizedBox(
                  height: 180,
                  width: 150,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.local_hospital),
                        Text("DOCTORS"),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                  height: 200,
                ),
                SizedBox(
                  height: 180,
                  width: 150,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.local_pharmacy_outlined),
                          Text("PHARMACIES")
                        ],
                      )),
                )
              ],
            ),
          ),
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(currentIndex: 1, items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Main',
          backgroundColor: Colors.pink[300],
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat_outlined),
          label: 'Chats',
          backgroundColor: Colors.pink[300],
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
          backgroundColor: Colors.pink[300],
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.receipt_rounded),
          label: 'Report',
          backgroundColor: Colors.pink[300],
        ),
      ]),
    );
  }
}
