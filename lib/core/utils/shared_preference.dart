import 'package:shared_preferences/shared_preferences.dart';

class SharePreference {
  static SharedPreferences? sharedPreferences;
  static init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  // this method to save the information
  static Future<bool> saveData({
    required dynamic value,
    required String key,
  }) async {
    if (value is String) return await sharedPreferences!.setString(key, value);
    if (value is int) return await sharedPreferences!.setInt(key, value);
    if (value is bool) return await sharedPreferences!.setBool(key, value);
    return await sharedPreferences!.setDouble(key, value);
  }

  // this method to get the data that is storaged
  static dynamic getData({
    required String key,
  }) async {
    return sharedPreferences!.get(key);
  }
}
