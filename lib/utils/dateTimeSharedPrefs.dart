import 'package:shared_preferences/shared_preferences.dart';

class DateTimePreferences {
  static SharedPreferences? _preferences;
  static const _dateTimeKey = 'dateTime';
  List hello = List.filled(4, null, growable: false);
  List num = [];

  static Future init() async =>
      _preferences = await SharedPreferences.getInstance();

  static Future setDateTime(DateTime dateTime) async {
    final dateTimeValue = dateTime.toString();
    return await _preferences?.setString(_dateTimeKey, dateTimeValue);
  }

  static Future<DateTime?> getDateTime() async {
    final dateTime = _preferences?.getString(_dateTimeKey);
    print(DateTime.tryParse(dateTime!));
    return DateTime.tryParse(dateTime);
  }
}
