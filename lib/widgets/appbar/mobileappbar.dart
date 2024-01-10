import 'package:flutter/material.dart';
import 'package:portfolio/constants/constans.dart';
import 'package:portfolio/constants/nav_items.dart';
import 'package:portfolio/pages/splashscreen/widget/animated_image_container.dart';
import 'package:portfolio/services.dart';
import 'package:portfolio/widgets/appbar/appbar_button.dart';

void _scrollToWidget(GlobalKey key) {
  Scrollable.ensureVisible(key.currentContext!,
      duration: const Duration(milliseconds: 500), curve: Curves.ease);
}

class MobileAppbar extends StatelessWidget {
  const MobileAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: AppBar(
        elevation: 100,
        backgroundColor: customcolors.woddencolor,
        title: const AnimatedImageContainer(
          width: 50,
          height: 50,
        ),
        actions: [
          for (int i = 0; i < navitems.length; i++)
            AppbarButton(
              title: navitems[i],
              customfunction: () => _scrollToWidget(desktopnavigator[i]),
            )
        ],
      ),
    );
  }
}
