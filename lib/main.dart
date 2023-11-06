import 'package:flutter/material.dart';
import 'package:krazy_klean_app/screens/global_flushes_screen.dart';
import 'package:krazy_klean_app/screens/our_mission_screen.dart';
import 'package:krazy_klean_app/screens/splash_screen.dart';
import 'package:krazy_klean_app/screens/statistics_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
