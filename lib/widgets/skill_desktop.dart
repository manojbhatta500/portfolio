import 'package:flutter/material.dart';
import 'package:portfolio/constants/skills.dart';
import 'package:portfolio/constants/constans.dart';

class SkillDesktop extends StatelessWidget {
  const SkillDesktop({
    super.key,
    required this.width,
  });

  final double width;

  static GlobalKey skilldesktop = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      key: skilldesktop,
      child: Column(
        children: [
          const Text(
            'Skills',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          const SizedBox(
            height: 30,
          ),
          Wrap(children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 450),
                  child: Wrap(
                    children: [
                      for (int i = 0; i < skills.length; i++)
                        Container(
                          height: 50,
                          width: 0.3 * width,
                          margin: const EdgeInsets.all(5),
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          decoration: BoxDecoration(
                              color: customcolors.woddencolor,
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(skills[i]['img']),
                              Expanded(
                                child: Text(
                                  skills[i]['title'],
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ],
                          ),
                        )
                    ],
                  ),
                ),
                Flexible(
                  child: ConstrainedBox(
                    constraints:
                        const BoxConstraints(maxWidth: 500, maxHeight: 250),
                    child: Wrap(
                      spacing: 10,
                      runSpacing: 10,
                      children: [
                        for (int i = 0; i < skilldetails.length; i++)
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 16),
                            child: Chip(
                              label: Text(skilldetails[i]['title']),
                              avatar: Image.asset(skilldetails[i]['img']),
                            ),
                          )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ]),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
