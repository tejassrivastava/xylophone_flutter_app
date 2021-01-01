import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int num) {
    final AudioCache audioPlayer = AudioCache();
    audioPlayer.play('note$num.wav');
  }

  Expanded buildKey({String txt, Color color, int n}) {
    return (Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(n);
        },
        child: Text(
          txt,
          style: TextStyle(fontSize: 40, color: Colors.white),
        ),
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("🎵   X Y L O P H O N E   🎵")),
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(txt: "C", color: Colors.red, n: 1),
              buildKey(txt: "D", color: Colors.blue, n: 2),
              buildKey(txt: "E", color: Colors.orange, n: 3),
              buildKey(txt: "F", color: Colors.purple, n: 4),
              buildKey(txt: "G", color: Colors.green, n: 5),
              buildKey(txt: "A", color: Colors.indigo, n: 6),
              buildKey(txt: "B", color: Colors.pink, n: 7)
            ],
          ),
        ),
      ),
    );
  }
}
