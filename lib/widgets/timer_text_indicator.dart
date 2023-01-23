import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TimerTextIndicator extends StatelessWidget {
  final String timer;

  final double? timerfontSize;

  const TimerTextIndicator({
    required this.timer,
    this.timerfontSize,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      timer,
      style: GoogleFonts.secularOne(
        color: const Color(0xFFe0e0e0),
        fontSize: timerfontSize ?? 60,
        shadows: [
          const BoxShadow(
            color: Color(0xFFBEBEBE),
            offset: Offset(2, 3),
            blurRadius: 2,
            spreadRadius: 1,
          ),
          BoxShadow(
            color: Colors.grey.shade50,
            offset: const Offset(-2, -3),
            blurRadius: 2,
            spreadRadius: 1,
          ),
        ],
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
