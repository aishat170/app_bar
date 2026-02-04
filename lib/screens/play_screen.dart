import 'package:app_bar/widgets/section.dart';
import 'package:flutter/material.dart';

class PlayScreen extends StatelessWidget {
  const PlayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              
              Section(
                header: 'Sleep', 
                row1: Text('by Alission S', style: TextStyle(color: Colors.grey),
                ),
                fontSize: 30,
                height: 140,
                row2: 
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
                  ),

              Section(
                  header: 'Timer',
                  row1: Text('40 min', 
                  style: TextStyle(color: Colors.grey)), 
                  height: 100, 
                  fontSize: 20
                ),

                Section(
                  header: 'Foundation', 
                  row1: Row(
                    children: [
                      OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.white,
                       ),
                      child: 
                        Text('Relaxation'),
                          ),
                          OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                              foregroundColor: Colors.white,
                            ),
                            child: Text('Trance'),
                          ),
                        ],
                      ),
                      height: 120,
                      fontSize: 20,
                      ),

            Section(
              header: 'Motive', 
              row1: 
                Row(
                    children: [
                      Image.asset(
                        'assets/1768880587_album_art (1).jpg',
                        width: 50,
                        height : 50,
                      ),
                      SizedBox(width: 10),
                        Column( 
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "POP-EPIC", 
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              "Nothern Sky", 
                              style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              height: 130, 
              fontSize: 20
              ),
            ],
          ),
        ),

        floatingActionButton: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                print('Thank you for clicking me!!!');
              },
              style: ElevatedButton.styleFrom(
                textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                foregroundColor: Colors.black,
                fixedSize: Size(double.infinity, 30),
              ),
              child: Text('Play'),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      );
  }
}
