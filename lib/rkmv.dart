import 'package:flutter/material.dart';
import 'package:login_page/bb.dart';
import 'package:login_page/cc.dart';
class gk extends StatefulWidget {
  const gk ({super.key});

  @override
  State<gk> createState() => _gkState();
}

class _gkState extends State<gk> {
  int _index = 0;
  final pages =[
    abc(),
    def(),

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
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.set_meal_rounded),label: "ok"),
        ],
        currentIndex: _index,
        onTap: tap,
      ),

    );
  }
}
