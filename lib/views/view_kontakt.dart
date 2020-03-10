import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perleweb/widgets/widget_app_bar.dart';
import 'package:perleweb/widgets/widget_drawer.dart';

import '../centered_wiev.dart';

class ViewKontakt extends StatefulWidget {
  @override
  _ViewKontaktState createState() => _ViewKontaktState();
}

class _ViewKontaktState extends State<ViewKontakt> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return CenteredView(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: widgetAppBar(width: width, context: context),
        endDrawer: width < 650 ? getDrawer(context) : null,
        body: Container(
          alignment: Alignment.center,
          child: SelectableText(
            'email: teodora.uzelac@gmail.com\n',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 40,
            ),
          ),
        ),
        bottomSheet: Container(
          alignment: Alignment.center,
          color: Colors.white,
          height: 50,
          width: width,
          child: Text(' © 2020 '),
        ),
      ),
    );
  }
}
