import 'package:flutter/material.dart';

import 'view_home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Perle',
      theme: ThemeData(primarySwatch: Colors.grey),
      home: ViewHome(),
    );
  }
}

