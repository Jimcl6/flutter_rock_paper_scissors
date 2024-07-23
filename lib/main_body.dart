import 'package:flutter/material.dart';
import 'package:rock_paper_scissors/players.dart';

class MainBody extends StatelessWidget {
  MainBody({super.key});

  var colorList = [
    Colors.cyanAccent,
    Colors.purpleAccent,
    Colors.deepPurple.shade900
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: colorList,
          ),
        ),
        child: const Scaffold(
          backgroundColor: Colors.transparent,
          body: PlayerScreen(),
        ),
      ),
    );
  }
}
