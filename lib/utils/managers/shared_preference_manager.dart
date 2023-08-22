import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesManager {
  static SharedPreferences? _preferences;

  static Future<void> init() async {
    _preferences ??= await SharedPreferences.getInstance();
  }

  static SharedPreferences? get instance {
    if (_preferences == null) {
      throw Exception(
          "SharedPreferencesManager is not initialized. Call SharedPreferencesManager.init() before accessing it.");
    }
    return _preferences;
  }

  // Get a String value from shared preferences
  static String getString(String key, {String defaultValue = ''}) {
    return instance?.getString(key) ?? defaultValue;
  }

  // Set a String value to shared preferences
  static Future<bool>? setString(String key, String value) {
    return instance?.setString(key, value);
  }
}
