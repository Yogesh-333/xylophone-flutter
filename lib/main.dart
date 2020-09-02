import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int key){
    final player= AudioCache();
    player.play('note$key.wav');
  }
  Expanded playKey( color,int value){
   return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          playSound(value);
        },
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
            children:<Widget>[
              playKey(Colors.red,1),
              playKey(Colors.blue,2),
              playKey(Colors.purple,3),
              playKey(Colors.yellow,4),
              playKey(Colors.greenAccent,5),
              playKey(Colors.deepOrange,6),
              playKey(Colors.lime,7),
    ],
    ),
      ),
    ),);
  }
}
