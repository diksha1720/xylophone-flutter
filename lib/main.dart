import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/widgets.dart';
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int trackno){
    final player=AudioCache();
    player.play('note$trackno.wav');
  }

  Expanded button({Color color, int trackno})
  {
    return Expanded(
      child: FlatButton(
          onPressed: () {
            playsound(trackno);
          },
          color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                button(color:Colors.red, trackno: 1),
                button(color:Colors.orange, trackno: 2),
                button(color:Colors.yellow, trackno: 3),
                button(color:Colors.green, trackno: 4),
                button(color:Colors.teal, trackno: 5),
                button(color:Colors.blue , trackno: 6),
                button(color:Colors.purple, trackno: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
