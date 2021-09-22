import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound(1);
                  },
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(0),
                    backgroundColor: Colors.blueGrey,
                  ),
                  child: null,
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound(2);
                  },
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(0),
                    backgroundColor: Colors.orange,
                  ),
                  child: null,
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound(3);
                  },
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(0),
                    backgroundColor: Colors.green,
                  ),
                  child: null,
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound(4);
                  },
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(0),
                    backgroundColor: Colors.blue,
                  ),
                  child: null,
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound(5);
                  },
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(0),
                    backgroundColor: Colors.red,
                  ),
                  child: null,
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound(6);
                  },
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(0),
                    backgroundColor: Colors.cyan,
                  ),
                  child: null,
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound(7);
                  },
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(0),
                    backgroundColor: Colors.purple,
                  ),
                  child: null,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
