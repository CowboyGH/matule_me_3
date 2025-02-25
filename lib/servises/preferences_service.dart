import 'package:shared_preferences/shared_preferences.dart';

class PreferencesService {
  Future<SharedPreferences> get _prefs async => SharedPreferences.getInstance();

  Future<void> setValue(int value) async {
    final prefs = await _prefs;
    prefs.setInt('onboard', value);
  }

  Future<void> afterOnboardOne() async {
    setValue(2);
  }

  Future<void> afterOnboardTwo() async {
    setValue(3);
  }

  Future<void> afterOnboardThree() async {
    setValue(0);
  }

  Future<int?> getOnboardMark() async {
    final prefs = await _prefs;
    return prefs.getInt('onboard');
  }
}
