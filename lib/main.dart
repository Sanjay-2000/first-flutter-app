import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text(
            'Dicee',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blueGrey,
        ),
        body: Dicepage(),
      ),
    ),
  );
}

class Dicepage extends StatefulWidget {
  @override
  _DicepageState createState() => _DicepageState();
}

class _DicepageState extends State<Dicepage> {
  @override
  int dicenumber;

  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(70.0),
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    dicenumber = Random().nextInt(6) + 1;
                  });
                },
                child: Image.asset('images/dice$dicenumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
