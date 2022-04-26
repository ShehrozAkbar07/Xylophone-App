import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Xylophone extends StatefulWidget {
  const Xylophone({Key? key}) : super(key: key);
  // void playsound(int number) {
  //   final player = new AudioCache();
  //   player.play('note$number.wav');
  // }

  @override
  State<Xylophone> createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          xyl(0xffD90F0A, 'note1.wav'),
          xyl(0xffFC4504, 'note2.wav'),
          xyl(0xffE5B902, 'note3.wav'),
          xyl(0xff10CB46, 'note4.wav'),
          xyl(0xff04C5A6, 'note5.wav'),
          xyl(0xff1B8AFE, 'note6.wav'),
          xyl(0xffB500FD, 'note7.wav'),
        ],
      )),
    );
  }
}

Widget xyl(int bfd, String no) {
  return Container(
    color: Color(bfd),
    height: 107,
    width: 400,
    child: TextButton(
      onPressed: () {
        color:
        Colors.blue;
        final play = AudioCache();
        play.play(no);
      },
      child: Text(''),
    ),
  );
}
