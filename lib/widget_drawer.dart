import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perleweb/widget_app_bar.dart';

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
          getButton(title: 'NARUKVICE', onPressed: () {}),
          getButton(title: 'OGRLICE', onPressed: () {}),
          getButton(title: 'KONTAKT', onPressed: () {}),
          getButton(title: 'LOGIN', onPressed: () {}),
        ],
      ),
    ),
  );
}