import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var num = 1;
  var image = Image.asset("assets/dice1.png");
  void imageChanger() {
    if (num == 1) {
      image = Image.asset("assets/dice1.png");
    } else if (num == 2) {
      image = Image.asset("assets/dice2.png");
    } else if (num == 3) {
      image = Image.asset("assets/dice3.png");
    } else if (num == 4) {
      image = Image.asset("assets/dice4.png");
    } else if (num == 5) {
      image = Image.asset("assets/dice5.png");
    } else if (num == 6) {
      image = Image.asset("assets/dice6.png");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          title: const Text("DICE   ROLLER   APP"),
          centerTitle: true,
          toolbarHeight: 100,
          titleTextStyle: const TextStyle(
            color: Colors.white,
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
        body: Container(
          color: Colors.amberAccent,
          child: Center(
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  print("Image is clicked...");

                  setState(() {
                    num = 1 + Random().nextInt(6);
                  });

                  imageChanger();
                },
                child: SizedBox(
                  width: 250,
                  height: 250,
                  child: image,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
