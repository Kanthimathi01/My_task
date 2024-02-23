import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_page/auth.dart';
import 'package:login_page/authentication.dart';
import 'package:login_page/authsignin.dart';
import 'package:login_page/create%20list.dart';
import 'package:login_page/google.dart';
import 'package:login_page/test.dart';

import 'firebase/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if(kIsWeb){
    await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyAOXgVx6H5YF0otcX5tthc16g1qOysk6XY",
          appId: "1:407556771626:web:6c42c4b6721c44e8579853",
          messagingSenderId: "407556771626",
          projectId: "fir-key-88501",)
    ).then((value) => Get.put(AuthController()));
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const tes (),
    );
  }
}
