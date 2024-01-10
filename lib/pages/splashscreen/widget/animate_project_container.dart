import 'package:flutter/material.dart';
import 'package:portfolio/constants/constans.dart';

import 'dart:js' as js;

class AnimateProjectContainer extends StatefulWidget {
  const AnimateProjectContainer(
      {super.key,
      required this.imageholder,
      required this.title,
      required this.subtitle,
      this.githublink});

  final String imageholder;
  final String title;
  final String subtitle;

  final String? githublink;

  @override
  State<AnimateProjectContainer> createState() =>
      _AnimateProjectContainerState();
}

class _AnimateProjectContainerState extends State<AnimateProjectContainer>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    )..repeat(reverse: true); // Repeat the animation loop
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        final value = _controller.value;
        return Transform.translate(
          offset: Offset(0, 2 * value), // Move the container up and down
          child: Container(
            height: 400,
            width: 300,
            padding: const EdgeInsets.all(30 / 4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: const LinearGradient(colors: [
                Colors.red,
                Colors.blue,
              ]),
              boxShadow: const [
                BoxShadow(
                  color: Colors.pink,
                  offset: Offset(-2, 0),
                  blurRadius: 20,
                ),
                BoxShadow(
                  color: Colors.blue,
                  offset: Offset(2, 0),
                  blurRadius: 20,
                ),
              ],
            ),
            child: Container(
              clipBehavior: Clip.antiAlias,
              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              decoration: BoxDecoration(
                  color: customcolors.greybgcolor,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image(
                    image: AssetImage(widget.imageholder),
                    height: 200,
                    width: double.infinity,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    child: Column(
                      children: [
                        Text(
                          widget.title,
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w900),
                        ),
                        Text(
                          widget.subtitle,
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: Row(
                      children: [
                        const Text(
                          'Available on:',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                        const Spacer(),
                        if (widget.githublink != null)
                          InkWell(
                              onTap: () {
                                js.context
                                    .callMethod("open", [widget.githublink]);
                              },
                              child: Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        color: customcolors.woddencolor,
                                        width: 2)),
                                child: const Center(
                                  child: Text('GitHub'),
                                ),
                              )),
                        if (widget.githublink == null)
                          InkWell(
                              onTap: () {
                                js.context.callMethod("open", [
                                  'https://www.upwork.com/freelancers/~0158f1adc960d45f79'
                                ]);
                              },
                              child: Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                        color: customcolors.woddencolor,
                                        width: 2)),
                                child: const Center(
                                  child: Text('Upwork'),
                                ),
                              )),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
