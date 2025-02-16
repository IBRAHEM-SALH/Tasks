import 'package:flutter/material.dart';
// task 16
class Task16 extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const Task16({required this.text, required this.onPressed, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      child: Text(text, style: TextStyle(fontSize: 16)),
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Reusable Widgets Example")),
        body: Center(
          child: Task16(
            text: "Click Me",
            onPressed: () {
              print("Button Pressed");
            },
          ),
        ),
      ),
    );
  }
}
