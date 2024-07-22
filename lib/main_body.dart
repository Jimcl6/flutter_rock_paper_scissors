import 'package:flutter/material.dart';
import 'package:rock_paper_scissors/players.dart';

class MainBody extends StatelessWidget {
  const MainBody({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.cyanAccent,
              Colors.purpleAccent,
              Colors.deepPurple.shade900
            ],
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
