import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello/views/splash.view.dart';

void main(List<String> args) {
    runApp(const App());
}
class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowMaterialGrid: false,
      home: SplashView(),
    );
  }
}
