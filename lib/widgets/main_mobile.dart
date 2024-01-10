import 'package:flutter/material.dart';
import 'package:portfolio/services.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({
    super.key,
    required this.width,
  });

  final double width;
  static GlobalKey mainmobilekey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    void scrolltocontacts(GlobalKey key) {
      Scrollable.ensureVisible(
        key.currentContext!,
        duration: const Duration(milliseconds: 500),
        curve: Curves.ease,
      ); //
    }

    return Container(
      width: width,
      key: mainmobilekey,
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/back.jpeg'),
        fit: BoxFit.cover, // Adjust as needed
      )),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                CircleAvatar(
                  backgroundImage: const AssetImage('assets/mobile.jpg'),
                  minRadius: width / 3.8,
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  'Hello \nI am manoj bhatta\nA flutter developer',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w100),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () => scrolltocontacts(mobilenavigator[4]),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor:
                          Colors.lightBlueAccent, // Text and icon color
                    ),
                    child: const Text(
                      'Get In Touch',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w100),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
