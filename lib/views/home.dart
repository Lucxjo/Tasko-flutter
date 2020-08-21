import 'package:flutter/material.dart';
import 'package:tasko/styles/colours.dart';
import 'package:tasko/styles/text_styles.dart';
import 'package:tasko/views/intray/intray_view.dart';

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
                  IntrayView(),
                  new Container(color: Colors.orange,),
                  new Container(
                    color: Colors.lightGreen,
                  ),
                ],
              ),
              Container(
                height: 150,
                padding: EdgeInsets.only(left: 50.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Intray',
                      style: TextStyles.intrayTitle,
                    ),
                    Container()
                  ],
                )
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 124,
                  left: (MediaQuery.of(context).size.width / 2) - 28,
                ),
                child: FloatingActionButton(
                  onPressed: () {},
                  child: Icon(Icons.add, size: 50,),
                ),
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
              labelColor: Colour.darkGrey,
              unselectedLabelColor: Colors.grey[700],
              indicatorSize: TabBarIndicatorSize.label,
              indicatorPadding: EdgeInsets.all(5.0),
              indicatorColor: Colors.transparent,
            ),
          ),
        ),
    );
  }
}