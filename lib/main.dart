import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  void playMusic(int soundNo) {
    final player = AudioCache();
    player.play('note$soundNo.wav');
  }

  Expanded display({Color color, int soundNo}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playMusic(soundNo);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              display(color: Colors.red, soundNo: 1),
              display(color: Colors.orange, soundNo: 2),
              display(color: Colors.yellowAccent, soundNo: 3),
              display(color: Colors.green, soundNo: 4),
              display(color: Colors.teal, soundNo: 5),
              display(color: Colors.blue, soundNo: 6),
              display(color: Colors.purple, soundNo: 7),
            ],
          ),
        ),
      ),
    );
  }
}
