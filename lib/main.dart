import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: ThemeData(),
      home: const PianoScreen(),
    );
  }
}

class PianoScreen extends StatelessWidget {
  const PianoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void playSound(int soundNumber) {
      final player = AudioPlayer();
      player.play(AssetSource('music/note$soundNumber.wav'));
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomizeButton(
              color: Colors.orange,
              onTap: () {
                playSound(1);
              },
            ),
            CustomizeButton(
              color: Colors.blue,
              onTap: () {
                playSound(2);
              },
            ),
            CustomizeButton(
              color: Colors.green,
              onTap: () {
                playSound(3);
              },
            ),
            CustomizeButton(
              color: Colors.red,
              onTap: () {
                playSound(4);
              },
            ),
            CustomizeButton(
              color: Colors.amberAccent,
              onTap: () {
                playSound(5);
              },
            ),
            CustomizeButton(
              color: Colors.indigo,
              onTap: () {
                playSound(6);
              },
            ),
            CustomizeButton(
              color: Colors.purple,
              onTap: () {
                playSound(7);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CustomizeButton extends StatelessWidget {
  const CustomizeButton({super.key, required this.onTap, required this.color});
  final Color color;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: color,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0))),
          onPressed: onTap,
          child: null),
    );
  }
}
