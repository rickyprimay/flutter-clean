import 'package:flutter/material.dart';
import 'package:flutter_learn/splash.view.dart';
import 'package:get/get.dart';

void main(){
  runApp(const App());
}

class App extends StatelessWidget{
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: SplashView(),
    );
  }
}

