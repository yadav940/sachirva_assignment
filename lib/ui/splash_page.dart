import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sachirva_assignment/share_preferences/sachirva_shared_preference.dart';
import 'package:sachirva_assignment/ui/auth/login/login.dart';
import 'package:sachirva_assignment/ui/home/home.dart';
import 'package:sachirva_assignment/util/color/colors.dart';
import 'package:sachirva_assignment/widget/custom_progress_indicator.dart';

class SplashPage extends StatefulWidget {

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    if(SachirvaPreferences().getLoginStatus()){

      Timer(
          Duration(seconds: 5),
              () => Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (BuildContext context) => HomePage())));

    }else{
      Timer(
          Duration(seconds: 5),
              () => Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (BuildContext context) => LoginPage())));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: ListView(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height/3,
          ),
          CustomProgressIndicator()
        ],
      ),
    );
  }
}
