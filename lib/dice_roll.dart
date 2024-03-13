import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoll extends StatefulWidget {
  const DiceRoll({
    super.key,
  });

  @override
  State<DiceRoll> createState() {
    return _DiceRollState();
  }
}

class _DiceRollState extends State<DiceRoll> {
  List<String> imagePaths = [
    "assets/images/dice-1.png",
    "assets/images/dice-2.png",
    "assets/images/dice-3.png",
    "assets/images/dice-4.png",
    "assets/images/dice-5.png",
    "assets/images/dice-6.png",
  ];

  var randomImg;

  void rollDice() {
    randomImg = imagePaths[randomizer.nextInt(imagePaths.length)];
  }

  @override
  Widget build(context) {
    rollDice();

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          randomImg,
        ),
        const SizedBox(
          height: 25,
        ),
        TextButton(
          onPressed: () {
            setState(() {
              randomImg = imagePaths[randomizer.nextInt(6)];
            });
          },
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
          ),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
