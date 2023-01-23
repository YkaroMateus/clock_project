import 'dart:math' as math;

import 'package:flutter/material.dart';

import 'clock_view.dart';

class BackgroundPage extends StatefulWidget {

  const BackgroundPage({super.key,});

  @override
  State<BackgroundPage> createState() => _BackgroundPageState();
}

class _BackgroundPageState extends State<BackgroundPage> with TickerProviderStateMixin {
  late AnimationController _controllerAnimation;

  @override
  void initState() {
    _controllerAnimation = AnimationController(vsync: this, duration: const Duration(seconds: 40))
      ..repeat(reverse: false);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.9,
            child: AnimatedBuilder(
              animation: Tween(
                begin: 0.0,
                end: 1.0,
              ).animate(_controllerAnimation),
              child: Stack(alignment: Alignment.center, children: const [
                Positioned(
                  bottom: 10,
                  right: 500,
                  child: CircleAvatar(
                    maxRadius: 20,
                    backgroundColor: Colors.indigo,
                  ),
                ),
                Positioned(
                  bottom: 400,
                  left: 100,
                  child: CircleAvatar(
                    maxRadius: 20,
                    backgroundColor: Colors.indigo,
                  ),
                ),
                Positioned(
                  top: 100,
                  left: 0,
                  right: 0,
                  child: CircleAvatar(
                    maxRadius: 20,
                    backgroundColor: Colors.indigo,
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 100,
                  child: CircleAvatar(
                    maxRadius: 20,
                    backgroundColor: Colors.indigo,
                  ),
                ),
                Positioned(
                  top: 600,
                  left: 0,
                  right: 200,
                  child: CircleAvatar(
                    maxRadius: 20,
                    backgroundColor: Colors.indigo,
                  ),
                ),
                Positioned(
                  top: 500,
                  left: 200,
                  child: CircleAvatar(
                    maxRadius: 20,
                    backgroundColor: Colors.indigo,
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 20,
                  child: CircleAvatar(
                    maxRadius: 20,
                    backgroundColor: Colors.indigo,
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  right: 400,
                  child: CircleAvatar(
                    maxRadius: 20,
                    backgroundColor: Colors.indigo,
                  ),
                ),
                Positioned(
                  right: 10,
                  child: CircleAvatar(
                    maxRadius: 20,
                    backgroundColor: Colors.indigo,
                  ),
                ),
                Positioned(
                  right: 10,
                  child: CircleAvatar(
                    maxRadius: 20,
                    backgroundColor: Colors.indigo,
                  ),
                ),
                Positioned(
                  bottom: -500,
                  right: 0,
                  left: 0,
                  child: CircleAvatar(
                    maxRadius: 20,
                    backgroundColor: Colors.indigo,
                  ),
                ),
              ]),
              builder: (context, child) {
                return Transform.rotate(
                  angle: _controllerAnimation.value * -2 * math.pi,
                  child: child,
                );
              },
            ),
          ),
          const ClockView()
        ],
      ),
    );
  }
}
