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
        backgroundColor: Colors.grey[700],
        appBar: AppBar(
          title: const Text('Ask me'),
          backgroundColor: Colors.grey[900],
          centerTitle: true,
        ),
        body: BallPage(),
      ),
    );
  }
}

class BallPage extends StatefulWidget {
  const BallPage({super.key});

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {

  int ballNumber = 1;

  void BallRandom(int imgCount){
    setState(() {
      ballNumber = Random().nextInt(imgCount) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: MaterialButton(
          onPressed: () {
            BallRandom(5);
          },
          child: Image.asset('images/ball$ballNumber.png'),
        ),
      ),
    );
  }
}
