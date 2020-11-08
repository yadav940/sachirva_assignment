//import 'package:tagrank/model/response/account_details.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// shared preference
class SachirvaPreferences {
  ///
  factory SachirvaPreferences() => _instance;

  ///
  static final SachirvaPreferences _instance = SachirvaPreferences.internal();

  ///
  SachirvaPreferences.internal();

  ///
  SharedPreferences _prefs;

  /// set share preference object
  void setSharedPreference(SharedPreferences _prefs) {
    this._prefs = _prefs;
  }

  ///
  SharedPreferences getSharePreference() => _prefs;

  /// updating user details after login
  void upDateUserDetails(bool loginStatus, String token, String loginType,
      String userName, String userEmail) {
    _prefs
      ..setString('token', token)
      ..setString('login_type', loginType)
      ..setBool('login_status', loginStatus)
      ..setString('user_name', userName)
      ..setString('user_email', userEmail);
  }

  void updateUserNameEmail(String userName, String userEmail) {
    _prefs
      ..setString('user_name', userName)
      ..setString('user_email', userEmail);
  }

  void updateUserName(String userName) {
    _prefs..setString('user_name', userName);
  }

  /// getting user name
  String getUseName() {
    return _prefs.getString('user_name');
  }

  /// getting login status
  bool getLoginStatus() {
    if (_prefs.getBool('login_status') != null)
      return _prefs.getBool('login_status');
    else
      return false;
  }

  /// getting user details
  String getUserImage() => _prefs.getString('user_image');

  void setUserImage(String userImage) {
    _prefs.setString('user_image', userImage);
  }

  String  getSelectedLanguage() {
    if (_prefs.getString('language_code') == null) {
      return 'en';
    } else
      return _prefs.getString('language_code');
  }

}
