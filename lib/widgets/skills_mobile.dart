import 'package:flutter/material.dart';
import 'package:portfolio/constants/skills.dart';
import 'package:portfolio/constants/constans.dart';

class SkillMobile extends StatelessWidget {
  const SkillMobile({
    super.key,
  });

  static GlobalKey mobileskillkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Column(
      key: mobileskillkey,
      children: [
        const Text(
          'Skills',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
        for (int i = 0; i < skills.length; i++)
          Container(
            width: double.maxFinite,
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: customcolors.woddencolor),
            child: ListTile(
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              leading: Image.asset(
                skills[i]['img'],
                width: 26,
              ),
              title: Text(
                skills[i]['title'],
                style: const TextStyle(color: Colors.black),
              ),
            ),
          ),

        const SizedBox(
          height: 50,
        ),

        //skills

        Wrap(
          spacing: 10,
          runSpacing: 10,
          alignment: WrapAlignment.center,
          children: [
            for (int i = 0; i < skilldetails.length; i++)
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 16),
                child: Chip(
                  label: Text(skilldetails[i]['title']),
                  avatar: Image.asset(skilldetails[i]['img']),
                  // avatar: skilldetails[i]['img'],
                ),
              )
          ],
        )
      ],
    );
  }
}
