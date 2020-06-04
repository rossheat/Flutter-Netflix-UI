import 'package:flutter/material.dart';
import 'package:netflix_ui/data/data.dart';

class ShowInfo extends StatelessWidget {
  final Show show;
  ShowInfo({this.show});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(height: 50),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(1),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                offset: Offset(0, 5),
                blurRadius: 20,
              ),
            ],
          ),
          width: 150,
          height: 250,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(1),
            child: Image.asset(
              show.image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                '${show.match}% match',
                style: TextStyle(
                  color: Colors.greenAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                show.year,
                style: TextStyle(
                  color: Colors.grey[600],
                ),
              ),
              Container(
                width: 20,
                height: 20,
                child: Image.asset(
                  show.ageCertImage,
                ),
              ),
              Text(
                '${show.numSeasons} Seasons',
                style: TextStyle(
                  color: Colors.grey[600],
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 4,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(3),
                  ),
                  border: Border.all(color: Colors.grey[600]),
                ),
                child: Center(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.movie,
                        color: Colors.grey[200],
                        size: 12,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        'VISION',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[200],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 4,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(3),
                  ),
                  border: Border.all(
                    color: Colors.grey[600],
                  ),
                ),
                child: Center(
                  child: Text(
                    'HD',
                    style: TextStyle(
                        fontSize: 10,
                        color: Colors.grey[200],
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Watch Season 1 Now',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w800,
                fontSize: 16,
              ),
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(2),
              ),
              color: Theme.of(context).primaryColor,
            ),
            height: 35,
            width: double.infinity,
            child: FlatButton(
              onPressed: () => print('Play now button pressed'),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.play_arrow, color: Colors.white),
                  SizedBox(width: 5),
                  Text(
                    'Play',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'S1:E1 ${show.episodes[0].name}',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                show.episodes[0].description,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  height: 1.3,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Case: ${show.cast}',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  height: 1.3,
                ),
              ),
              Text(
                'Creator: ${show.creator}',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  height: 1.3,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
