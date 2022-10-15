import 'package:eeese2022/screens/pharmacies_screen/pharmacies_screen.dart';
import 'package:eeese2022/screens/profile_screen/profile_screen.dart';
import 'package:eeese2022/screens/reports_screen/reports_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFB0E7FF),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFFB0E7FF),
                    Color(0xFFE2CEBE),
                  ],
                ),
              ),
            ),
            [
              _mainScreenWidget(),
              PharmacisScreen(),
              ReportsScreen(),
              ProfileScreen(),
            ][currentIndex],
          ],
        ),
      ),
      bottomNavigationBar: _myBottomBar(),
    );
  }

  Widget _mainScreenWidget() {
    return Column(
      children: [
        Spacer(),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color(0x00000000),
                  Color(0x30FFFFFF),
                ]),
          ),
          width: 3000,
          height: 100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Welcome Munther",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
              Text(
                "    Hope you are feeling good today",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 150,
                height: 150,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.local_pharmacy_outlined,
                        size: 75,
                      ),
                      Text("PHARMACIES")
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 150,
                height: 150,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.local_hospital,
                        size: 75,
                      ),
                      Text("DOCTORS"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Spacer(flex: 2),
      ],
    );
  }

  Widget _myBottomBar() {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (value) => setState(() => currentIndex = value),
      backgroundColor: Color(0xFFE2CEBE),
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Main',
          backgroundColor: Color(0xFFE2CEBE),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat_outlined),
          label: 'Chats',
          backgroundColor: Color(0xFFE2CEBE),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.receipt_rounded),
          label: 'Report',
          backgroundColor: Color(0xFFE2CEBE),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
          backgroundColor: Color(0xFFE2CEBE),
        ),
      ],
    );
  }
}
