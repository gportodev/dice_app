import 'dart:math';
import 'package:flutter/material.dart';

void main(List<String> args) {
  return runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: DicePage(),
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Dice',
          style: TextStyle(fontFamily: "Kaushan Script"),
        ),
        titleTextStyle: const TextStyle(fontSize: 45),
        centerTitle: true,
        backgroundColor: Colors.purple[900],
      ),
      body: Scaffold(
        backgroundColor: Colors.purple[800],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                'Rolling dices in a simple way....\n Just press it!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Kaushan Script",
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
              Row(children: [
                Expanded(
                  child: TextButton(
                      onPressed: () {
                        changeDiceFace();
                      },
                      child: Image.asset('images/dice$leftDiceNumber.png')),
                ),
                Expanded(
                  child: TextButton(
                      onPressed: () {
                        changeDiceFace();
                      },
                      child: Image.asset('images/dice$rightDiceNumber.png')),
                )
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
