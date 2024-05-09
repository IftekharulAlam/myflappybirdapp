// ignore_for_file: unused_field

import 'package:flappy_bird_game/game/assets.dart';
import 'package:flappy_bird_game/game/flappy_bird_game.dart';
import 'package:flutter/material.dart';

class FirstScreenPage extends StatelessWidget {
  final FlappyBirdGame game;
  static const String id = 'firstScreen';
  const FirstScreenPage({
    Key? key,
    required this.game,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    game.pauseEngine();
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.menu),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(Assets.flappy_bird_name_with_bird),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                    onTap: () {
                      game.overlays.remove('firstScreen');
                    },
                    child: Image.asset(Assets.startButton)),
                GestureDetector(
                    onTap: () {
                      game.overlays.remove('firstScreen');
                    },
                    child: Image.asset(Assets.scoreButton)),
              
              ],
            )
          ],
        ),
      ),
    );
  }
}
