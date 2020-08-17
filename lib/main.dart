import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              keyNotes(Colors.red),
              keyNotes(Colors.blue, noteNum: 2),
              keyNotes(Colors.green, noteNum: 3),
              keyNotes(Colors.deepPurple, noteNum: 4),
              keyNotes(Colors.yellow, noteNum: 5),
              keyNotes(Colors.brown, noteNum: 6),
              keyNotes(Colors.blueGrey, noteNum: 7),
            ],
          ),
        ),
      ),
    );
  }
}

Widget keyNotes(Color color, {int noteNum = 1}) {
  return Expanded(
    child: FlatButton(
      color: color,
      onPressed: () {
        final audioPlayer = AudioCache();
        audioPlayer.play('note$noteNum.wav');
      },
      child: Text(''),
    ),
  );
}
