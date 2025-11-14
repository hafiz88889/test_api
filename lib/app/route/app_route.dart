import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../main/module/building_page/bloc/building_bloc.dart';
import '../main/module/building_page/view/building_view.dart';
import '../main/module/splash_screen/view/splash_screen.dart';
import 'app_path.dart';

class AppRouter {
  AppRouter._();

  static final GoRouter appRouter = GoRouter(
    initialLocation: Routes.SPLASH_SCREEN,
    routes: [
      GoRoute(
        path: Routes.SPLASH_SCREEN,
        builder: (context, state) => const SplashScreen(),
      ),

      GoRoute(
        path: Routes.BUILDING_SCREEN,
        builder: (context, state) {
          return BlocProvider(
            create: (_) => BuildingBloc(),
            child: const BuildingPageView(),
          );
        },
      ),

    ],
  );
}
