import 'package:flutter/material.dart';

class DismissButton extends StatelessWidget {
  final BuildContext buildContext;
  DismissButton({this.buildContext});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 50,
      right: 30,
      child: IconButton(
        iconSize: 30,
        onPressed: () => Navigator.pop(buildContext),
        icon: Icon(
          Icons.clear,
          color: Colors.grey[300],
        ),
      ),
    );
  }
}
