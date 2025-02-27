import 'package:matule_me_3/servises/preferences_service.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SplashController {
  final PreferencesService preferencesService;
  final Supabase supabase;

  SplashController({required this.preferencesService, required this.supabase});

  Future<String> redirect() async {
    if (supabase.client.auth.currentSession != null) {
      return '/home';
    } else {
      final mark = await preferencesService.getOnboardMark();
      if (mark == 2) {
        return '/two';
      } else if (mark == 3) {
        return '/three';
      } else if (mark == 0) {
        return '/login';
      } else {
        return '/one';
      }
    }
  }
}
