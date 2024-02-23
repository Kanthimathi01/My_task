import 'package:flutter/material.dart';
class abc extends StatelessWidget {
  const abc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
            height: 200,
            width: 200,
            child: Image.asset("assets/hum.jpg"),
                    ),
          ),
        Center(
          child: Container(
            height: 200,
            width: 200,
            child: Image.asset("assets/hum.jpg"),

          ),
        )],
      ),
    );
  }
}
