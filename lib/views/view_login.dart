import 'package:flutter/material.dart';
import 'package:perleweb/widgets/widget_app_bar.dart';
import 'package:perleweb/widgets/widget_drawer.dart';

import '../centered_wiev.dart';

class ViewLogin extends StatefulWidget {
  @override
  _ViewLoginState createState() => _ViewLoginState();
}

class _ViewLoginState extends State<ViewLogin> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return CenteredView(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: widgetAppBar(width: width, context: context),
        endDrawer: width < 650 ? getDrawer(context) : null,
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 250,
                child: TextFormField(
                  decoration: InputDecoration(
                      icon: Icon(Icons.account_box), hintText: 'Username'),
                ),
              ),
              Container(
                width: 250,
                margin: EdgeInsets.symmetric(vertical: 20),
                child: TextFormField(
                  decoration:
                      InputDecoration(icon: Icon(Icons.security), hintText: 'Password'),
                ),
              ),
              FlatButton(
                child: Text('LOGIN'),
                onPressed: () {},
                color: Colors.grey,
                textColor: Colors.white,
              )
            ],
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
