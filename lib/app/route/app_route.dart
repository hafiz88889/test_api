import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:test_new_app/app/main/core/model/request_body.dart';

import '../main/module/building_page/bloc/building_bloc.dart';
import '../main/module/building_page/bloc/building_event.dart' show LoadBuilding;
import '../main/module/building_page/view/building_view.dart';
import '../main/module/splash_screen/view/splash_screen.dart';
import 'app_path.dart';



class AppRouter {
  AppRouter._();

  static final GoRouter appRouter = GoRouter(
    initialLocation: Routes.SPLASH_SCREEN,
    routes: [
      // 🔹 Splash Screen
      GoRoute(
        path: Routes.SPLASH_SCREEN,
        builder: (context, state) => const SplashScreen(),
      ),

      // 🔹 Building Page (BlocProvider সহ)
      GoRoute(
        path: Routes.BUILDING_SCREEN,
        pageBuilder: (context, state) {
          return MaterialPage(
            child: BlocProvider(
              create: (context) => BuildingBloc(),
              child: const BuildingPageView(),
            ),
          );
        },
      ),
    ],
  );
}
