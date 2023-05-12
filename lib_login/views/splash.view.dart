import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello/utils/global.colors.dart';
import 'package:hello/views/login.view.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 0), () { 
      Get.to(LoginView());
    });
    return Scaffold(
      backgroundColor: GlobalColors.mainColor,
      body: Center(
        child: Text(
          'Logo',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}