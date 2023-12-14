import 'package:shared_preferences/shared_preferences.dart';

class LoggedInUser {
  static String? mobile;
  static String? uid;

  LoggedInUser.profile(String? mobile, String? uid) {
    storeUserLocally(mobile, uid);
  }
  void storeUserLocally(String? mobile, String? uid) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.setString('mobile', mobile ?? '');

    prefs.setString('uid', uid ?? '');
  }

  static Future<void> getUserDetails() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    mobile = prefs.getString('mobile');

    uid = prefs.getString('uid');
  }

  static Future<void> clearUserData() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      mobile = null;
      uid = null;
      var result = await prefs.clear();
      if (result == false) throw 'Unable to logout';
    } catch (e) {
      rethrow;
    }
  }
}
