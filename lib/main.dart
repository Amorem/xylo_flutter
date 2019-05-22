import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int musicNote) {
    final player = AudioCache();
    player.play('note$musicNote.wav');
  }

  Object buildNote({Object color, int number}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(number);
        },
        child: null,
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
              children: <Widget>[
                buildNote(color: Colors.yellowAccent, number: 1),
                buildNote(color: Colors.blueAccent, number: 2),
                buildNote(color: Colors.redAccent, number: 3),
                buildNote(color: Colors.orangeAccent, number: 4),
                buildNote(color: Colors.greenAccent, number: 5),
                buildNote(color: Colors.pinkAccent, number: 6)
              ]),
        ),
      ),
    );
  }
}
