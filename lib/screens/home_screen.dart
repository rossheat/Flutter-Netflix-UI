import 'package:flutter/material.dart';
import 'package:netflix_ui/data/data.dart';
import 'package:netflix_ui/widgets/home/header_section.dart';
import 'package:netflix_ui/widgets/home/preview_scroll.dart';
import 'package:netflix_ui/widgets/home/show_scroll.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: <Widget>[
            HeaderSection(),
            PreviewScroll(),
            ShowScroll(shows: trending, scrollLabel: 'Trending Now'),
            ShowScroll(shows: bingeWorthy, scrollLabel: 'Binge-worth TV Dramas')
          ],
        ),
      ),
    );
  }
}
