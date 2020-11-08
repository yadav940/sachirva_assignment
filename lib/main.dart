import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
//import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:sachirva_assignment/sachirva_application.dart';
import 'package:sachirva_assignment/share_preferences/sachirva_shared_preference.dart';
import 'package:sachirva_assignment/util/color/colors.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:flutter_flavor/flutter_flavor.dart';

void main() {
  //runApp(LoginPage());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: secondaryColor,
    statusBarColor: dividerColor,
  ));
  WidgetsFlutterBinding.ensureInitialized();

  getSharedPreferenceObject();

}


/// getting shared preference object
// ignore: avoid_void_async
void getSharedPreferenceObject() async {
  await SharedPreferences.getInstance().then((sharedPreference) {
    SachirvaPreferences().setSharedPreference(sharedPreference);
    //runApp(TagrankApp());
    runApp(
        SachirvaApp()
    );
    /*runZoned(() {
      runApp(TagrankApp(sharedPreference));
    }, onError: Crashlytics.instance.recordError);*/
  });
}

