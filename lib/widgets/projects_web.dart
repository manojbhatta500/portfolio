import 'package:flutter/material.dart';
import 'package:portfolio/constants/constans.dart';
import 'package:portfolio/models/projectdetail.dart';

import 'dart:js' as js;

import 'package:portfolio/pages/splashscreen/widget/animate_project_container.dart';

class Projectweb extends StatelessWidget {
  Projectweb({super.key});

  static GlobalKey projectkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Container(
      key: projectkey,
      width: double.infinity,
      margin: EdgeInsets.only(top: 10),
      decoration: const BoxDecoration(color: customcolors.greybgcolor),
      child: Column(
        children: [
          const Text(
            'Projects',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          SizedBox(
            height: 100,
          ),
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 100,
            runSpacing: 100,
            runAlignment: WrapAlignment.spaceEvenly,
            direction: Axis.horizontal,
            children: [
              for (var project in projectlist)
                AnimateProjectContainer(
                  imageholder: project.image,
                  title: project.title,
                  subtitle: project.subtitle,
                  githublink: project.githublink,
                ),
            ],
          ),
          SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}
