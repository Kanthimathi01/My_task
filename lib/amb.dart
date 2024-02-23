import 'package:flutter/material.dart';
import 'package:login_page/insta.dart';
import 'package:login_page/spotify.dart';
import 'app.dart';
import 'app 1.dart';
class ambi extends StatefulWidget {
  const ambi({super.key});

  @override
  State<ambi> createState() => _ambiState();
}

class _ambiState extends State<ambi> {
  int _index = 0;
  final pages =[
    skk(),
    spy(),
    lite(),


  ];
  void tap(index)
  {
    setState(() {
      _index = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.music_note),label: "Spotify"),
          BottomNavigationBarItem(icon: Icon(Icons.set_meal_rounded),label: "Insta"),
        ],
        currentIndex: _index,
        onTap: tap,
      ),

    );
  }
}
