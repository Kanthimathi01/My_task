import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_page/auth.dart';
import 'package:login_page/authsignin.dart';
class au extends StatefulWidget {
  const au({super.key});
  @override
  State<au> createState() => _auState();
}
class _auState extends State<au> {
  final _key = GlobalKey<FormState>();
  final abc = TextEditingController();
  final abcd = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text('Sign Up',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.purpleAccent),)),
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
              Row(
                children: [SizedBox(width: 60,),
                  Text('Already have an account',style: TextStyle(color: Colors.black,fontSize: 20),),
                  GestureDetector(
                      onTap: (){
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context)=> aut()),
                        );
                      },
                      child: Text('   Sign in',style: TextStyle(color: Colors.blue,fontSize: 20),)),
                ],
              ),
              ElevatedButton(onPressed: (){
                if(_key.currentState!.validate()){
                  AuthController.instance.register(abc.text.trim(), abcd.text.trim());
                }
              }, child: Text('Create Account')),
            ],
          ),
        ),
      ),

    );
  }
}
