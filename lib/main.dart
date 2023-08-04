import 'package:flutter/material.dart';

import 'package:quran_app/page/spalsh_screen.dart';
import 'package:responsive_framework/responsive_framework.dart';

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
        builder: (context, child) =>
            ResponsiveWrapper.builder(child, defaultScale: true),
        title: 'Flutter Demo',
        home: const SplashScreen());
  }
}
