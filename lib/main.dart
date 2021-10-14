import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(MyFirstApp());
}

class MyFirstApp extends StatefulWidget {
  const MyFirstApp({Key? key}) : super(key: key);

  @override
  State<MyFirstApp> createState() => _MyFirstAppState();
}

class _MyFirstAppState extends State<MyFirstApp> {
  late bool _loading;
  late double _progressValue;

  @override
  void initState() {
    _loading = false;
    _progressValue = 0.0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          backgroundColor: Colors.indigoAccent,
          centerTitle: true,
          title: Text(
            "My First App",
          ),
        ),
        body: Center(
          child: Container(
            color: Colors.green,
            padding: EdgeInsets.all(25),
            child: _loading
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      LinearProgressIndicator(
                        value: _progressValue,
                        minHeight: 20,
                      ),
                      Text(
                        "${(_progressValue * 100).round()} %",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  )
                : Text(
                    "Press Button to download",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.amber,
          onPressed: () {
            setState(() {
              _loading = !_loading;
              _updateProgress();
            });
          },
          child: Icon(Icons.cloud_download),
        ),
      ),
    );
  }

  void _updateProgress() {
    const oneSec = const Duration(milliseconds: 100);
    Timer.periodic(oneSec, (Timer t) {
      setState(() {
        _progressValue += 0.01;
        if (_progressValue.toStringAsFixed(1) == '1.0') {
          _loading = false;
          t.cancel();
          _progressValue = 0.0;
          return;
        }
      });
    });
  }
}
