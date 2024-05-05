import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void contador() {
    setState(() {
      toquesNoBotao++;
    });
  }

  int toquesNoBotao = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text(
            "CONTADOR",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Você tocou no botão essa quantidade de vezes:",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              Text(
                "$toquesNoBotao",
                style: TextStyle(
                  fontSize: 50,
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.amber,
          onPressed: contador,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
