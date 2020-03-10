import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perleweb/centered_wiev.dart';
import 'package:perleweb/view_narukvice.dart';
import 'package:perleweb/widget_app_bar.dart';
import 'package:responsive_grid/responsive_grid.dart';

class ViewHome extends StatefulWidget {
  @override
  _ViewHomeState createState() => _ViewHomeState();
}

class _ViewHomeState extends State<ViewHome> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return CenteredView(
        child: Scaffold(
      backgroundColor: Colors.white,
      appBar: widgetAppBar(width: width, context: context),
      endDrawer: width < 600 ? getDrawer() : null,
      body: Container(),
      bottomSheet: Container(
        alignment: Alignment.center,
        color: Colors.white,
        height: 50,
        width: width,
        child: Text(' © 2020 '),
      ),
    ));
  }

  Widget getButton({String title, Function onPressed}) {
    return Container(
      padding: EdgeInsets.all(5),
      child: FlatButton(
        hoverColor: Colors.grey[100],
        onPressed: onPressed,
        child: Text(title),
      ),
    );
  }

  getDrawer() {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.bottomCenter,
              height: 56,
              child: Text(
                'La La Per',
                style: GoogleFonts.cookie(
                  fontSize: 40,
                ),
              ),
            ),
            Container(height: 1, color: Colors.grey[200]),
            getButton(title: 'NARUKVICE', onPressed: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => ViewNarukvice()));
            }),
            getButton(title: 'OGRLICE', onPressed: () {}),
            getButton(title: 'KONTAKT', onPressed: () {}),
            getButton(title: 'LOGIN', onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
