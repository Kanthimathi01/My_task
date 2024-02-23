import 'package:flutter/material.dart';
import 'package:login_page/asd.dart';
class rk extends StatefulWidget {
  const rk({super.key});

  @override
  State<rk> createState() => _rkState();
}

class _rkState extends State<rk> {
  final _key = GlobalKey<FormState>();
  final _myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Container(
          height:double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(),
            image: DecorationImage(
              image: AssetImage("loc.jpg"),
              fit: BoxFit.fill,
            )
          ),
          child: Column(
            children: [
              ElevatedButton(onPressed: (){

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const asdf()),
                );

              }, child: Text("ok")),



              GestureDetector(
                onTap: ()
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const asdf()),
                  );
                },
                child: Container(
                  height: 100,
                  width: 200,
                  color: Colors.cyan,
                  child: Image.asset("assets/loc.jpg"),
                ),
              )
            ],
          ),
        ),
      ),

    );
  }
}
