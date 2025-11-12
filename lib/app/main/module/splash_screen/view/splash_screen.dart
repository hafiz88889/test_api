import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_new_app/app/route/app_path.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: Column(children: [
        ElevatedButton(onPressed: (){
          context.push(Routes.INITIAL+Routes.BUILDING_SCREEN);
        }, child: Text("Go BuildingPage"))
      ],)),
    );
  }
}
