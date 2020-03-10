import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perleweb/views/view_kontakt.dart';
import 'package:perleweb/views/view_login.dart';
import 'package:perleweb/views/view_narukvice.dart';
import 'package:perleweb/widgets/widget_app_bar.dart';

getDrawer(BuildContext context) {
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
              context,
              MaterialPageRoute(
                builder: (context) => ViewNarukvice(),
              ),
            );
          }),
          getButton(title: 'KONTAKT', onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => ViewKontakt(),
              ),
            );
          }),
          getButton(title: 'LOGIN', onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => ViewLogin(),
              ),
            );
          }),
        ],
      ),
    ),
  );
}