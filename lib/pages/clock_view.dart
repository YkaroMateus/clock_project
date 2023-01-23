import 'package:flutter/material.dart';

import '../widgets/pointers/hour_pointer.dart';
import '../widgets/pointers/minute_pointer.dart';
import '../widgets/pointers/second_pointer.dart';
import '../widgets/timer_text_indicator.dart';

class ClockView extends StatefulWidget {
  const ClockView({
    super.key,
  });

  @override
  State<ClockView> createState() => _ClockViewState();
}

class _ClockViewState extends State<ClockView> {
  @override
  Widget build(BuildContext context) {
    final double withScreen = MediaQuery.of(context).size.width;
    return StreamBuilder(
        stream: Stream.periodic(
          const Duration(seconds: 1),
        ),
        builder: (context, snapshot) {
          return SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Container(
                    margin: const EdgeInsets.all(20),
                    width: withScreen * 0.38,
                    height: withScreen * 0.38,
                    decoration: BoxDecoration(
                      color: const Color(0xFFe0e0e0),
                      shape: BoxShape.circle,
                      boxShadow: [
                        const BoxShadow(
                          color: Color(0xFFBEBEBE),
                          offset: Offset(10, 10),
                          blurRadius: 18,
                          spreadRadius: 1,
                        ),
                        BoxShadow(
                          color: Colors.grey.shade50,
                          offset: const Offset(-10, -10),
                          blurRadius: 18,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFFe0e0e0),
                          shape: BoxShape.circle,
                          boxShadow: [
                            const BoxShadow(
                              color: Color(0xFFBEBEBE),
                              offset: Offset(10, 10),
                              blurRadius: 18,
                              spreadRadius: 1,
                            ),
                            BoxShadow(
                              color: Colors.grey.shade50,
                              offset: const Offset(-10, -10),
                              blurRadius: 18,
                              spreadRadius: 1,
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                const SecondPointer(),
                                const MinutePointer(),
                                const HourPointer(),
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFe0e0e0),
                                    shape: BoxShape.circle,
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
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TimerTextIndicator(
                        timer:
                            '${DateTime.now().hour < 10 ? '0${DateTime.now().hour}' : DateTime.now().hour} :',
                      ),
                      const SizedBox(width: 10),
                      TimerTextIndicator(
                        timer:
                            '${DateTime.now().minute < 10 ? '0${DateTime.now().minute}' : DateTime.now().minute} :',
                      ),
                      const SizedBox(width: 10),
                      TimerTextIndicator(
                        timer:
                            '${DateTime.now().second < 10 ? '0${DateTime.now().second}' : DateTime.now().second}',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }
}
