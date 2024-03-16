import 'package:flutter/material.dart';
import 'package:water_purifier/Ui/Dues.dart';
import 'package:water_purifier/Ui/customer.dart';
import 'package:water_purifier/Ui/services.dart';
import 'package:water_purifier/Ui/test.dart';
class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}
int _currentIndex=0;
final screens=[Homepage(),Customer(),Dues(),Test()];
class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Color(0xff1256BC),
        backgroundColor: Color(0xffF7F7F7),
        selectedFontSize: 12,
        unselectedFontSize: 12,
        iconSize: 28,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            label: "SERVICE",
            icon: ImageIcon(AssetImage("asset/Service.png")),
            activeIcon: ImageIcon(AssetImage("asset/Service1.png"))

          ),
          BottomNavigationBarItem(
              label: "CUSTOMER",
            icon: ImageIcon(AssetImage("asset/people.png")),
              activeIcon: ImageIcon(AssetImage("asset/Costumer.png"))
          ),
          BottomNavigationBarItem(
            label: "DUES",
            icon: ImageIcon(AssetImage("asset/Dues.png")),
              activeIcon: ImageIcon(AssetImage("asset/Dues1.png"))
          ),
          BottomNavigationBarItem(
            label: "TEST",
            icon: ImageIcon(AssetImage("asset/Test.png")),
              activeIcon: ImageIcon(AssetImage("asset/Test1.png"))
          ),
        ],
        onTap: (index){
          setState(() {
            _currentIndex =index;
          });
        },
      ), body: screens[_currentIndex],
    );
  }
}
