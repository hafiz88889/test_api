import 'package:flutter/material.dart';
import 'package:test_new_app/app/route/app_route.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: "Test",
      themeMode: ThemeMode.system,
      routerConfig: AppRouter.appRouter,
    );
  }
}
