import 'package:flutter/material.dart';
import 'package:veete/widgets/constant.dart';
import 'package:veete/screens/onboarding.dart';
import 'package:veete/animations/splash.dart';

class Navigate {
  static Map<String, Widget Function(BuildContext)> routes = {
    Constants.splashNavigate: (context) => const SplashScreen (
      duration: 4,
      goToPage: Onboard(),
    ),
    '/': (context) => const Onboard(),
  };
}