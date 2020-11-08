
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sachirva_assignment/helper/validator.dart';
import 'package:sachirva_assignment/provider/singin_provider.dart';
import 'package:sachirva_assignment/util/color/colors.dart';
import 'package:sachirva_assignment/util/style/style.dart';
import 'package:sachirva_assignment/widget/buutton_style/button_style_without_border_extended.dart';
import 'package:sachirva_assignment/widget/custom_progress_indicator.dart';
import 'package:sachirva_assignment/widget/error_widget.dart';

/*import 'package:tagrank/helper/validator.dart';
import 'package:tagrank/provider/singin_provider.dart';
import 'package:tagrank/util/color/colors.dart';
import 'package:tagrank/util/style/style.dart';
import 'package:tagrank/widget/buutton_style/button_style_without_border_extended.dart';
import 'package:tagrank/widget/custom_progress_indicator.dart';
import 'package:tagrank/widget/error_widget.dart';*/

/// login screen
class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final signInProvider = Provider.of<SignInProvider>(context);
    return Scaffold(
      key: signInProvider.scaffoldKey,
      body: Stack(
        children: [
          ListView(
            shrinkWrap: true,
            children: [
              //Text('kjkjk')
              Selector<SignInProvider, String>(
                  builder: (context, data, child) {
                    return data != ''
                        ? CustomErrorWidget(
                        data, signInProvider.dismissErrorWidget)
                        : Container();
                  },
                  selector: (buildContext, provider) =>
                  provider.errorMessage),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Form(
                  key: signInProvider.formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      //Image.asset('assets/logo.png'),
                      const SizedBox(
                        height: 60,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        controller: signInProvider.emailTextController,
                        enableSuggestions: false,
                        autofocus: false,
                        onFieldSubmitted: (term) {
                          /*signInProvider.emailFocusNode.unfocus();
                        FocusScope.of(context)
                            .requestFocus(signInProvider.passwordFocusNode);*/
                        },
                        validator: (data) {
                          return validateEmail(data, context);
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
                          hintText: 'Phone/Email',
                          contentPadding:
                          const EdgeInsets.fromLTRB(10, 5, 10, 5),
                        ),
                        onSaved: (email) {},
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        textInputAction: TextInputAction.next,
                        controller: signInProvider.passwordTextController,
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
                      ),
                      const SizedBox(
                        height: 8,
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
                            buttonText: 'SIGN IN / SIGN UP',
                            fillColor: secondaryColor,
                            textColor: Colors.white,
                            callBack: (){
                              signInProvider.login();
                            },
                            textStyle: buttonTextStyle16WhiteSemiBold,
                            buttonStatus: true,
                            borderRadius: 2,
                          ),
                        ],
                      ),
                      //Text('this is lofijb')
                    ],
                  ),
                ),
              )
            ],
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

