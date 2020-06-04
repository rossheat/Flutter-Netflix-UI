import 'package:flutter/material.dart';
import 'package:netflix_ui/data/data.dart';
import 'package:netflix_ui/screens/show_screen.dart';
import 'package:page_transition/page_transition.dart';

class ShowScroll extends StatelessWidget {
  final List<Show> shows;
  final String scrollLabel;
  ShowScroll({this.scrollLabel, this.shows});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  scrollLabel,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 160,
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 15),
              scrollDirection: Axis.horizontal,
              itemCount: shows.length,
              itemBuilder: (BuildContext context, int index) {
                Show show = shows[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.downToUp,
                        child: ShowScreen(show: show),
                      ),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    width: 120,
                    child: Container(
                      width: double.infinity,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(1),
                        child: Image(
                          image: AssetImage(show.image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
