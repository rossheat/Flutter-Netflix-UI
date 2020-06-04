import 'package:flutter/material.dart';

class SelectionTabBar extends StatefulWidget {
  @override
  _SelectionTabBarState createState() => _SelectionTabBarState();
}

class _SelectionTabBarState extends State<SelectionTabBar>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(initialIndex: 0, length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TabBar(
            controller: tabController,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Theme.of(context).primaryColor,
            indicatorSize: TabBarIndicatorSize.tab,
            isScrollable: true,
            indicator: UnderlineTabIndicator(
              borderSide:
                  BorderSide(color: Theme.of(context).primaryColor, width: 3),
              insets: EdgeInsets.only(bottom: 40),
            ),
            tabs: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width / 4,
                child: Tab(
                  child: Text(
                    'EPISODES',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 4,
                child: Tab(
                  child: Text(
                    'TRAILERS',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 4,
                child: Tab(
                  child: Text(
                    'MORE LIKE THIS',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
