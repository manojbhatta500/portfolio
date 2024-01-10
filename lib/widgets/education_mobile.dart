import 'package:flutter/material.dart';
import 'package:portfolio/constants/constans.dart';
import 'package:portfolio/models/education_item.dart';
import 'package:timelines/timelines.dart';

class EducationMobile extends StatefulWidget {
  const EducationMobile({super.key});

  static GlobalKey educationkey = GlobalKey();

  @override
  State<EducationMobile> createState() => _EducationMobileState();
}

class _EducationMobileState extends State<EducationMobile> {
  List<EducationItem> educationItems = [
    EducationItem(
      startDate: '2016 - March',
      title: 'Completed 10th',
      description: 'Completed 10th from Nepal Police School Dhangadi,Nepal.',
    ),
    EducationItem(
      startDate: '2016 - 2018',
      title: 'Completed 12th',
      description:
          'Completed 12th from Little Budda Academy  Mahendranagar,Nepal.',
    ),
    EducationItem(
      startDate: '2020 - 2023',
      title: 'Completed Bachelor of Computer Application (BCA)',
      description:
          'Completed BCA from IK Gujral Punjab Technical University Punjab,India.',
    ),
  ];
  bool ishover = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: EducationMobile.educationkey,
      decoration: const BoxDecoration(color: customcolors.greybgcolor),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        children: [
          const Text(
            'Education',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          Timeline.tileBuilder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            builder: TimelineTileBuilder.fromStyle(
              contentsAlign: ContentsAlign.alternating,
              contentsBuilder: (context, index) => InkWell(
                onTap: () {},
                onHover: (val) {
                  setState(() {
                    ishover = val;
                  });
                },
                child: Card(
                  color: ishover ? Colors.indigo : Colors.white,
                  elevation: ishover ? 50 : 5,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            educationItems[index].startDate,
                            style: TextStyle(
                              fontSize: 14,
                              color: ishover ? Colors.white : Colors.black,
                            ),
                          ),
                          Text(
                            educationItems[index].title,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: ishover ? Colors.white : Colors.black),
                          ),
                          Text(
                            educationItems[index].description,
                            style: TextStyle(
                                fontSize: 12,
                                color: ishover ? Colors.white : Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              itemCount: educationItems.length,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
