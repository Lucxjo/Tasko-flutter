import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: new Scaffold(
          body: Stack(
            children: <Widget> [
              TabBarView(
                children: [
                  new Container(
                    color: Colors.yellow,
                  ),
                  new Container(color: Colors.orange,),
                  new Container(
                    color: Colors.lightGreen,
                  ),
                ],
              ),
              Container(
                height: 100,
                color: Colors.white,
              )
            ]
          ),
          appBar: AppBar(
            elevation: 0,
            title: TabBar(
              tabs: [
                Tab(
                  icon: new Icon(Icons.home),
                ),
                Tab(
                  icon: new Icon(Icons.rss_feed),
                ),
                Tab(
                  icon: new Icon(Icons.perm_identity),
                ),
              ],
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey[800],
              indicatorSize: TabBarIndicatorSize.label,
              indicatorPadding: EdgeInsets.all(5.0),
              indicatorColor: Colors.black,
            ),
          ),
        ),
    );
  }
}