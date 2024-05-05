import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            "App Exemplo Scaffold",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Center(
              child: Text(
                "Coluna 1",
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
            ),
            Center(
              child: Text(
                "Coluna 2",
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
            ),
            Center(
              child: Text(
                "Coluna 3",
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
