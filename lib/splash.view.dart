import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_learn/features/auth/presentation/login/login.view.dart';
import 'package:flutter_learn/core/utils/global.colors.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 5), () {
      Get.to(LoginView());
    });

    return Scaffold(
      backgroundColor: GlobalColor.mainColor,
      body: Center(
        child: Image.asset(
          'assets/logo/vehiloc-logo-splash.png',
          width: 200,
          height: 200,
        ),
      ),
    );
  }
}
