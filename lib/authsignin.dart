import 'package:flutter/material.dart';
import 'package:login_page/auth.dart';
import 'package:login_page/authentication.dart';

import 'new.dart';
class aut extends StatefulWidget {
  const aut({super.key});

  @override
  State<aut> createState() => _autState();
}
class _autState extends State<aut> {
  final _key = GlobalKey<FormState>();
  final abc = TextEditingController();
  final abcd = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text('Sign In',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.purpleAccent),)),
      ),
      body: SafeArea(
        child: Form(
          autovalidateMode: AutovalidateMode.always,
          key: _key,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: 100,width: 350,
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: abc,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.mail,color: Colors.purpleAccent,size: 20,),
                    labelText: 'Email',
                    labelStyle: TextStyle(fontSize: 30,color: Colors.purpleAccent),
                    hintText: 'Email',
                    hintStyle: TextStyle(fontSize: 20,color: Colors.black),
                    helperText: 'Enter the Email',
                  ),
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(value!)) {
                      return 'Enter a valid email!';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(height: 100,width: 350,
                child: TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  controller: abcd,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock_outline,color: Colors.purpleAccent,size: 20,),
                    labelText: 'Password',
                    labelStyle: TextStyle(fontSize: 30,color: Colors.purpleAccent),
                    hintText: 'Password',
                    hintStyle: TextStyle(fontSize: 20,color: Colors.black),
                    helperText: 'Enter the Password',
                  ),
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r"(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\W)").hasMatch(value!)) {
                      return 'Enter a valid password!';
                    }
                  },
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?"),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=> au()));
                    },
                    child: Text(" Create new one",
                      style: TextStyle(color: Colors.blue),),
                  )
                ],
              ),

              ElevatedButton(onPressed: (){
                if(_key.currentState!.validate()){
                  _Sign();
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => nw()), (route) => false);

                }
              }, child: Text('OK')),

            ],
          ),
        ),
      ),
    );
  }
}

class _Sign {
}


