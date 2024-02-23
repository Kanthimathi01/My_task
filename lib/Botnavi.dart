import 'package:flutter/material.dart';
import 'package:login_page/bmi.dart';
import 'package:login_page/cal%20UI.dart';
import 'package:login_page/create%20list.dart';
import 'package:login_page/gst.dart';
import 'package:login_page/sun.dart';

class Botnavi extends StatefulWidget {
  const Botnavi({super.key});

  @override
  State<Botnavi> createState() => _BotnaviState();

}

class _BotnaviState extends State<Botnavi> {

  int _index = 0 ;

  final pages = [
    ca(),
    lii(),
    gs(),
    bm(),
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
        backgroundColor: Colors.blue,
        unselectedLabelStyle: const TextStyle(color: Colors.black, fontSize: 14),
        fixedColor: Colors.cyanAccent,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.calculate_outlined,size:30,color: Colors.purpleAccent),label: 'Calculator'),
          BottomNavigationBarItem(icon: Icon(Icons.calculate_rounded,size:30,color: Colors.purpleAccent),label: 'list'),
          BottomNavigationBarItem(icon: Icon(Icons.calculate_rounded,size:30,color: Colors.purpleAccent),label: 'GST'),
          BottomNavigationBarItem(icon: Icon(Icons.calculate_sharp,size:30,color: Colors.purpleAccent),label: 'BMI'),
        ],
        currentIndex: _index,
        onTap: tap,
      ),

    );
  }
}
