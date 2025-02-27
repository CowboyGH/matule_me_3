import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:matule_me_3/features/auth/presentation/login_screen.dart';
import 'package:matule_me_3/features/auth/presentation/otp_screen.dart';
import 'package:matule_me_3/features/auth/presentation/recovery_screen.dart';
import 'package:matule_me_3/features/auth/presentation/signup_screen.dart';
import 'package:matule_me_3/features/cart/presentation/cart_screen.dart';
import 'package:matule_me_3/features/favorites/presentation/favorites_screen.dart';
import 'package:matule_me_3/features/home/presentation/home_screen.dart';
import 'package:matule_me_3/features/onboarding/presentation/onboard_one.dart';
import 'package:matule_me_3/features/onboarding/presentation/onboard_three.dart';
import 'package:matule_me_3/features/onboarding/presentation/onboard_two.dart';
import 'package:matule_me_3/features/product/presentation/product_screen.dart';
import 'package:matule_me_3/features/search/presentation/search_screen.dart';
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
    path: '/login',
    builder: (context, state) => LoginScreen(),
  ),
  GoRoute(
    path: '/signup',
    builder: (context, state) => SignupScreen(),
  ),
  GoRoute(
    path: '/recovery',
    builder: (context, state) => RecoveryScreen(),
  ),
  GoRoute(
    path: '/otp/:email',
    builder: (context, state) => OtpScreen(
      email: state.pathParameters['email']!,
    ),
  ),
  GoRoute(
    path: '/home',
    builder: (context, state) => HomeScreen(),
  ),
  GoRoute(
    path: '/favorites',
    builder: (context, state) => FavoritesScreen(),
  ),
  GoRoute(
    path: '/search',
    builder: (context, state) => SearchScreen(),
  ),
  GoRoute(
    path: '/product/:title',
    builder: (context, state) => ProductScreen(
      title: state.pathParameters['title']!,
    ),
  ),
  GoRoute(
    path: '/cart',
    builder: (context, state) => CartScreen(),
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
