

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sachirva_assignment/routes/route_handlers.dart';
import 'package:sachirva_assignment/routes/sachirva_routes.dart';
import 'package:sachirva_assignment/share_preferences/sachirva_shared_preference.dart';
import 'package:sachirva_assignment/ui/auth/login/login.dart';
import 'package:sachirva_assignment/ui/home/home.dart';
//import 'package:sachirva_assignment/ui/home/home.dart';

/// state of sign in or sign up
class SignInProvider extends ChangeNotifier {


  final textController0= TextEditingController();
  final textController1= TextEditingController();
  final textController2= TextEditingController();
  final textController3= TextEditingController();
  final textController4= TextEditingController();


  final emailTextController= TextEditingController();
  final passwordTextController= TextEditingController();
  bool progressIndicatorStatus=false;

  String errorMessage='';

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<ScaffoldState> scaffoldKeyRegister = GlobalKey<ScaffoldState>();
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
        //_auth.set=textController0.text;
        //SachirvaPreferences().upDateUserDetails(true, data.token, 'email_password', textController0.text.trim(),textController1.text.trim(),textController2.text.trim(), user.user.email);
        //onLoginSuccess();
        SachirvaPreferences().setLoginStatus(true);
        SachirvaPreferences().setEmail(user.user.email);

        progressIndicatorStatus=false;
        notifyListeners();
        Navigator.push(
          scaffoldKey.currentContext,
          MaterialPageRoute(builder: (context) => HomePage()),
        );
        /*Navigator.pushNamed(scaffoldKey.currentContext, SachirvaRoutes.home).then((value) {
          SystemNavigator.pop();
          //exit(0);
        });*/
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

  void createUser(){

    if(textController3.text.isNotEmpty&&textController4.text.isNotEmpty){
      createAccount(textController3.text, textController4.text);

    }else{
      Fluttertoast.showToast(
          msg: "Enter email",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          //timeInSecForIos: 1
      );
    }
  }


  Future<void> createAccount(String email, String password) async {

    //progressIndicatorUpdateCallback(true);
    try {

      progressIndicatorStatus=true;
      notifyListeners();
      final user = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      //errorCallback('');
      await user.user.getIdToken(refresh:true).then((data) {
//        progressIndicatorUpdateCallback(false);
        SachirvaPreferences().upDateUserDetails(
            true, '', 'email', textController0.text.trim(),textController1.text.trim(),textController2.text.trim(), user.user.email);


        progressIndicatorStatus=false;
        notifyListeners();
        Fluttertoast.showToast(
          msg: "UserRegister",
          toastLength: Toast.LENGTH_SHORT,
          //timeInSecForIos: 1
        );
        Navigator.push(
          scaffoldKeyRegister.currentContext,
          MaterialPageRoute(builder: (context) => HomePage()),
        );
       // Navigator.pop(scaffoldKeyRegister.currentContext);
        //onLoginSuccess();
      });
      return user.user.uid;
    } on Exception catch (e) {
      progressIndicatorStatus=false;
      notifyListeners();
      //progressIndicatorUpdateCallback(false);
      var errorMessage = '';
      if (e
          .toString()
          .contains('ERROR_ACCOUNT_EXISTS_WITH_DIFFERENT_CREDENTIAL'))
        errorMessage =
        'An account already exists with the same email address but different sign-in credentials.';
      else if (e.toString().contains('ERROR_EMAIL_ALREADY_IN_USE'))
        errorMessage = 'new user';
      else
        errorMessage = e.toString();
      //errorCallback(errorMessage);

      this.errorMessage=errorMessage;
      notifyListeners();
      debugPrint("-----------------------Exception  $errorMessage");
    }
  }

  void updateProfile(){
    SachirvaPreferences().upDateUserDetails(
        true, '', 'email', textController0.text.trim(),textController1.text.trim(),textController2.text.trim(), textController3.text.trim());

      Fluttertoast.showToast(
      msg: "Updated",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      //timeInSecForIos: 1
    );
  }

}

