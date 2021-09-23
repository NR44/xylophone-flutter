import 'dart:math';

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Widget buildKey(int soundNum, Color color) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(soundNum);
        },
        style: TextButton.styleFrom(
          padding: const EdgeInsets.all(0),
          backgroundColor: color,
        ),
        child: null,
      ),
    );
  }

  List<Color> randomColors() {
    Random random = Random();
    return List.generate(7, (int i) =>
        Color((random.nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0));
  }

  List<Widget> keyGenerator() {
    List colors = randomColors();
    return List.generate(7, (int i) => buildKey(i + 1, colors[i]));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: keyGenerator(),
          ),
        ),
      ),
    );
  }
}
