import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceHelper{
  static Future<String> getToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString("accesstoken") ?? ''; // 4293467747
  }
}