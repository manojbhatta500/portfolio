import 'package:flutter/material.dart';
import 'package:portfolio/constants/constans.dart';

class AnimatedLoadingText extends StatelessWidget {
  AnimatedLoadingText({super.key});

  var defaultPadding = 20.0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: defaultPadding * 5,
      child: TweenAnimationBuilder(
        duration: const Duration(seconds: 2),
        builder: (context, value, child) => Column(
          children: [
            LinearProgressIndicator(
              backgroundColor: Colors.black,
              color: Colors.deepPurpleAccent,
              value: value,
            ),
            SizedBox(
              height: defaultPadding / 2,
            ),
            Text(
              '${(value * 100).toInt()}%',
              style: const TextStyle(
                  color: customcolors.woddencolor,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                        color: Colors.pink,
                        blurRadius: 10,
                        offset: Offset(2, 2)),
                    Shadow(
                        color: Colors.blue,
                        blurRadius: 10,
                        offset: Offset(-2, -2)),
                  ]),
            )
          ],
        ),
        tween: Tween(begin: 0.0, end: 1.0),
      ),
    );
  }
}
