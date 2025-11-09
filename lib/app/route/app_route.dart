import 'dart:ui';

import 'package:go_router/go_router.dart';
import 'package:test_new_app/app/main/module/onboarding_screen/view/onboarding_page.dart';
import 'package:test_new_app/app/main/module/splash_screen/view/splash_screen.dart';
import 'package:test_new_app/app/route/app_path.dart';

class AppRouter{
  AppRouter._();
  static final GoRouter appRouter=GoRouter(
    initialLocation: Routes.SPLASH_SCREEN,
      routes: [
        GoRoute(
          path: Routes.INITIAL,
          builder: (context, state)=> const SplashScreen(),
        ),
        GoRoute(
            path: Routes.ONBOARDING_SCREEN,
        builder: (context, state)=>OnboardingPage(),
          routes: [

          ]
        )

  ]);
}