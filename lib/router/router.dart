import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:matule_me_3/features/home/presentation/home_screen.dart';
import 'package:matule_me_3/features/onboarding/presentation/onboard_one.dart';
import 'package:matule_me_3/features/onboarding/presentation/onboard_three.dart';
import 'package:matule_me_3/features/onboarding/presentation/onboard_two.dart';
import 'package:matule_me_3/features/splash/presentation/splash_screen.dart';

final router = GoRouter(initialLocation: '/', routes: [
  GoRoute(path: '/', builder: (context, state) => SplashScreen(), routes: [
    GoRoute(
      path: 'one',
      builder: (context, state) => OnboardOne(),
    ),
    GoRoute(
      path: 'two',
      builder: (context, state) => OnboardTwo(),
    ),
    GoRoute(
      path: 'three',
      builder: (context, state) => OnboardThree(),
    ),
  ]),
  GoRoute(
    path: '/home',
    builder: (context, state) => HomeScreen(),
  ),
  GoRoute(
    path: '/holder',
    builder: (context, state) => Scaffold(
      body: Center(
        child: Text('Holder'),
      ),
    ),
  )
]);
