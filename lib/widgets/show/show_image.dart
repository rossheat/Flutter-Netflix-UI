import 'package:flutter/material.dart';
import 'package:netflix_ui/data/data.dart';

class ShowImage extends StatelessWidget {
  final Show show;
  ShowImage({this.show});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 640,
      child: Image.asset(show.image, fit: BoxFit.cover),
    );
  }
}
