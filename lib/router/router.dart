import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:matule_me_3/common/widgets/categories_list.dart';
import 'package:matule_me_3/features/auth/presentation/login_screen.dart';
import 'package:matule_me_3/features/auth/presentation/otp_screen.dart';
import 'package:matule_me_3/features/auth/presentation/recovery_screen.dart';
import 'package:matule_me_3/features/auth/presentation/signup_screen.dart';
import 'package:matule_me_3/features/cart/presentation/cart_screen.dart';
import 'package:matule_me_3/features/category/presentation/category_screen.dart';
import 'package:matule_me_3/features/edit/presentation/edit_profile_screen.dart';
import 'package:matule_me_3/features/favorites/presentation/favorites_screen.dart';
import 'package:matule_me_3/features/home/presentation/home_screen.dart';
import 'package:matule_me_3/features/menu/presentation/menu_screen.dart';
import 'package:matule_me_3/features/notifies/presentation/notifies_screen.dart';
import 'package:matule_me_3/features/onboarding/presentation/onboard_one.dart';
import 'package:matule_me_3/features/onboarding/presentation/onboard_three.dart';
import 'package:matule_me_3/features/onboarding/presentation/onboard_two.dart';
import 'package:matule_me_3/features/order/presentation/order_screen.dart';
import 'package:matule_me_3/features/orders/presentation/orders_screen.dart';
import 'package:matule_me_3/features/popular/presentation/popular_screen.dart';
import 'package:matule_me_3/features/product/presentation/product_screen.dart';
import 'package:matule_me_3/features/profile/presentation/profile_screen.dart';
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
    path: '/popular',
    builder: (context, state) => PopularScreen(),
  ),
  GoRoute(
    path: '/category/:title',
    builder: (context, state) => CategoryScreen(
      category: state.pathParameters['title']!,
    ),
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
    path: '/menu',
    builder: (context, state) => MenuScreen(),
  ),
  GoRoute(
    path: '/profile',
    builder: (context, state) => ProfileScreen(),
  ),
  GoRoute(
    path: '/edit',
    builder: (context, state) => EditProfileScreen(),
  ),
  GoRoute(
    path: '/notifies',
    builder: (context, state) => NotifiesScreen(),
  ),
  GoRoute(
    path: '/orders',
    builder: (context, state) => OrdersScreen(),
  ),
  GoRoute(
    path: '/order',
    builder: (context, state) => OrderScreen(),
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
