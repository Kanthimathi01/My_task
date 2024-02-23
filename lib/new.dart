import 'package:flutter/material.dart';
import 'package:login_page/auth.dart';
import 'package:login_page/authentication.dart';
class nw extends StatefulWidget {
  const nw({super.key});

  @override
  State<nw> createState() => _nwState();
}

class _nwState extends State<nw> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("Be Positive",style: TextStyle(fontSize: 30,color: Colors.deepPurpleAccent),)),
          SizedBox(height: 30,),
          Center(
            child: ElevatedButton(onPressed: (){
              {
                logout();
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => au()), (route) => false);

              }
            }, child: Text('Sign out')),
          ),
        ],
      ),
    );
  }

  void logout() {}
}
