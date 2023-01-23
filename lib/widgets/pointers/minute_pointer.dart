import 'dart:math';

import 'package:flutter/material.dart';

class MinutePointer extends StatefulWidget {
  const MinutePointer({Key? key}) : super(key: key);

  @override
  State<MinutePointer> createState() => _MinutePointerState();
}

class _MinutePointerState extends State<MinutePointer> with TickerProviderStateMixin {
  late AnimationController _controllerAnimation;

  @override
  void initState() {
    _controllerAnimation = AnimationController(
        vsync: this,
        duration: const Duration(
          minutes: 59,
          seconds: 59,
        ))
      ..repeat(reverse: false);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final minute = DateTime.now().minute.toDouble();
    final angleMinute = (-pi * (minute / -60)) * 2;
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
          angle: angleMinute,
          child: Transform.translate(
            offset: const Offset(0, 30),
            child: Center(
              child: Container(
                margin: const EdgeInsets.only(top: 65),
                height: width * 0.13,
                width: 10,
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
