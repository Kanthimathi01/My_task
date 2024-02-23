import 'package:flutter/material.dart';
class ta extends StatefulWidget {
  const ta({super.key});

  @override
  State<ta> createState() => _taState();
}

class _taState extends State<ta> {
  final abc=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Column(
        children: [SizedBox(height: 50,),
          SizedBox(width: 350,
            child: Padding(
              padding: const EdgeInsets.only(left: 50.0),
              child: TextFormField(
                controller: abc,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )
                ),
              ),

            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: ElevatedButton.icon(onPressed: (){
              abc.text+="1";
            },icon: Icon(Icons.present_to_all_sharp),
                label: Text('1')),
          ),
        ],
      ),

    );
  }
}
