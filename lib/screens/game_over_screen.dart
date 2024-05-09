import 'package:flappy_bird_game/game/assets.dart';
import 'package:flappy_bird_game/game/flappy_bird_game.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class GameOverScreen extends StatelessWidget {
  final FlappyBirdGame game;

  const GameOverScreen({Key? key, required this.game}) : super(key: key);

  @override
  Widget build(BuildContext context) => Material(
        color: Colors.black38,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Score: ${game.bird.score}',
                style: const TextStyle(
                  fontSize: 60,
                  color: Colors.white,
                  fontFamily: 'Game',
                ),
              ),
              const SizedBox(height: 20),
              Image.asset(Assets.gameOver),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                      onTap: onRestart, child: Image.asset(Assets.okButton)),
                  GestureDetector(
                      onTap: onShare, child: Image.asset(Assets.shareButton)),
                ],
              ),
            ],
          ),
        ),
      );

  void onRestart() {
    game.bird.reset();

    game.overlays.remove('gameOver');

    game.overlays.add('mainMenu');
    game.overlays.add('firstScreen');

    game.pauseEngine();
  }

  void onShare() {
    String myScore = game.bird.score.toString();
    Share.share(myScore);
  }
}
