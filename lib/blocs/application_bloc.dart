import 'dart:async';
import 'dart:collection';

import 'package:flutter_app/storage/sharedpref.dart';

import 'BlocProvider.dart';


class ApplicationBloc implements BlocBase {

  SharedPreferencesHelper sharedPreferencesHelper;
  String _location;
  String get selectedLocation => _location;

  // 1
  final _locationController = StreamController<String>();

  // 2
  Stream<String> get locationStream => _locationController.stream;

  // 3
  void selectLocation(String location) {
    _location = location;
    _locationController.sink.add(location);
  }


  Future<String> checkIsLogin() async {
    String _token = "";
//    _token = SharedPreferencesHelper.getLanguageCode() as String;
    if (_token != "" && _token != null) {
      _locationController.sink.add("test");
    }else{
      _locationController.sink.add("hh");
    }
  }

  // 4
  @override
  void dispose() {
    _locationController.close();
  }


}
