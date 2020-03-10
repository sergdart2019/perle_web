import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perleweb/views/view_home.dart';
import 'package:perleweb/views/view_kontakt.dart';
import 'package:perleweb/views/view_login.dart';
import 'package:perleweb/views/view_narukvice.dart';

widgetAppBar({BuildContext context, double width}) {
  return AppBar(
    centerTitle: width < 600 ? true : false,
    automaticallyImplyLeading: false,
    title: GestureDetector(
      onTap: () => Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => ViewHome())),
      child: Container(
        child: Text(
          'La La Per',
          style: GoogleFonts.cookie(fontSize: 40),
        ),
      ),
    ),
    actions: width < 600
        ? null
        : <Widget>[
            getButton(
                title: 'NARUKVICE',
                onPressed: () {
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context) => ViewNarukvice()));
                }),
            getButton(
                title: 'KONTAKT',
                onPressed: () {
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context) => ViewKontakt()));
                }),
            getButton(
                title: 'LOGIN',
                onPressed: () {
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context) => ViewLogin()));
                }),
          ],
    elevation: 0,
    backgroundColor: Colors.white,
  );
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
