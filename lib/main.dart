import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatefulWidget {
  @override
  State<XylophoneApp> createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  final audioPlayer = AudioPlayer();
  void soundnumber(int nextnumber) {
    audioPlayer.play(AssetSource('note$nextnumber.wav'));
  }

  void soundbutton() {}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(255, 221, 120, 73))),
                  onPressed: () {
                    soundnumber(1);
                  },
                  child: Text('sound 1'),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue)),
                  onPressed: () {
                    soundnumber(2);
                  },
                  child: Text('sound 2'),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          const Color.fromARGB(255, 28, 90, 84))),
                  onPressed: () {
                    soundnumber(3);
                  },
                  child: Text('sound 3'),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          const Color.fromARGB(255, 134, 176, 197))),
                  onPressed: () {
                    soundnumber(4);
                  },
                  child: Text('sound 4'),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(220, 212, 162, 87))),
                  onPressed: () {
                    soundnumber(5);
                  },
                  child: Text('sound 5'),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(255, 175, 93, 171))),
                  onPressed: () {
                    soundnumber(6);
                  },
                  child: Text('sound 6'),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red)),
                  onPressed: () {
                    soundnumber(7);
                  },
                  child: Text('sound 7'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
