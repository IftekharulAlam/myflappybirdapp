// ignore_for_file: unused_field

import 'package:flappy_bird_game/game/assets.dart';
import 'package:flappy_bird_game/game/flappy_bird_game.dart';
import 'package:flutter/material.dart';

class ScoreScreenPage extends StatelessWidget {
  final FlappyBirdGame game;
  static const String id = 'firstScreen';
  const ScoreScreenPage({
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
            Image.asset(Assets.message),
            Row(
              children: [
                ElevatedButton(
                    onPressed: () {
                      game.overlays.remove('firstScreen');
                    },
                    child: const Text("Start")),
                ElevatedButton(
                    onPressed: () {
                      game.overlays.remove('firstScreen');
                    },
                    child: const Text("Score")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
