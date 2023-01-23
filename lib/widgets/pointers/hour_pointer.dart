import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HourPointer extends StatefulWidget {
  const HourPointer({Key? key}) : super(key: key);

  @override
  State<HourPointer> createState() => _HourPointerState();
}

class _HourPointerState extends State<HourPointer> with TickerProviderStateMixin {
  late AnimationController _controllerAnimation;

  @override
  void initState() {
    _controllerAnimation = AnimationController(
        vsync: this,
        duration: const Duration(
          hours: 23,
          minutes: 59,
          seconds: 59,
        ))
      ..repeat(reverse: false);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final hour = double.parse((DateFormat('hh').format(DateTime.now())));
    final angle = (-pi * (hour / -12)) * 2;
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
          angle: angle,
          child: Transform.translate(
            offset: const Offset(0, 20),
            child: Center(
              child: Container(
                margin: const EdgeInsets.only(top: 30),
                height: width * 0.09,
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
