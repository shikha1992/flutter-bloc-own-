
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/blocs/BlocProvider.dart';
import 'package:flutter_app/blocs/application_bloc.dart';

class SplashScreen<T extends BlocBase> extends StatefulWidget{


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SplashScreen();
  }

}



class _SplashScreen extends State<SplashScreen>{
  final bloc = ApplicationBloc();

  @override
  void initState() {
    super.initState();
    startSplashScreenTimer();
  }

  startSplashScreenTimer() async {
    var _duration = new Duration(seconds: 5);
    return new Timer(_duration, navigationToNextPage);
  }


  void navigationToNextPage() {

    var va =  bloc.checkIsLogin();
    var vak =  bloc.locationStream;
    var vakw =  bloc.locationStream;
    bloc.locationStream.listen((data) {
      print("DataReceived: "+data);
    }, onDone: () {
      print("Task Done");
    }, onError: (error) {
      print("Some Error");
    });

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocProvider(
      bloc: ApplicationBloc(),
      child: Scaffold(
        body: new Text("Close"),
      ),
    );
  }
}