import 'dart:async';

import 'package:flutter/material.dart';
import 'package:portfolio/constants/constans.dart';
import 'package:portfolio/exportedmain.dart';
import 'package:portfolio/pages/splashscreen/widget/animated_image_container.dart';
import 'package:portfolio/pages/splashscreen/widget/animated_loading_text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => expo(),
          ));
    });
  }

  bool ismobile = false;
  @override
  Widget build(BuildContext context) {
    ismobile = MediaQuery.of(context).size.width > 600 ? false : true;

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ismobile
                ? AnimatedImageContainer(
                    width: 0.4 * width,
                    height: 0.4 * height,
                  )
                : AnimatedImageContainer(
                    width: 0.5 * width,
                    height: 0.5 * height,
                  ),
            SizedBox(
              height: 30,
            ),
            AnimatedLoadingText(),
          ],
        ),
      ),
    );
  }
}
