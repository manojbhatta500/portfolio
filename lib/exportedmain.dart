import 'package:flutter/material.dart';
import 'package:portfolio/constants/constans.dart';
import 'package:portfolio/constants/nav_items.dart';
import 'package:portfolio/pages/contact.dart';
import 'package:portfolio/pages/splashscreen/widget/animated_image_container.dart';
import 'package:portfolio/services.dart';
import 'package:portfolio/widgets/appbar/mobileappbar.dart';
import 'package:portfolio/widgets/education_mobile.dart';
import 'package:portfolio/widgets/main_desktop.dart';
import 'package:portfolio/widgets/main_mobile.dart';
import 'package:portfolio/widgets/projects_web.dart';
import 'package:portfolio/widgets/skill_desktop.dart';
import 'package:portfolio/widgets/skills_mobile.dart';

class expo extends StatelessWidget {
  expo({super.key});

  bool ismobile = false;

  @override
  Widget build(BuildContext context) {
    ismobile = MediaQuery.of(context).size.width > 600 ? false : true;

    double width = MediaQuery.of(context).size.width;

    void scrolltomobile(GlobalKey key) {
      Scrollable.ensureVisible(
        key.currentContext!,
        duration: const Duration(milliseconds: 500),
        curve: Curves.ease,
      ).then((value) => Navigator.pop(context)); //
    }

    return Scaffold(
        appBar: ismobile
            ? AppBar(
                title: const AnimatedImageContainer(
                  width: 30,
                  height: 30,
                ),
                backgroundColor: customcolors.greybgcolor,
              )
            : const PreferredSize(
                preferredSize: Size.fromHeight(kToolbarHeight),
                child: MobileAppbar()),
        endDrawer: ismobile
            ? Drawer(
                child: ListView.builder(
                    itemCount: navicons.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () => scrolltomobile(mobilenavigator[index]),
                        child: ListTile(
                          leading: Icon(navicons[index]),
                          title: Text(navitems[index]),
                        ),
                      );
                    }))
            : null,
        body: SingleChildScrollView(
          child: Column(
            children: [
              ismobile
                  ? MainMobile(
                      width: width,
                    )
                  : Maindesktop(width: width),
              ismobile ? const SkillMobile() : SkillDesktop(width: width),
              const SizedBox(
                height: 30,
              ),
              const Projectweb(),
              const EducationMobile(),
              const Contacts()
            ],
          ),
        ));
  }
}
