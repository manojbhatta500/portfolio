import 'package:flutter/material.dart';

import 'package:portfolio/pages/splashscreen/page/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Manoj bhatta',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: SplashScreen(),
    );
  }
}
