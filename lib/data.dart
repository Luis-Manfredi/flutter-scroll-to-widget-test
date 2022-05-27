import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences {
  static SharedPreferences? _preferences;

  static const _keyItems = 'items';

  static Future init() async => _preferences = await SharedPreferences.getInstance();

  
}
