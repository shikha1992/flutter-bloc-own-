

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/ui/home.dart';
import 'package:flutter_app/ui/login.dart';
import 'package:flutter_app/ui/splash.dart';

class Application extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      routes: <String,WidgetBuilder>{
        "/HomeScreen": (BuildContext context) => HomeScreen(),
        "/LoginScreen": (BuildContext context) => LoginScreen(),
      },
      home: SplashScreen(),
    );
  }

}