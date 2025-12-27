import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation : 3,
          title : Text("My favourite color is Blue"), 
          leading : Icon(
            Icons.favorite,
            color: const Color.fromARGB(255, 67, 132, 244),
            size: 24.0,
            semanticLabel: 'Text to announce in acessibility moles',
          ),
          actions: [
            IconButton(
              onPressed : () {}, 
              icon : Icon(Icons.expand_circle_down, color: Colors.amber),
            ),
            IconButton(
              onPressed : () {}, 
              icon : Icon(Icons.upload, color: Colors.blueAccent),
            ),
          ],
        ), 
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
