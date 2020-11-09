import 'dart:async';

import 'package:connectivity/connectivity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sachirva_assignment/sachirva_application.dart';
import 'package:sachirva_assignment/share_preferences/sachirva_shared_preference.dart';
import 'package:sachirva_assignment/ui/auth/login/login.dart';
import 'package:sachirva_assignment/ui/auth/login/register_or_update.dart';
import 'package:sachirva_assignment/ui/splash_page.dart';
import 'package:sachirva_assignment/util/color/colors.dart';
import 'package:sachirva_assignment/util/enum/enum.dart';
import 'package:sachirva_assignment/util/style/style.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:sachirva_assignment/widget/barchart/bar_chart_sample.dart';
import 'package:sachirva_assignment/widget/buutton_style/button_style_without_border_extended.dart';

import '../barchart_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<double> list =[];

  final textController0= TextEditingController();
  final textController1= TextEditingController();
  final textController2= TextEditingController();
  final textController3= TextEditingController();
  final textController4= TextEditingController();
  final textController5= TextEditingController();


  String _connectionStatus = 'Unknown';
  final Connectivity _connectivity = Connectivity();
  StreamSubscription<ConnectivityResult> _connectivitySubscription;


  @override
  void initState() {
    super.initState();
    initConnectivity();
    _connectivitySubscription =
        _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }

  @override
  void dispose() {
    _connectivitySubscription.cancel();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('sachirva assignment'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [

            //BarChartSample(list)

            /*BarChart(
            BarChartData(

          // read about it in the below section
        ),
    )*/

            const SizedBox(
              height: 10,
            ),

            Center(child: Text('Connection Status: $_connectionStatus')),

            const SizedBox(
              height: 60,
            ),
            
            Text('English'),
            const SizedBox(
              height: 7,
            ),
            
            TextFormField(
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
              maxLength: 2,
              controller: textController0,
              enableSuggestions: false,
              autofocus: false,
              onFieldSubmitted: (term) {
                /*signInProvider.emailFocusNode.unfocus();
                          FocusScope.of(context)
                              .requestFocus(signInProvider.passwordFocusNode);*/
              },
              validator: (data) {
                return /*validateEmail(data, context)*/;
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey)),
                errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black26)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: progressColor)),
                hintText: 'Out of 100 marks',
                contentPadding:
                const EdgeInsets.fromLTRB(10, 5, 10, 5),
              ),
              onSaved: (email) {},
            ),
            const SizedBox(
              height: 5,
            ),
            Text('Hindi'),
            const SizedBox(
              height: 7,
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
              maxLength: 2,
              controller: textController1,
              enableSuggestions: false,
              autofocus: false,
              obscureText: false,
              onFieldSubmitted: (term) {
                /*signInProvider.emailFocusNode.unfocus();
                          FocusScope.of(context)
                              .requestFocus(signInProvider.passwordFocusNode);*/
              },
              validator: (data) {
                return data.isEmpty?"Enter password":null;
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey)),
                errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black26)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: progressColor)),
                hintText: 'Out of 100 marks',
                contentPadding:
                const EdgeInsets.fromLTRB(10, 5, 10, 5),
              ),
              onSaved: (email) {

              },
            ),
            const SizedBox(
              height: 5,
            ),
            Text('Kannada'),
            const SizedBox(
              height: 7,
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
              maxLength: 2,
              controller: textController2,
              //controller: signInProvider.passwordTextController,
              enableSuggestions: false,
              autofocus: false,
              obscureText: false,
              onFieldSubmitted: (term) {
                /*signInProvider.emailFocusNode.unfocus();
                          FocusScope.of(context)
                              .requestFocus(signInProvider.passwordFocusNode);*/
              },
              validator: (data) {
                return data.isEmpty?"Enter password":null;
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey)),
                errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black26)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: progressColor)),
                hintText: 'Out of 100 marks',
                contentPadding:
                const EdgeInsets.fromLTRB(10, 5, 10, 5),
              ),
              onSaved: (email) {

              },
            ),
            const SizedBox(
              height: 5,
            ),
            Text('Maths'),
            const SizedBox(
              height: 7,
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
              maxLength: 2,
              controller: textController3,
              //controller: signInProvider.passwordTextController,
              enableSuggestions: false,
              autofocus: false,
              obscureText: false,
              onFieldSubmitted: (term) {
                /*signInProvider.emailFocusNode.unfocus();
                          FocusScope.of(context)
                              .requestFocus(signInProvider.passwordFocusNode);*/
              },
              validator: (data) {
                return data.isEmpty?"Enter password":null;
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey)),
                errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black26)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: progressColor)),
                hintText: 'Out of 100 marks',
                contentPadding:
                const EdgeInsets.fromLTRB(10, 5, 10, 5),
              ),
              onSaved: (email) {

              },
            ),
            const SizedBox(
              height: 5,
            ),
            Text('Science'),
            const SizedBox(
              height: 7,
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
              maxLength: 2,
              controller: textController4,
              //controller: signInProvider.passwordTextController,
              enableSuggestions: false,
              autofocus: false,
              obscureText: false,
              onFieldSubmitted: (term) {
                /*signInProvider.emailFocusNode.unfocus();
                          FocusScope.of(context)
                              .requestFocus(signInProvider.passwordFocusNode);*/
              },
              validator: (data) {
                return data.isEmpty?"Enter password":null;
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey)),
                errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black26)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: progressColor)),
                hintText: 'Out of 100 marks',
                contentPadding:
                const EdgeInsets.fromLTRB(10, 5, 10, 5),
              ),
              onSaved: (email) {

              },
            ),
            const SizedBox(
              height: 5,
            ),
            Text('Computer'),
            const SizedBox(
              height: 7,
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
              maxLength: 2,
              controller: textController5,
              //controller: signInProvider.passwordTextController,
              enableSuggestions: false,
              autofocus: false,
              obscureText: false,
              onFieldSubmitted: (term) {
                /*signInProvider.emailFocusNode.unfocus();
                          FocusScope.of(context)
                              .requestFocus(signInProvider.passwordFocusNode);*/
              },
              validator: (data) {
                return data.isEmpty?"Enter password":null;
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey)),
                errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black26)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: progressColor)),
                hintText: 'Out of 100 marks',
                contentPadding:
                const EdgeInsets.fromLTRB(10, 5, 10, 5),
              ),
              onSaved: (email) {

              },
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(),
                ),

              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: <Widget>[
                ButtonStyleWithoutBorderExtended(
                  buttonText: 'Calculate',
                  fillColor: secondaryColor,
                  textColor: Colors.white,
                  callBack: (){
                    //signInProvider.login();
                    list.clear();
                    if(textController0.text.isNotEmpty){
                      list.add(double.parse(textController0.text));
                    }else{
                      list.add(0.1);
                    }
                    if(textController1.text.isNotEmpty){
                      list.add(double.parse(textController1.text));
                    }else{
                      list.add(0.1);
                    }
                    if(textController2.text.isNotEmpty){
                      list.add(double.parse(textController2.text));
                    }else{
                      list.add(0.1);
                    }
                    if(textController3.text.isNotEmpty){
                      list.add(double.parse(textController3.text));
                    }else{
                      list.add(0.1);
                    }
                    if(textController4.text.isNotEmpty){
                      list.add(double.parse(textController4.text));
                    }else{
                      list.add(0.1);
                    }
                    if(textController5.text.isNotEmpty){
                      list.add(double.parse(textController5.text));
                    }else{
                      list.add(0.1);
                    }
                    
                    Navigator.push(
                      context,
                      CupertinoPageRoute(builder: (context) => BarcharPage(list)),
                    );
                  },
                  textStyle: buttonTextStyle16WhiteSemiBold,
                  buttonStatus: true,
                  borderRadius: 2,
                ),
              ],
            ),

          ],
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            //Text(''),
            ListTile(
              title: Text('',style: textStyle14SecondaryBold,),
              onTap: () {
                // Update the state of the app.
                // ...
                //Navigator.pop(context);
              },
            ),
            const SizedBox(height: 30,),
            ListTile(
              title: Text('Home' , style: textStyle14SecondaryBold),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const SizedBox(height: 12,),
            ListTile(
              title: Text('Profile' , style: textStyle14SecondaryBold),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterUpdate(UserScreen.upadate)),
                );
              },
            ),
            const SizedBox(height: 5,),
            ListTile(
              title: Text('Logout' , style: textStyle14SecondaryBold),
              onTap: () {
                Navigator.pop(context);
                SachirvaPreferences().upDateUserDetails(false,'','','','','','');
                //RestartWidget.restartApp(context)
                Navigator.pop(
                  context,
                  CupertinoPageRoute(builder: (context) => LoginPage()),
                );
                //SachirvaApp();


              },
            ),
            const SizedBox(height: 12,),

            const SizedBox(height: 12,),
          ],
        ),
      ),
    );
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initConnectivity() async {
    ConnectivityResult result;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      result = await _connectivity.checkConnectivity();
    } on PlatformException catch (e) {
      print(e.toString());
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) {
      return Future.value(null);
    }

    return _updateConnectionStatus(result);
  }
  Future<void> _updateConnectionStatus(ConnectivityResult result) async {
    switch (result) {
      case ConnectivityResult.wifi:
      case ConnectivityResult.mobile:
      case ConnectivityResult.none:
        setState(() => _connectionStatus = result.toString());
        break;
      default:
        setState(() => _connectionStatus = 'Failed to get connectivity.');
        break;
    }
  }
}
