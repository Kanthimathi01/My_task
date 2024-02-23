import 'package:flutter/material.dart';
import 'package:login_page/dd.dart';
import 'package:login_page/bb.dart';
class def extends StatefulWidget {
  const def({super.key});

  @override
  State<def> createState() => _defState();
}

class _defState extends State<def> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CircleAvatar(
          child: IconButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => abc()),
              );
            },
            icon:( Icon(Icons.arrow_back_ios)),
            //replace with our own icon data.
          ),
        ),
        centerTitle: true,
        title: Text("FORM 1",style: TextStyle(fontSize: 45,color: Colors.white,fontFamily: 'RobotoMono'),textAlign: TextAlign.center,),
          backgroundColor: Colors.blue,
      ),
      body: Form(
        child: Column(
          children: [
            Text("Report",style: TextStyle(fontSize: 45,fontWeight: FontWeight.bold,fontFamily: 'RobotoMono'),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                tileColor: Colors.lightBlue,
                title: Text('Rep 1'),
                trailing: GestureDetector(
                  onTap: ()
                    {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => vv()),
                      );
                    },
                    child: Icon(Icons.arrow_forward_ios)),
              leading: Icon(Icons.person),
                onTap: () => vv(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                tileColor: Colors.lightBlue,
                title: Text('Rep 2'),
                trailing: GestureDetector(
                    onTap: ()
                    {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => vv()),
                      );
                    },
                    child: Icon(Icons.arrow_forward_ios)),
                leading: Icon(Icons.person),
                onTap: () => vv(),
              ),
            ),
            Text("Help",style: TextStyle(fontSize: 45,fontWeight: FontWeight.bold,fontFamily: 'RobotoMono'),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                tileColor: Colors.lightBlue,
                title: Text(''),
                trailing: GestureDetector(
                    onTap: ()
                    {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => vv()),
                      );
                    },
                    child: Icon(Icons.arrow_forward_ios)),
                leading: Icon(Icons.person),
                onTap: () => vv(),
              ),
            ),
          ],
        ),



      ),
    );
  }
}
