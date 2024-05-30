import 'package:shared_preferences/shared_preferences.dart';


class SharedPreferenceHelper {
  static Future<String> loadPref(String prefID) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString(prefID) ?? '';
  }

  static Future<bool> savePref(String prefID, String prefValue) async {
    SharedPreferences appUse = await SharedPreferences.getInstance();
    return await appUse.setString(prefID, prefValue);
  }

  static Future<bool> resetPref(String prefID) async {
    SharedPreferences appUse = await SharedPreferences.getInstance();
    return await appUse.setString(prefID, "");
  }

  static removeUser(){
  savePref("UUID", "");
}

static saveUser(String uuid){
  savePref("UUID", uuid);
}
}
