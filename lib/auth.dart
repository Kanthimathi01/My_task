import 'dart:js';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_page/authentication.dart';
import 'package:login_page/authsignin.dart';
import 'package:login_page/new.dart';
class AuthController extends GetxController{
  static AuthController instance = Get.find();
  late Rx<User?> _user;
  FirebaseAuth auth = FirebaseAuth.instance;
  @override
  void onReady(){
    super.onReady();
    _user = Rx<User>(auth.currentUser as User);
    _user.bindStream(auth.userChanges() as Stream<User?>);
    ever(_user,_initialScreen);
  }
  _initialScreen(User? user){
    if(user==null){
      print("Login page");
      // Navigator.push(
      //     context as BuildContext,
      //     MaterialPageRoute(builder: (context)=>aut()));
      Get.to(aut());
  }else{
    // Navigator.push(
    //     context as BuildContext,
    //     MaterialPageRoute(builder: (context)=>nw()));
      Get.to(nw());
   }
  }
  void register(String email,password)async{
    try{
      await auth.createUserWithEmailAndPassword(email: email, password: password);
    }catch(e){
      Get.snackbar("About user", "user message",
      backgroundColor: Colors.cyanAccent,
      snackPosition: SnackPosition.BOTTOM,
      titleText: Text("Account creation failed"),
      messageText: Text(e.toString()),
      );
    }

  }
  void _Sign(String email,password)async{
    try{
      await auth.signInWithEmailAndPassword(email: email, password: password);
    } catch(e){
      Get.snackbar("About login","Login message",
      backgroundColor: Colors.greenAccent,
      snackPosition: SnackPosition.BOTTOM,
      titleText: Text("Login failed"),
      messageText: Text(e.toString()),
      );
    }
  }
  void logout()async{
    await auth.signOut();
  }
  }


