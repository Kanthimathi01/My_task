import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:math';
class lii extends StatefulWidget {
  const lii({super.key});

  @override
  State<lii> createState() => _liiState();
}

class _liiState extends State<lii> {
  final abc = TextEditingController();
  final abc1 = TextEditingController();
  var list1 = [];

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0,top: 20),
              child: Container(
                height: 50,
                width: 300,
                child: TextFormField(
                  controller: abc,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
        
                ),
              ),
            ),SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){
                  setState(() {
                    list1.add(abc.text);
                    abc.clear();
                  });
                }, child: Text('OK')),
                ElevatedButton(onPressed: (){
                  setState(() {
                    list1.sort();
                    list1.sort((a,b)=>int.parse(a).compareTo(int.parse(b)));
                  });
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context)
                      {
                        return
                            Container(
                              height: 200,
                              width: 400,
                              child: Center(child: Text('${list1.last}',style: TextStyle(fontSize: 30),)),
        
        
                            );
                      }
                  );
                  },
                  child: Text('Max')
                ),
                ElevatedButton(onPressed: (){
                 setState(() {
                   list1.sort();
                   list1.sort((a,b)=>int.parse(a).compareTo(int.parse(b)));
                   showModalBottomSheet(
                       context: context,
                       builder: (BuildContext context)
                       {
                         return Container(
                           height: 200,
                           width: 400,
                           child: Center(child: Text('${list1.first}',style: TextStyle(fontSize: 30),)),
                         );
                       }
        
                   );
                 });
                }, child: Text('min')),
              ],
        
            ),
        
            ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: list1.length,
                itemBuilder: (BuildContext con,index)
                {
                  return Text(list1[index]);
                }
            ),
        
          ],
        ),
      ),
    );
  }
}
