import 'package:flutter/material.dart';
import 'package:netflix_ui/widgets/bottom_nav_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Netflix UI',
      theme: ThemeData(
        fontFamily: 'MartelSans',
        primaryColor: Color(0xFFE50914),
      ),
      home: BottomNavBar(),
    );
  }
}
