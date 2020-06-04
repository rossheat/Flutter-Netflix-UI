import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:netflix_ui/screens/home_screen.dart';
import 'package:netflix_ui/screens/other_screen.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedScreen = 0;

  final screenOptions = [
    HomeScreen(),
    OtherScreen(otherScreen: 'Search'),
    OtherScreen(otherScreen: 'Coming Soon'),
    OtherScreen(otherScreen: 'Downloads'),
    OtherScreen(otherScreen: 'More'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenOptions[selectedScreen],
      bottomNavigationBar: SizedBox(
        height: 100,
        child: BottomNavigationBar(
          backgroundColor: Colors.black,
          iconSize: 20,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          unselectedFontSize: 10,
          selectedFontSize: 10,
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedScreen,
          onTap: (int index) {
            setState(() {
              selectedScreen = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.home),
              title: Padding(
                padding: EdgeInsets.all(6),
                child: Text(
                  'Home',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.search),
              title: Padding(
                padding: EdgeInsets.all(6),
                child: Text(
                  'Search',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.playCircle),
              title: Padding(
                padding: EdgeInsets.all(6),
                child: Text(
                  'Coming Soon',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.arrowDown),
              title: Padding(
                padding: EdgeInsets.all(6),
                child: Text(
                  'Downloads',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.list),
              title: Padding(
                padding: EdgeInsets.all(6),
                child: Text(
                  'More',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
