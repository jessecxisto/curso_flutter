import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/tela1",
      routes: {
        "/tela1": (context) => Tela1(),
        "/tela2": (context) => Tela2(),
      },
    );
  }
}

class Tela1 extends StatelessWidget {
  const Tela1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              "Tela 1",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            backgroundColor: Colors.blue,
          ),
          body: Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/tela2");
              },
              child: Text(
                "Ir para a tela 2",
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Tela2 extends StatelessWidget {
  const Tela2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              "Tela 2",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            backgroundColor: Colors.red,
          ),
          body: Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "Voltar para a tela 1",
              ),
            ),
          ),
        ),
      ),
    );
  }
}
