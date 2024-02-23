import 'package:flutter/material.dart';
import 'package:login_page/amb.dart';
class vk extends StatefulWidget {
  const vk({super.key});

  @override
  State<vk> createState() => _vkState();
}

class _vkState extends State<vk> {
  int _index = 0 ;

  final pages = [
    Center(child: Text("data")),
  ];
  void tap(index)
  {
    setState(() {
      _index = index;
    });
  }

  final _key = GlobalKey<FormState>();
  final _myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        autovalidateMode: AutovalidateMode.always,
        key: _key,
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(),
            image: DecorationImage(
              image: AssetImage("assets/loc.jpg"),
              fit: BoxFit.fill,
            )
          ),
          child: Column(
            children: [
              Container(
                height: 280,
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Container(
                  height: 80,
                  width: 350,
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(value!)) {
                        return 'Enter a valid email!';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.emailAddress,
                    controller: TextEditingController(),
                    decoration: InputDecoration(
                      hintText: 'Enter email',
                      labelText: 'Email',
                      fillColor: Colors.black,
                      prefixIcon: Icon(Icons.email),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),

                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Container(
                  height: 80,
                  width: 350,
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter a valid password!';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.emailAddress,
                    controller: TextEditingController(),
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.mail_lock_rounded),
                      hintText: 'Password',
                      labelText: 'Password',
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),

                    ),
                  ),
                ),
              ),
              ElevatedButton(onPressed: (){
                if (_key.currentState!.validate()) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ambi()),
                  );
                }
                }, child: Text('Login'),)




            ],
          ),

        ),
      ),

    );
  }
}
