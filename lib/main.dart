import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded buildKey(Color keyColor, int keyNumber) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          final player = AudioCache();
          player.play('note$keyNumber.wav');
        },
        color: keyColor,
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
              buildKey(Colors.red, 1),
              buildKey(Colors.orange[700], 2),
              buildKey(Colors.yellow, 3),
              buildKey(Colors.green[500], 4),
              buildKey(Colors.teal[700], 5),
              buildKey(Colors.blue, 6),
              buildKey(Colors.deepPurple, 7),
            ],
          ),
        ),
      ),
    );
  }
}
