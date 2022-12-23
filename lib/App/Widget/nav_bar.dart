
import 'package:flutter/material.dart';
import '../utils/app_color.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int index = 0;

  final _navScreens = const [
    // HomePage(),
    // Savings(),
    // Cashback(),
    // More(),
  ];
  List get navScreens => _navScreens;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navScreens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: const NavigationBarThemeData(
          backgroundColor: ashColor,
          labelTextStyle: MaterialStatePropertyAll(
            TextStyle(
              fontSize: 8,
              fontWeight: FontWeight.w500,
            ),
          ),
          // labelBehavior: ,
        ),
        child: NavigationBar(
          height: 60,
          backgroundColor: white,
          selectedIndex: index,
          onDestinationSelected: (index) =>
              setState(() {
                this.index = index;
              }),
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home_filled),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Icons.savings),
              label: 'Savings',
            ),
            NavigationDestination(
              icon: Icon(Icons.card_giftcard_sharp),
              label: 'Cashback',
            ),
            NavigationDestination(
              icon: Icon(Icons.more_outlined),
              label: 'More',
            ),
          ],
        ),
      ),
    );
  }
}