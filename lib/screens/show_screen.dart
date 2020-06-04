import 'package:flutter/material.dart';
import 'package:netflix_ui/data/data.dart';
import 'package:netflix_ui/widgets/show/button_row.dart';
import 'package:netflix_ui/widgets/show/dismiss_button.dart';
import 'package:netflix_ui/widgets/show/episode_list.dart';
import 'package:netflix_ui/widgets/show/image_blur.dart';
import 'package:netflix_ui/widgets/show/image_gradient.dart';
import 'package:netflix_ui/widgets/show/selection_tab_bar.dart';
import 'package:netflix_ui/widgets/show/show_image.dart';
import 'package:netflix_ui/widgets/show/show_info.dart';

class ShowScreen extends StatelessWidget {
  final Show show;
  ShowScreen({this.show});

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
            Stack(
              children: <Widget>[
                ShowImage(show: show),
                ImageBlur(),
                ImageGradient(),
                DismissButton(buildContext: context),
                Positioned.fill(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ShowInfo(show: show),
                      ButtonRow(),
                    ],
                  ),
                ),
              ],
            ),
            SelectionTabBar(),
            EpisodeList(show: show)
          ],
        ),
      ),
    );
  }
}
