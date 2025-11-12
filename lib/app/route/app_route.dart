import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:test_new_app/app/main/module/building_page/bloc/building_bloc.dart';
import 'package:test_new_app/app/main/module/home_screen/view/home_page.dart';
import 'package:test_new_app/app/main/module/onboarding_screen/view/onboarding_page.dart';
import 'package:test_new_app/app/main/module/splash_screen/view/splash_screen.dart';
import 'package:test_new_app/app/route/app_path.dart';

import '../main/module/building_page/view/building_view.dart';

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
        path: Routes.ONBOARDING_SCREEN,
        builder: (context, state) => OnboardingPage(),
      ),
          GoRoute(
              path: Routes.BUILDING_SCREEN,
              builder: (context, state) => BlocProvider(
                create: (context) => BuildingBloc(),
                child: const BuildingPageView(),
              ),
              routes: [
                // GoRoute(
                //     path: Routes.ADD_NEW_SUPPLIER,
                //     builder: (context, state){
                //       final supplierModel = state.extra as SupplierModel?;
                //       return AddSupplierForm(supplierModel: supplierModel,);
                //     }
                // ),
              ],
  )
  ]
  );
}

//
// class AppRouter {
//   AppRouter._();
//
//   static final GoRouter appRouter = GoRouter(
//     initialLocation: Routes.SPLASH_SCREEN,
//     routes: [
//       GoRoute(
//         path: Routes.INITIAL,
//         builder: (context, state) => const SplashScreen(),
//       ),
//       GoRoute(
//         path: Routes.ONBOARDING_SCREEN,
//         builder: (context, state) => OnboardingPage(),
//         routes: []
//       ),
//     ]
//   );
//
// }

//
// class AppRouter{
//   AppRouter._();
//   static final GoRouter appRouter=GoRouter(
//     initialLocation: Routes.SPLASH_SCREEN,
//       routes: [
//         GoRoute(
//           path: Routes.INITIAL,
//           builder: (context, state)=> const SplashScreen(),
//         ),
//         GoRoute(
//             path: Routes.ONBOARDING_SCREEN,
//         builder: (context, state)=>OnboardingPage(),
//           routes: [
//
//           ]
//         )
//
//   ]
//   );
// }