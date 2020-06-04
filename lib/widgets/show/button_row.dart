import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Button {
  final String title;
  final Icon icon;

  Button({this.title, this.icon});
}

class ButtonRow extends StatelessWidget {
  List<Button> btns = [
    Button(
      title: 'My List',
      icon: Icon(
        FontAwesomeIcons.check,
      ),
    ),
    Button(
      title: 'Rate',
      icon: Icon(
        FontAwesomeIcons.thumbsUp,
      ),
    ),
    Button(
      title: 'Share',
      icon: Icon(
        FontAwesomeIcons.paperPlane,
      ),
    ),
  ];

  Row buildButtons() {
    List<Widget> buttons = [];
    btns.forEach(
      (btn) {
        buttons.add(
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              IconButton(
                onPressed: () => print('${btn.title} pressed'),
                icon: btn.icon,
                color: Colors.white,
                iconSize: 20,
              ),
              Text(
                btn.title,
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
        );
      },
    );
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: buttons,
    );
  }

  @override
  Widget build(BuildContext context) {
    return buildButtons();
  }
}
