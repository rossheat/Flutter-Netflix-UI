import 'package:flutter/material.dart';

class OtherScreen extends StatelessWidget {
  final String otherScreen;
  OtherScreen({this.otherScreen});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          otherScreen,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
