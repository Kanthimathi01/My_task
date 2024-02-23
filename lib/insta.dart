import 'package:flutter/material.dart';
import 'package:login_page/app.dart';
import 'amb.dart';
class lite extends StatefulWidget {
  const lite({super.key});

  @override
  State<lite> createState() => _liteState();
}

class _liteState extends State<lite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 3,
          child: NestedScrollView(
              headerSliverBuilder: (BuildContext context,bool innerBoxIsScrolled)
              {
                return [
                  SliverAppBar(
                    pinned: true,
                    expandedHeight: 390,
                    leading: GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context)=>ambi()));
                      },

                        child: Icon(Icons.arrow_back_ios,color: Colors.black,size: 20,)),
                    title: Text('BTSWORLD',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
                    actions: [
                      Icon(Icons.more_vert,size: 30,),
                    ],
                    flexibleSpace: FlexibleSpaceBar(
                      background: Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                children: [SizedBox(height: 80,),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 100,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        border: Border.all(),
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                          image: AssetImage("assets/jim.jpeg"),
                                          fit: BoxFit.fill,
                                        )
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text('Jimin Mochi',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
                                  ),
                                ],
                              ),
        
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  children: [SizedBox(height: 40,),
                                    Text('100k',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                                    Text('Posts',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  children: [SizedBox(height: 40,),
                                    Text('100M',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                                    Text('Followers',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  children: [SizedBox(height: 40,),
                                    Text('227',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                                    Text('Following',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                                  ],
                                ),
                              ),
                            ],
                          ),SizedBox(height: 10,),
                          Row(
                            children: [SizedBox(width: 15,),
                              Container(
                                height: 35,
                                width: 130,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.grey,
                                ),
                                child: Center(child: Text('Following',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),)),
                              ),SizedBox(width: 20,),
                              Container(
                                height: 35,
                                width: 130,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.grey,
                                ),
                                child: Center(child: Text('Message',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),)),
                              ),
                              SizedBox(width: 20,),
                              Container(
                                height: 35,
                                width: 45,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.grey,
                                ),
                                child: Icon(Icons.person_add,color: Colors.black,size: 23,),
        
                              ),
                            ],
                          ),
        
                          Container(
                            height: 100,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  shrinkWrap: true,
                                  itemCount: 10,
                                  itemBuilder:  (BuildContext con,index)
                                  {
                                    return
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          height: 80,
                                          width: 70,
                                          decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                              image: DecorationImage(
                                                image: AssetImage("assets/tan.jpeg"),
                                                fit: BoxFit.fill,
                                              )
                                          ),
                                        ),
                                      );
                                  }
        
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    bottom: TabBar(tabs: [
                      Icon(Icons.grid_on),
                      Icon(Icons.movie),
                      Icon(Icons.perm_contact_calendar_outlined),
                    ]),
                  )
                ];
              }, body: TabBarView(
            children: [
              Container(
                height: 300,
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                    ),
                  itemCount: 21,
                  itemBuilder: (context,index)
                  {
                    return
                      Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/mii.jpeg"),
                          fit: BoxFit.fill,
                        )
                      ),
                    );
                  }
                ),
              ),
              Container(
                height: 300,
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                    ),
                    itemCount: 21,
                    itemBuilder: (context,index)
                    {
                      return
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/mii.jpeg"),
                                fit: BoxFit.fill,
                              )
                          ),
                        );
                    }
                ),
              ),
              Container(
                height: 300,
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                    ),
                    itemCount: 21,
                    itemBuilder: (context,index)
                    {
                      return
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/mii.jpeg"),
                                fit: BoxFit.fill,
                              )
                          ),
                        );
                    }
                ),
              ),
            ],
          ),
        
          ),
        ),
      ),
    );
  }
}
