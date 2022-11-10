import 'package:flutter/material.dart';
import 'package:veete/main.dart';
import 'package:veete/widgets/constant.dart';
import 'package:veete/screens/onboarding.dart';
import 'package:veete/screens/living_room/living_room.dart';
import 'package:veete/animations/splash.dart';

class Navigate {
  static Map<String, Widget Function(BuildContext)> routes = {
    Constants.splashNavigate: (context) => const SplashScreen (
      duration: 4,
      goToPage: HomePage(),
    ),
    '/': (context) => const HomePage(),
  };
}