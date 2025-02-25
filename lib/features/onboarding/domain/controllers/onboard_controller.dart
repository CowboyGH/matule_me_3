import 'package:matule_me_3/servises/preferences_service.dart';

class OnboardController {
  final PreferencesService preferencesService;

  OnboardController({required this.preferencesService});

  Future<void> onboardOneCompleted() async {
    preferencesService.afterOnboardOne();
  }

  Future<void> onboardTwoCompleted() async {
    preferencesService.afterOnboardTwo();
  }

  Future<void> onboardThreeCompleted() async {
    preferencesService.afterOnboardThree();
  }
}
