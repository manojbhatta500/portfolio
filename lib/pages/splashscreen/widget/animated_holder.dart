import 'package:flutter/material.dart';
import 'dart:js' as js;

class AnimatedHolder extends StatefulWidget {
  const AnimatedHolder(
      {super.key,
      required this.title,
      required this.link,
      required this.image});

  final String title;
  final String link;
  final String image;

  @override
  State<AnimatedHolder> createState() => _AnimatedHolderState();
}

class _AnimatedHolderState extends State<AnimatedHolder>
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
          child: InkWell(
            onTap: () {
              js.context.callMethod("open", [widget.link]);
            },
            child: Container(
              height: 100,
              width: 200,
              padding: const EdgeInsets.all(30 / 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: const LinearGradient(colors: [
                  Colors.pinkAccent,
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
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        widget.image,
                        width: 30,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(widget.title),
                    ],
                  )),
            ),
          ),
        );
      },
    );
  }
}
