import 'package:flutter/material.dart';

import 'pages/background_page.dart';

class ClockMaterialApp extends StatelessWidget {
  const ClockMaterialApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clock Project',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFe0e0e0),
      ),
      debugShowCheckedModeBanner: false,
      home: const BackgroundPage(),
    );
  }
}
