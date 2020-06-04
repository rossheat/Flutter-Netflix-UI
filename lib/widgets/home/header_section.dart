import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 480,
          child: Image.asset(
            'assets/images/joker.png',
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 600,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.transparent, Colors.black],
              ),
            ),
          ),
        ),
        Positioned(
          top: 50,
          left: 15,
          right: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: 35,
                child: Image.asset('assets/images/n.png'),
              ),
              Text(
                'Series',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Films',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'My List',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Column(
            children: <Widget>[
              Container(
                width: 180,
                child: Image.asset('assets/images/jokerlogo.png'),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Icon(Icons.add, color: Colors.white, size: 30),
                      Text(
                        'My List',
                        style: TextStyle(color: Colors.white, fontSize: 11),
                      ),
                    ],
                  ),
                  FlatButton(
                    padding: EdgeInsets.fromLTRB(15, 4, 30, 4),
                    onPressed: () => print('Play pressed'),
                    color: Colors.white,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.play_arrow, color: Colors.black),
                        SizedBox(width: 5),
                        Text(
                          'PLAY',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w800),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      Icon(
                        Icons.info_outline,
                        color: Colors.white,
                      ),
                      Text(
                        'Info',
                        style: TextStyle(color: Colors.white, fontSize: 11),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
