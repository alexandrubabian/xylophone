import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatefulWidget {
  @override
  _XylophoneAppState createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  int counter = 0;
  void playSound(int i) {
    final player = AudioCache();
    player.play('note$i.wav');
  }

  Expanded buildKey(Color color, int i) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          setState(() {
            playSound(i);
            counter++;
          });

        },
        child: Text('$counter'),
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
                buildKey(Colors.red, 1),
                buildKey(Colors.blue, 2),
                buildKey(Colors.teal, 3),
                buildKey(Colors.yellow, 4),
                buildKey(Colors.green, 5),
                buildKey(Colors.purple, 6),
                buildKey(Colors.orange, 7),
              ],
            )
        ),
      ),
    );
  }
}



