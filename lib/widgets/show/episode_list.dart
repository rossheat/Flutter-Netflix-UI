import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:netflix_ui/data/data.dart';

class EpisodeList extends StatelessWidget {
  final Show show;
  EpisodeList({this.show});

  Column makeEpisodes() {
    List<Widget> episodes = [];
    show.episodes.forEach(
      (episode) {
        episodes.add(
          Column(
            children: <Widget>[
              Container(
                height: 70,
                child: Center(
                  child: ListTile(
                    leading: Container(
                      height: 75,
                      width: 100,
                      child: Image.asset(episode.thumbnail, fit: BoxFit.cover),
                    ),
                    title: Text(
                      episode.name,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          height: 1),
                    ),
                    subtitle: Text(
                      episode.length,
                      style: TextStyle(
                        fontSize: 11,
                        color: Colors.grey,
                        height: 1,
                      ),
                    ),
                    trailing: Icon(
                      FontAwesomeIcons.arrowDown,
                      color: Colors.grey,
                      size: 15,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  width: double.infinity,
                  height: 40,
                  child: Text(
                    episode.description,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                    style: TextStyle(
                      color: Colors.grey,
                      height: 1.2,
                      fontSize: 12,
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
    return Column(children: episodes);
  }

  @override
  Widget build(BuildContext context) {
    return makeEpisodes();
  }
}
