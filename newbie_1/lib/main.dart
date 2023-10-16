import 'dart:io';
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
      title: 'Who am I?',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 224, 148, 48)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Introduction to Sejong Kim'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Center(
          child: Text(
            'SPARCS App Seminar #1',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              //color: Color.fromARGB(255, 221, 219, 219),
              fontSize: 20,
              fontWeight: FontWeight.w500,
              fontFamily: 'Didot',
              foreground: Paint()
                ..shader = LinearGradient(
                  colors: <Color>[
                    Colors.lightBlue,
                    Colors.red,
                  ],
                ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 100.0)),
            ),
          ),
        ),
      ),
      body: Container(
        color: Color.fromARGB(255, 255, 233, 186),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage('images/MTKim.jpeg'),
                radius: 100,
              ),
              SizedBox(height: 12),
              const Text(
                'SPARCS Developer',
                style: TextStyle(
                  color: Color.fromARGB(255, 137, 207, 24),
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                  fontFamily: 'Baskerville',
                ),
              ),
              const Text(
                '2023F',
              ),
              SizedBox(height: 7),
              Text(
                '"king"',
                style: TextStyle(
                  letterSpacing: 0.5,
                  //color: Colors.orange,
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'Courier',
                  foreground: Paint()
                    ..shader = LinearGradient(
                      colors: <Color>[
                        Colors.orange,
                        Colors.purple,
                        Colors.blue
                      ],
                    ).createShader(Rect.fromLTWH(0.0, 0.0, 290.0, 10.0)),
                ),
              ),
              Text(
                'Sejong Kim',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              SizedBox(height: 10),
              Container(
                width: 320.0,
                height: 5.0,
                color: Color.fromARGB(110, 247, 176, 83),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      width: 40.0,
                      height: 40.0,
                      color: Colors.white70,
                      child: Icon(Icons.phone)),
                  SizedBox(width: 10),
                  Container(
                    alignment: Alignment.center,
                    width: 250.0,
                    height: 40.0,
                    color: Colors.white,
                    child: Text(
                      '+82 10 - 4274 - 8202',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Cooper',
                        fontWeight: FontWeight.w800,
                        color: Colors.orange,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      width: 40.0,
                      height: 40.0,
                      color: Colors.white70,
                      child: Icon(Icons.mail)),
                  SizedBox(width: 10),
                  Container(
                    alignment: Alignment.center,
                    width: 250.0,
                    height: 40.0,
                    color: Colors.white,
                    child: Text(
                      'king@sparcs.org',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Cooper',
                        fontWeight: FontWeight.w800,
                        fontStyle: FontStyle.italic,
                        color: Colors.orange,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
