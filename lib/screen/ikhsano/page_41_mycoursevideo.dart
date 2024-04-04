import 'package:flutter/material.dart';

class MyCourseVideo extends StatelessWidget {
  const MyCourseVideo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      body: Center(
        child: Image.asset(
          'assets/video1.png',
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        ),
      ),
    );
  }
}
