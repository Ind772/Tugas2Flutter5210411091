import 'package:flutter/material.dart';
import 'package:tugas_flutter_5210411091/state_util.dart';
import 'package:tugas_flutter_5210411091/core.dart';
import 'screens/splash_screen.dart';
import 'theme/custom_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: Get.navigatorKey, // Move navigatorKey here
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: CustomColor.primaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const SplashScreen(),
    );
  }
}
