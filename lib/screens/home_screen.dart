import 'package:app_bar/screens/play_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: Text(
          'muzaic', 
          style: TextStyle(color: Color.fromARGB(255,255,255,255)),
        ), 
        backgroundColor: Colors.transparent,
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute<void>(
                  builder: (context) => const PlayScreen(),
                  ),
                );
            }, 
            child: Text('Skip', style: TextStyle(color: Colors.white))
          ),
        ],
      ),

      extendBodyBehindAppBar: true,
      body: Stack(
        fit: StackFit.expand, 
        children: [
          Image.asset('assets/music.jpg', fit: BoxFit.cover), 
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Create music\nsessions by yourself',
                style: TextStyle(color: Colors.white, fontSize : 40, height : 1),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 10,
                  ),
                child: Text(
                  'Muzaic have a feature that allows you\nto customize sessions to make them more personal',
                  style: TextStyle(color: Colors.white70, fontSize: 16),
                ),
              ),
              SizedBox(height: 100),
            ],
          ),
        ],
      ),
      floatingActionButton: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute<void>(
                  builder: (context) => const PlayScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                foregroundColor: Colors.black,
                fixedSize: Size(double.infinity, 30),
              ),

              child: Text('Continue'),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}