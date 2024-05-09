// ignore_for_file: unused_element, unused_field

import 'dart:async';
import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flappy_bird_game/ads/ad_helper.dart';
import 'package:flappy_bird_game/game/flappy_bird_game.dart';

class AdComponent extends SpriteComponent with HasGameRef<FlappyBirdGame> {
  AdComponent();

  @override
  Future<void> onLoad() async {
    MyBannerAdWidget;
    sprite = Sprite(MyBannerAdWidget as Image);
  }
}
