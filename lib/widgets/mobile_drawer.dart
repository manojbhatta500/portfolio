import 'package:flutter/material.dart';
import 'package:portfolio/constants/constans.dart';
import 'package:portfolio/constants/nav_items.dart';

class Mobiledrawer extends StatelessWidget {
  const Mobiledrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: customcolors.woddencolor,
      child: ListView(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.close,
                    color: Colors.black,
                  )),
            ),
          ),
          for (int i = 0; i < navicons.length; i++)
            ListTile(
              leading: Icon(
                navicons[i],
                color: Colors.black,
                size: 25,
              ),
              onTap: () {},
              contentPadding: const EdgeInsets.symmetric(horizontal: 20),
              title: Text(
                navitems[i],
                style: const TextStyle(color: Colors.black),
              ),
            )
        ],
      ),
    );
  }
}
