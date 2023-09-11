import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int num_on_dice_1 = 1;
  int num_on_dice_2 = 1;

  num_on_dice() {
    num_on_dice_1 = Random().nextInt(6) + 1;
    num_on_dice_2 = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(
                        () {
                      num_on_dice();
                    },
                  );
                },
                child: Image.asset('images/dice$num_on_dice_1.png'),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(
                        () {
                      num_on_dice();
                    },
                  );
                },
                child: Image.asset('images/dice$num_on_dice_2.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
