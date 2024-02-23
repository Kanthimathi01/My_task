import 'package:flutter/material.dart';
import 'package:login_page/amb.dart';
class spy extends StatefulWidget {
  const spy({super.key});

  @override
  State<spy> createState() => _spyState();
}

class _spyState extends State<spy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(headerSliverBuilder:
        (BuildContext context, bool innerBoxIsScrolled)
    {
      return[
        SliverAppBar(
          leading: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: GestureDetector(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> ambi()));
              },
                child: Icon(Icons.arrow_back,color: Colors.white,size: 30,)),
          ),
          pinned: true,
          expandedHeight: 390,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xff865841),
                    Color(0xff372821)
                  ])
            ),
            child: Stack(
              children: [
                FlexibleSpaceBar(
                  title: Column(
                    children: [
                      Text('Jimin BTS')
                    ],
                  ),
                  background: Column(
                    children: [SizedBox(height: 50,),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Container(
                              height: 45,
                              width: 250,
                              decoration: BoxDecoration(
                                color: Color(0xff4c4c4c),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: TextFormField(
                                textAlignVertical: TextAlignVertical.top,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.search,color: Colors.white,),
                                  hintText: 'Find in playlist',
                                  hintStyle: TextStyle(color: Colors.white),

                                )
                              ),

                            ),
                          ),SizedBox(width: 8,),
                          Container(
                            height: 45,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Color(0xff4c4c4c),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Align(
                                alignment: Alignment.center,
                                child: Text('Sort',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15))),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Container(
                        height: 180,
                        width: 180,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/jim.jpeg"),
                            fit: BoxFit.fill,
                          )
                        ),
                      ),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15,top: 10),
                            child: Text('31M monthly listeners',style: TextStyle(color: Colors.white70,fontSize: 15,fontWeight: FontWeight.bold),),
                          )),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15,top: 6),
                          child: Row(
                            children: [
                              Container(
                                height: 35,
                                width: 100,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.white70),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Text('Follow',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: Icon(Icons.more_vert,color: Colors.white70,size: 35,),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 70),
                                child: Icon(Icons.shuffle_sharp,color: Colors.greenAccent,size: 33,),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Icon(Icons.play_circle,color: Colors.greenAccent,size: 48,),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ];
    }, body: SingleChildScrollView(
          child: Container(
            height: 950,
            color: Color(0xff121212),
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 17,
                itemBuilder: (BuildContext con,index)


            {
              return
                  ListTile(
                    leading: Container(
                      height: 100,
                      width: 70,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        image: DecorationImage(
                          image: AssetImage("assets/mii.jpeg"),
                          fit: BoxFit.fill,
                        )
                      ),
                    ),
                    title: Text('Like Crazy',
                      style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold),),
                    subtitle: Row(
                      children: [
                        Container(
                          height: 18,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Colors.white70,
                            border: Border.all(),
                          ),
                          child: Text('Lyrics',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 10),textAlign: TextAlign.center,),
                        ),
                        SizedBox(width: 10,),
                        Text('BTS',style: TextStyle(color: Colors.white70),),
                      ],
                    ),
                    trailing: Icon(Icons.more_vert,color: Colors.white70,),


                  );
            }
            ),
          ),
        )
      ),

    ));
  }
}
