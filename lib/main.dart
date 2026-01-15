import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor : Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 3,
          leading: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 24.0,
            semanticLabel: 'Text to announce in accessbility modes',
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_outline_outlined, color: Colors.white),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.ios_share_outlined, color: Colors.blueAccent),
            ),
          ],
        ),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              margin: EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity, 
              height: 140, 
              decoration: BoxDecoration(
                color: Color.fromARGB (255,40,40,40),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row( 
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sleep', style: TextStyle(color: Colors.white, fontSize: 30)
                      ),
                      Icon(Icons.chevron_right_outlined, color: Colors.white),
                    ],
                  ),
                  Text('by Alison S', style: TextStyle(color: Colors.grey)),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(children: [
                      Container(
                       width: 100, 
                       height: 20, 
                       decoration: BoxDecoration(
                         color: Color.fromARGB (255,50,50,50),
                         borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          'very relaxing', 
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                       ),
                       Container(
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        width: 100, 
                        height: 20, 
                        decoration: BoxDecoration(
                          color: Color.fromARGB (255,50,50,50),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          'pleasant', 
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                       ),
                       Container(
                       width: 100, 
                       height: 20, 
                       decoration: BoxDecoration(
                         color: Color.fromARGB (255,50,50,50),
                         borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          'deep', 
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                       ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              width: double.infinity, 
              height: 100, 
              decoration: BoxDecoration(
                color: Color.fromARGB (255,40,40,40),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row( 
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Timer', style: TextStyle(color: Colors.white, fontSize: 18)
                      ),
                      Icon(Icons.chevron_right_outlined, color: Colors.white),
                    ],
                  ),
                  Text('40 min', style: TextStyle(color: Colors.grey)),
                  Padding(padding: const EdgeInsets.only(top: 14))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity, 
              height: 130, 
              decoration: BoxDecoration(
                color: Color.fromARGB (255,40,40,40),
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              width: double.infinity,
              height: 130, 
              decoration: BoxDecoration(
                color: Color.fromARGB (255,40,40,40),
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

