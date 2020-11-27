import 'package:alboukam_deliver/services/screen_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class AppScreen extends StatefulWidget {
  @override
  _AppScreenState createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {

  int currentScreenIndex = 0;

  void onTapped(index) {
    setState(() {
      currentScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentScreenIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentScreenIndex,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        onTap: onTapped,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.whatshot_sharp), label: "Discover"),
          BottomNavigationBarItem(icon: Icon(MaterialCommunityIcons.pulse), label: "Orders"),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined), label: "Account"),
        ],
      ),
    );
  }
}
