import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:matule_me_3/features/splash/domain/controllers/splash_controller.dart';
import 'package:matule_me_3/servises/preferences_service.dart';
import 'package:matule_me_3/theme/theme.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late SplashController _controller;

  @override
  void initState() {
    _controller = SplashController(
        preferencesService: GetIt.I<PreferencesService>(),
        supabase: GetIt.I<Supabase>());
    Future.delayed(Durations.extralong4, () async {
      final route = await _controller.redirect();
      context.go(route);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blue,
      body: Center(
        child: Container(
          height: 129,
          width: 129,
          decoration: BoxDecoration(
              color: AppColors.white, borderRadius: BorderRadius.circular(120)),
          child: SvgPicture.asset(
            'assets/icons/bag-big.svg',
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
    );
  }
}
