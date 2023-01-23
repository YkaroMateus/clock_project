import 'dart:math';

import 'package:flutter/material.dart';

class SecondPointer extends StatefulWidget {
  const SecondPointer({Key? key}) : super(key: key);

  @override
  State<SecondPointer> createState() => _SecondPointerState();
}

class _SecondPointerState extends State<SecondPointer> with TickerProviderStateMixin {
  late AnimationController _controllerAnimation;

  @override
  void initState() {
    _controllerAnimation = AnimationController(vsync: this, duration: const Duration(seconds: 59))
      ..repeat(reverse: false);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final second = DateTime.now().second.toDouble();
    final angleSecond = (-pi * (second / -60)) * 2;
    final width = MediaQuery.of(context).size.width;

    return AnimatedBuilder(
      animation: Tween(
        begin: 0.0,
        end: 1.0,
      ).animate(_controllerAnimation),
      builder: (context, child) {
        return Transform.rotate(
          angle: _controllerAnimation.value * 2 * pi,
          child: child,
        );
      },
      child: RotatedBox(
        quarterTurns: 2,
        child: Transform.rotate(
          angle: angleSecond,
          child: Transform.translate(
            offset: const Offset(0, 34),
            child: Center(
              child: Container(
                margin: const EdgeInsets.only(top: 122),
                height: width * 0.18,
                width: 5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  color: const Color(0xFFe0e0e0),
                  boxShadow: [
                    const BoxShadow(
                      color: Color(0xFFBEBEBE),
                      offset: Offset(1, 2),
                      blurRadius: 1,
                      spreadRadius: 1,
                    ),
                    BoxShadow(
                      color: Colors.grey.shade50,
                      offset: const Offset(-1, -2),
                      blurRadius: 1,
                      spreadRadius: 1,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
