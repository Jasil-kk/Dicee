import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black54,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: const Center(
              child: Text(
            'Dicee',
            style: TextStyle(fontFamily: 'Outfit', fontWeight: FontWeight.w600),
          )),
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNmber = 1;
  int rightDiceNmber = 6;
  void diceNumber() {
    setState(() {
      leftDiceNmber = Random().nextInt(6) + 1; // 1-6
      rightDiceNmber = Random().nextInt(6) + 1;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: TextButton(
                onPressed: () {
                    diceNumber();
                  print('left button got chaned $leftDiceNmber');
                },
                child: Image.asset('images/dice$leftDiceNmber.png')),
          ),
          Expanded(
              flex: 1,
              child: TextButton(
                  onPressed: () {
                      diceNumber();
                    print('right button got changed $leftDiceNmber');
                  },
                  child: Image.asset('images/dice$rightDiceNmber.png'))),
        ],
      ),
    );
  }
}
