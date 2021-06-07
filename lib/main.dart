import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Piano());
}

class Piano extends StatelessWidget {
  const Piano({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Piano'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              InkWell(
                onTap: () async {
                  AudioPlayer audioPlayer = AudioPlayer();
                  String note1 = 'assets/assests_note1.wav';
                  await audioPlayer.play(note1, isLocal: true);
                },
                child: Container(
                  height: 100,
                  color: Colors.red,
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 100,
                  color: Colors.yellow,
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 100,
                  color: Colors.green,
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 100,
                  color: Colors.blue,
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 100,
                  color: Colors.orange,
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 100,
                  color: Colors.purple,
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 100,
                  color: Colors.pink,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
