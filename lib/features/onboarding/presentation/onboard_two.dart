import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:matule_me_3/features/onboarding/domain/controllers/onboard_controller.dart';
import 'package:matule_me_3/servises/preferences_service.dart';
import 'package:matule_me_3/theme/theme.dart';

class OnboardTwo extends StatefulWidget {
  const OnboardTwo({super.key});

  @override
  State<OnboardTwo> createState() => _OnboardTwoState();
}

class _OnboardTwoState extends State<OnboardTwo> {
  late OnboardController _controller;

  @override
  void initState() {
    _controller =
        OnboardController(preferencesService: GetIt.I<PreferencesService>());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FractionallySizedBox(
            heightFactor: 1.02,
            child: Image.asset(
              'assets/images/two.png',
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment(1, 1),
            child: Padding(
              padding: EdgeInsets.only(left: 20, right: 20, bottom: 36),
              child: ElevatedButton(
                  onPressed: () {
                    _controller.onboardTwoCompleted();
                    context.push('/three');
                  },
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13))),
                  child: Text(
                    'Далее',
                    style:
                        AppShrifts.semibold14R.copyWith(color: AppColors.text),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
