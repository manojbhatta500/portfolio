import 'package:flutter/material.dart';
import 'package:portfolio/pages/splashscreen/widget/animated_image_container.dart';
import 'package:portfolio/services.dart';

class Maindesktop extends StatelessWidget {
  Maindesktop({
    super.key,
    required this.width,
  });

  final double width;

  static GlobalKey maindesktopkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    void scrolltocontactsdesktop(GlobalKey key) {
      Scrollable.ensureVisible(
        key.currentContext!,
        duration: const Duration(milliseconds: 500),
        curve: Curves.ease,
      ); //
    }

    return Container(
      key: maindesktopkey,
      padding: const EdgeInsets.symmetric(vertical: 50),
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/back.jpeg'),
        fit: BoxFit.cover,
      )),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Hello \nI am manoj bhatta\nA flutter developer',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        onPressed: () =>
                            scrolltocontactsdesktop(mobilenavigator[4]),
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor:
                              Colors.lightBlueAccent, // Text and icon color
                        ),
                        child: const Text(
                          'Get In Touch',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ))
                  ],
                ),
                CircleAvatar(
                  backgroundImage: const AssetImage('assets/cover.jpg'),
                  minRadius: width / 7,
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
