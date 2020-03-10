import 'package:flutter/material.dart';
import 'package:perleweb/centered_wiev.dart';
import 'package:perleweb/widget_app_bar.dart';
import 'package:perleweb/widget_drawer.dart';
import 'package:responsive_grid/responsive_grid.dart';

class ViewNarukvice extends StatefulWidget {
  @override
  _ViewNarukviceState createState() => _ViewNarukviceState();
}

class _ViewNarukviceState extends State<ViewNarukvice> {
  List<ClipRRect> items = [
    ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Stack(
        children: <Widget>[
          Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/img_01.jpg'),
                  fit: BoxFit.cover,
                ),
              )),
          Container(
            height: 30,
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.0, 1.0],
                    colors: [Colors.black54, Colors.transparent])),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text('Trostruka narukvica', style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 30,
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0.0, 1.0],
                      colors: [Colors.transparent, Colors.black54])),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('1', style: TextStyle(color: Colors.white)),
                  Text('200 RSD', style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
          )
        ],
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return CenteredView(
      child: Scaffold(
        appBar: widgetAppBar(width: width, context: context),
        endDrawer: width < 600 ? getDrawer() : null,
        body: Container(
            color: Colors.white,
            child: ResponsiveGridList(
                desiredItemWidth: 290,
                minSpacing: 5,
                squareCells: true,
                children: items.map((i) {
                  return Container(child: i);
                }).toList())),
      ),
    );
  }
}
