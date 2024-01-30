import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(BallPage());
  //if the content inside the main method is moved to a stateless or statful widget this is how u do it
}

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue.shade600,
        appBar: AppBar(
          title: Text(
            'Ask me anything',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.blue.shade900,
        ),
        body: Ball(),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  State<Ball> createState() => _BallState(); //changed value here
}

class _BallState extends State<Ball> {
  //changed value here as well
  //added the name ball inside the <>
  int ballNumber = 1; //used string interpolation here
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            ballNumber = Random().nextInt(5) + 1;
            //remember to always include the changing element within the setState method
          });
          print('I got clicked');
          print(ballNumber);
        },
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}
