import 'package:flutter/material.dart';
import 'package:flutter_application/src/feature/screens/age_screen.dart';
import 'package:flutter_application/src/feature/screens/bmi_screen.dart';
import 'package:flutter_application/src/feature/screens/currency_screen.dart';
import 'package:flutter_application/src/feature/screens/home_screen.dart';
import 'package:flutter_application/src/feature/screens/zodiac_screen.dart';
import 'package:go_router/go_router.dart';

class MyHealthAppRouter {
  static GoRouter router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => HomeScreen()),
      GoRoute(path: '/bmi', builder: (context, state) => BmiScreen()),
      GoRoute(path: '/age', builder: (context, state) => AgeScreen()),
      GoRoute(path: '/zodiac', builder: (context, state) => ZodiacScreen()),
      GoRoute(path: '/currency', builder: (context, state) => CurrencyScreen()),
    ]);
}
