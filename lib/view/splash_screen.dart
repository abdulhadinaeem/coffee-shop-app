import 'package:coffe_shop_app/controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashScreenController>(
      init: SplashScreenController(),
      builder: (controller) {
        return const Scaffold(
          backgroundColor: Colors.black,
          body: Center(
            child: Image(
              image: AssetImage('assets/images/splash.png'),
            ),
          ),
        );
      },
    );
  }
}
