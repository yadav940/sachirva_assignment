

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sachirva_assignment/routes/route_handlers.dart';
import 'package:sachirva_assignment/routes/sachirva_routes.dart';
import 'package:sachirva_assignment/share_preferences/sachirva_shared_preference.dart';
//import 'package:sachirva_assignment/ui/home/home.dart';

/// state of sign in or sign up
class SignInProvider extends ChangeNotifier {


  final emailTextController= TextEditingController();
  final passwordTextController= TextEditingController();
  bool progressIndicatorStatus=false;

  String errorMessage='';

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final formKey = GlobalKey<FormState>();
  ///  fire base auth object
  final FirebaseAuth _auth = FirebaseAuth.instance;


  void login(){
    if(formKey.currentState.validate()){
      emailAndPasswordLogin(email: emailTextController.text,password: passwordTextController.text);
    }
  }

  /// manual email and password login
  Future<void> emailAndPasswordLogin({String email, String password}) async {
    try {
      progressIndicatorStatus=true;
      notifyListeners();
      final user = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
//      progressIndicatorUpdateCallback(false);
      await user.user.getIdToken(refresh: true).then((data) {
//        progressIndicatorUpdateCallback(false);
        SachirvaPreferences().upDateUserDetails(true, data.token, 'email_password', user.user.displayName, user.user.email);
        //onLoginSuccess();

        progressIndicatorStatus=false;
        notifyListeners();
        /*Navigator.push(
          scaffoldKey.currentContext,
          MaterialPageRoute(builder: (context) => Home()),
        );*/
        Navigator.pushNamed(scaffoldKey.currentContext, SachirvaRoutes.home).then((value) {
          SystemNavigator.pop();
          //exit(0);
        });
        /*Navigator.push(
          scaffoldKey.currentContext,
          MaterialPageRoute(builder: (context) => MainWidget()),
        );*/
        debugPrint("-----------------------onLoginSuccess  ");
      });
    } on Exception catch (e) {
      progressIndicatorStatus=false;
      notifyListeners();
      //progressIndicatorUpdateCallback(false);
      debugPrint("-----------------------Exception");
      debugPrint("-----------------------Exception");
      var errorMessage = '';
      if (e.toString().contains('ERROR_NETWORK_REQUEST_FAILED'))
        errorMessage = 'Please check your internet connection and try again';
      else if (e.toString().contains('ERROR_WRONG_PASSWORD'))
        errorMessage = 'Password is incorrect';
      else if (e.toString().contains('ERROR_USER_NOT_FOUND'))
        errorMessage = 'Email ID is not registered';
      else
        errorMessage = e.toString();

      this.errorMessage=errorMessage;
      notifyListeners();
      debugPrint("-----------------------Exception  $errorMessage");
      //errorCallback(errorMessage);
    }
  }

  void dismissErrorWidget(){
    errorMessage='';
    notifyListeners();
  }

}

