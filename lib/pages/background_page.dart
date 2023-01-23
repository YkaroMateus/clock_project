import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../widgets/background_circular_itens.dart';
import 'clock_view.dart';

class BackgroundPage extends StatefulWidget {
  const BackgroundPage({
    super.key,
  });

  @override
  State<BackgroundPage> createState() => _BackgroundPageState();
}

class _BackgroundPageState extends State<BackgroundPage> with TickerProviderStateMixin {
  late AnimationController _controllerAnimation;

  @override
  void initState() {
    _controllerAnimation = AnimationController(vsync: this, duration: const Duration(seconds: 100))
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
              child: const BackgroundCircularItens(),
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
