import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          title: const Text("MyFirst App"),
          centerTitle: true,
        ),
        body: const Center(
          child: Text(
            "This is My HomePage",
            style: TextStyle(
              color: Colors.indigo,
              fontSize: 40,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
    ),
  );
}
