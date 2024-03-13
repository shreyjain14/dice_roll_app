import 'package:first_app/dice_roll.dart';
import 'package:flutter/material.dart';

var startAlignment = Alignment.topRight;
var endAlignment = Alignment.bottomLeft;

class GradientContainer extends StatelessWidget {
  const GradientContainer(
    this.colorIn,
    this.colorOut, {
    super.key,
  });

  final Color colorOut;
  final Color colorIn;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            colorIn,
            colorOut,
            colorOut,
            colorIn,
          ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoll(),
      ),
    );
  }
}
