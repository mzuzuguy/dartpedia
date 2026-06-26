import  'package:flutter/material.dart';
import 'package:path/path.dart';
import 'game.dart';

class Tile extends StatelessWidget {
  const Tile(this.letter, this.hitType, {super.key});

  final String letter;
  final HitType hitType;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        color: switch (hitType) {
          HitType.hit => Colors.green,
          HitType.partial => Colors.yellow,
          HitType.miss => Colors.grey,
          _ => Colors.white,
        },
        // TODO: add children
      ),
      child: Center(
        child: Text(
          letter.toLowerCase(),
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }
}
