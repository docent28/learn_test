import 'package:flutter/material.dart';

void main() {
  runApp(
    MyFirstApp(),
  );
}

class MyFirstApp extends StatelessWidget {
  const MyFirstApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Counter"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "Нажмите + для увеличения",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 25),
            ChangingValue(),
            SizedBox(height: 25),
            Text(
              "Нажмите - для уменьшения",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChangingValue extends StatefulWidget {
  const ChangingValue({Key? key}) : super(key: key);

  @override
  _ChangingValueState createState() => _ChangingValueState();
}

class _ChangingValueState extends State<ChangingValue> {
  late int _currentValue;

  @override
  void initState() {
    _currentValue = 50;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 75,
          height: 75,
          child: ColoredBox(
            color: Colors.green,
            child: IconButton(
              color: Colors.white,
              iconSize: 50,
              icon: const Icon(Icons.add_circle),
              onPressed: () {
                setState(() {
                  _currentValue += 1;
                });
              },
            ),
          ),
        ),
        const SizedBox(width: 50),
        SizedBox(
          width: 150,
          height: 75,
          child: ColoredBox(
            color: Colors.green,
            child: Center(
              child: Text(
                "$_currentValue",
                style: const TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w900,
                  color: Colors.indigo,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 50),
        SizedBox(
          width: 75,
          height: 75,
          child: ColoredBox(
            color: Colors.green,
            child: IconButton(
              color: Colors.white,
              iconSize: 50,
              icon: const Icon(Icons.remove_circle),
              onPressed: () {
                setState(() {
                  _currentValue -= 1;
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}
