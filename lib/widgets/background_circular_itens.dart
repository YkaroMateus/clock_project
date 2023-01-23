import 'package:flutter/material.dart';

class BackgroundCircularItens extends StatelessWidget {
  const BackgroundCircularItens({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: const [
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
    ]);
  }
}
