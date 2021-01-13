import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Sky rocks!',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(counter.toString()),
            AnimatedContainer(
              width: Random().nextInt(200).toDouble(),
              height: 50,
              color: Colors.pink,
              duration: Duration(milliseconds: 500),
            ),
            IconButton(
                icon: Icon(Icons.star),
                onPressed: () {
                  setState(() {
                    counter++;
                  });
                })
          ],
        ),
      ),
    );
  }
}
