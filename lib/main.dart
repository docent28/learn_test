import 'package:flutter/material.dart';

void main() {
  runApp(MyFirstApp());
}

class MyFirstApp extends StatelessWidget {
  const MyFirstApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "My First App",
          ),
        ),
        body: Center(
          child: Text(
            "Просто текст",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
    );
  }
}
