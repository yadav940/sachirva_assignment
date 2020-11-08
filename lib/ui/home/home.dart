import 'package:flutter/material.dart';
import 'package:sachirva_assignment/util/color/colors.dart';
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
  List<double> list =[90.32,30.0,20.0,50.0,15.0,70.77];
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
              //controller: signInProvider.emailTextController,
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
              height: 12,
            ),
            Text('Hindi'),
            const SizedBox(
              height: 7,
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
              maxLength: 2,
              //controller: signInProvider.passwordTextController,
              enableSuggestions: false,
              autofocus: false,
              obscureText: true,
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
              height: 12,
            ),
            Text('Kannada'),
            const SizedBox(
              height: 7,
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
              maxLength: 2,
              //controller: signInProvider.passwordTextController,
              enableSuggestions: false,
              autofocus: false,
              obscureText: true,
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
              height: 12,
            ),
            Text('Maths'),
            const SizedBox(
              height: 7,
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
              maxLength: 2,
              //controller: signInProvider.passwordTextController,
              enableSuggestions: false,
              autofocus: false,
              obscureText: true,
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
              height: 12,
            ),
            Text('Science'),
            const SizedBox(
              height: 7,
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
              maxLength: 2,
              //controller: signInProvider.passwordTextController,
              enableSuggestions: false,
              autofocus: false,
              obscureText: true,
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
              height: 12,
            ),
            Text('Computer'),
            const SizedBox(
              height: 7,
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
              maxLength: 2,
              //controller: signInProvider.passwordTextController,
              enableSuggestions: false,
              autofocus: false,
              obscureText: true,
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
              height: 12,
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BarcharPage()),
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
              //onTap: () =>homeProvider.onTrendingTab(),
            ),
            const SizedBox(height: 12,),
            ListTile(
              title: Text('Profile' , style: textStyle14SecondaryBold),
              //onTap: () =>homeProvider.onTrendingTab(),
            ),
            const SizedBox(height: 12,),
            ListTile(
              title: Text('Logout' , style: textStyle14SecondaryBold),
              //onTap: () =>homeProvider.onTrendingTab(),
            ),
            const SizedBox(height: 12,),

            const SizedBox(height: 12,),
          ],
        ),
      ),
    );
  }
}
