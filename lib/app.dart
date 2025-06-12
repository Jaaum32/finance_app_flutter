import 'package:finance_app_flutter/features/onboarding/onboarding_page.dart';
import 'package:finance_app_flutter/features/splash/splash_page.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/splash",
      routes: {
        "/onboarding": (context) => const OnboardingPage(),
        "/splash": (context) => const SplashPage()
      },
    );
  }
}
