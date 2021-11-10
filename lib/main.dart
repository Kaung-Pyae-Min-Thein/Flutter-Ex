import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);
  void playSound(int noteNumber) {
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  Expanded buildKey({required int soundnum, required Color color}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(soundnum);
        },
        child: Text(
          '',
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
        ),
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
              buildKey(soundnum: 1, color: Colors.red),
              buildKey(soundnum: 2, color: Colors.white),
              buildKey(soundnum: 3, color: Colors.yellow),
              buildKey(soundnum: 4, color: Colors.orange),
              buildKey(soundnum: 5, color: Colors.blue),
              buildKey(soundnum: 6, color: Colors.green),
              buildKey(soundnum: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
