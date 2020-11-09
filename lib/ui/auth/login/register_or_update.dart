import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sachirva_assignment/provider/singin_provider.dart';
import 'package:sachirva_assignment/util/color/colors.dart';
import 'package:sachirva_assignment/util/enum/enum.dart';
import 'package:sachirva_assignment/util/style/style.dart';
import 'package:sachirva_assignment/widget/buutton_style/button_style_without_border_extended.dart';
import 'package:sachirva_assignment/widget/custom_progress_indicator.dart';

class RegisterUpdate extends StatefulWidget {
  final UserScreen userScreen;

  RegisterUpdate(this.userScreen);

  @override
  _RegisterUpdateState createState() => _RegisterUpdateState();
}

class _RegisterUpdateState extends State<RegisterUpdate> {

  @override
  Widget build(BuildContext context) {
    final signInProvider = Provider.of<SignInProvider>(context);
    return Scaffold(
      key: signInProvider.scaffoldKeyRegister,
      appBar: AppBar(
        title: Text(widget.userScreen==UserScreen.registration?'Add New User':'Profile'),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: ListView(
              children: [

                const SizedBox(
                  height: 12,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  controller: signInProvider.textController0,
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
                    return data.isEmpty?"Enter First name":null;
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
                    hintText: 'First name',
                    contentPadding:
                    const EdgeInsets.fromLTRB(10, 5, 10, 5),
                  ),
                  onSaved: (email) {

                  },
                ),
                const SizedBox(
                  height: 12,
                ),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.next,
                  controller: signInProvider.textController1,
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
                    return data.isEmpty?"Enter Last Name":null;
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
                    hintText: 'Last name',
                    contentPadding:
                    const EdgeInsets.fromLTRB(10, 5, 10, 5),
                  ),
                  onSaved: (email) {

                  },
                ),
                const SizedBox(
                  height: 12,
                ),
                TextFormField(
                  keyboardType: TextInputType.phone,
                  textInputAction: TextInputAction.next,
                  controller: signInProvider.textController2,
                  maxLength: 10,
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
                    return data.isEmpty?"Enter Mobile number":null;
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
                    hintText: 'Mobile number',
                    contentPadding:
                    const EdgeInsets.fromLTRB(10, 5, 10, 5),
                  ),
                  onSaved: (email) {

                  },
                ),
                const SizedBox(
                  height: 2,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  controller: signInProvider.textController3,
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
                    return data.isEmpty?"Enter Email ID":null;
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
                    hintText: 'Email ID',
                    contentPadding:
                    const EdgeInsets.fromLTRB(10, 5, 10, 5),
                  ),
                  onSaved: (email) {

                  },
                ),
                const SizedBox(
                  height: 12,
                ),
                widget.userScreen==UserScreen.registration?TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  controller: signInProvider.textController4,
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
                    hintText: 'Password',
                    contentPadding:
                    const EdgeInsets.fromLTRB(10, 5, 10, 5),
                  ),
                  onSaved: (email) {

                  },
                ):Container(),

                const SizedBox(
                  height: 18,
                ),

                Row(
                  children: <Widget>[
                    ButtonStyleWithoutBorderExtended(
                      buttonText:  widget.userScreen==UserScreen.registration?'Add New User':'Update Profile',
                      fillColor: secondaryColor,
                      textColor: Colors.white,
                      callBack: (){
                        if(widget.userScreen==UserScreen.registration){
                          signInProvider.createUser();
                        }else{
                          signInProvider.updateProfile();
                        }



                      },
                      textStyle: buttonTextStyle16WhiteSemiBold,
                      buttonStatus: true,
                      borderRadius: 2,
                    ),
                  ],
                ),


                const SizedBox(
                  height: 12,
                ),

              ],
            ),
          ),

          Selector<SignInProvider, bool>(
              builder: (context, data, child) {
                return data ? CustomProgressIndicator() : Container();
              },
              selector: (buildContext, provider) =>
              provider.progressIndicatorStatus)
        ],
      ),
    );
  }
}
