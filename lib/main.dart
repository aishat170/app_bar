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
          elevation: 3,
          title: const Text("My favourite color is Blue"),
          leading: const Icon(
            Icons.favorite,
            color: Colors.pink,
            size: 24.0,
            semanticLabel: 'Favorite icon',
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.expand_circle_down, color: Colors.amber),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.upload, color: Colors.blueAccent),
            ),
          ],
        ),
        body: Center(
          child: Container(
            width: double.infinity,
            height: 150,
            color: Colors.green,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: const EdgeInsets.all(20),
            child: Container(
              width: 300,
              height: 100,
              color: Colors.red,
              padding: const EdgeInsets.only(top: 25),
              child: Center(
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    border: Border.all(color: Colors.green, width: 10),
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}