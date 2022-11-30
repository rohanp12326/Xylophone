import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void addSound(int i) {
    final player = AudioCache();
    player.play('note$i.wav');
  }
  Expanded builtButtons({Color color_=Colors.red,int soundNo=1})
  {
        return  Expanded(
                child: Container(
                  color: color_,
                  child: TextButton(
                    onPressed: () {
                      addSound(soundNo);
                    },
                    child: Text(''),
                  ),
                ),
              );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              builtButtons(color_: Colors.red,soundNo: 1),
              builtButtons(color_: Colors.yellow,soundNo: 2),
              builtButtons(color_: Colors.orange,soundNo: 3),
              builtButtons(color_: Colors.green,soundNo: 4),
              builtButtons(color_: Colors.pink,soundNo: 5),
              builtButtons(color_: Colors.blue,soundNo: 6),
              builtButtons(color_: Colors.purple,soundNo: 7),
            ],
          ),
        ),
      ),
    );
  }
}
