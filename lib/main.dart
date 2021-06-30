import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(200.0),
          child: AppBar(
            automaticallyImplyLeading: false, // hides leading widget
          )
          ),

      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
           backgroundColor: Colors.blue,
           items: [BottomNavigationBarItem(
            title: Text('Favorites'),
            icon: Icon(Icons.favorite),
          ),
          BottomNavigationBarItem(
            title: Text('Music'),
            icon: Icon(Icons.music_note),
          ),],
          ),
    );
  }
}
