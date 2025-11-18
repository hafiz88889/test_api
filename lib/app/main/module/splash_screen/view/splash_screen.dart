import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_new_app/app/main/module/building_page/view/building_view.dart';
import 'package:test_new_app/app/route/app_path.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 8),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(12)),
                minimumSize: Size(double.infinity, 55)
              ),
              onPressed: (){
            context.go(Routes.PRODUCT_VIEW);
          }, child: Text("Product Page",style: TextStyle(color: Colors.white),)),
        )
      ],)),
    );
  }
}
