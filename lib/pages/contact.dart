import 'package:flutter/material.dart';
import 'package:portfolio/pages/splashscreen/widget/animated_holder.dart';

class Contacts extends StatelessWidget {
  const Contacts({super.key});

  static GlobalKey contactkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      key: contactkey,
      child: const Column(
        children: [
          Text(
            'Contact Me',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          SizedBox(
            height: 50,
          ),
          Wrap(
            runAlignment: WrapAlignment.center,
            runSpacing: 50,
            spacing: 50,
            children: [
              AnimatedHolder(
                  title: "Github",
                  image: 'assets/github.png',
                  link: 'https://github.com/manojbhatta500'),
              AnimatedHolder(
                  title: "Linkedin",
                  image: 'assets/linkedin.png',
                  link: 'https://www.linkedin.com/in/manoj-bhatta-5071a6199/'),
              AnimatedHolder(
                  title: "Instagram",
                  image: 'assets/insta.jpeg',
                  link: 'https://www.instagram.com/manojbhatta500/z'),
              AnimatedHolder(
                  title: "facebook",
                  image: 'assets/facebook.png',
                  link: 'https://www.facebook.com/manoj.bhatta.121398/'),
            ],
          ),
          SizedBox(
            height: 100,
          )
        ],
      ),
    );
  }
}
