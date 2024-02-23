import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
GoogleSignIn _googleSignIn = GoogleSignIn(
  scopes: <String>[
    'email',
    'https://www.googleeapis.com/auth/contacts/readonly'
  ]
);
class gog extends StatefulWidget {
  const gog({super.key});

  @override
  State<gog> createState() => _gogState();
}

class _gogState extends State<gog> {
  late GoogleSignInAccount currentUser;
  @override
  void initState() {
    super.initState();
    _googleSignIn.onCurrentUserChanged.listen((account) {
      setState(() {
        currentUser = account!;
      });
      if(currentUser!=null){
        print("User is already authenticated");
      }
    });
    _googleSignIn.signInSilently();
  }
  Future<void> handleSignIn() async{
    try{
      await _googleSignIn.signIn();
    }catch(error){
      print("Sign in error : "+error.toString());
    }
  }
  Future<void> handleSignOut() => _googleSignIn.disconnect();
  Widget buildBody(){
    GoogleSignInAccount user = currentUser;
    if(user!=null){
      return Column(
        children: [
          GoogleUserCircleAvatar(identity: user),
          SizedBox(height: 20,),
          Center(child: Text(user.displayName ?? '',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)),
          Center(
              child: Text(user.email,textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 20),)),
          SizedBox(height: 10,),
          ElevatedButton(onPressed: handleSignOut, child: Text('Sign out')),

        ],
      );
    }
    else
    {
      return Column(
        children: [
          Center(
              child: Image.asset("assets/google.png")),
          Center(
              child: Text("Welcome to google authentication",textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)),
          Container(
            width: 250,
            child: ElevatedButton(onPressed: handleSignIn,
                child: Row(
                  children: [
                    Image.asset("assets/google.png",height: 20,width: 20,),
                    SizedBox(width: 20,),
                    Text("Sign In"),
                  ],
                )),
          )
        ],
      );
    }
  }
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}
