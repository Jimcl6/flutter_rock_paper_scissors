import 'package:flutter/material.dart';
import 'dart:math';
import 'package:google_fonts/google_fonts.dart';

class PlayerScreen extends StatefulWidget {
  const PlayerScreen({super.key});

  @override
  State<PlayerScreen> createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {
  int playerOne = 1;
  int playerTwo = 1;

  String score = "Start!";

  void decisionMaker() {
    setState(() {
      var random = Random();
      var player_1 = random.nextInt(3) + 1;
      var player_2 = random.nextInt(3) + 1;

      playerOne = player_1;
      playerTwo = player_2;

      if ((playerOne == 1 && playerTwo == 1) ||
          (playerOne == 2 && playerTwo == 2) ||
          (playerOne == 3 && playerTwo == 3)) {
        score = "It's a Draw!";
      } else if ((playerOne == 1 && playerTwo == 2) ||
          (playerOne == 2 && playerTwo == 3) ||
          (playerOne == 3 && playerTwo == 1)) {
        score = "Player One Wins!";
      } else {
        score = "Player Two Wins!";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            score,
            style: GoogleFonts.pacifico(
                textStyle: const TextStyle(color: Colors.white, fontSize: 40)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: Image.asset("images/image_$playerOne.png")),
              Expanded(child: Image.asset("images/image_$playerTwo.png")),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              decisionMaker();
            },
            child: Text(
              "Play Game!",
              style: GoogleFonts.kalnia(
                  textStyle: TextStyle(color: Colors.purple.shade800),
                  fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}
