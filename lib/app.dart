import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'app 1.dart';

class skk extends StatefulWidget {
  const skk({super.key});

  @override
  State<skk> createState() => _skkState();
}

class _skkState extends State<skk> {
  int currentindex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff8cdbdd),
        title: Container(
          height: 45,
          width: 380,
          decoration: BoxDecoration(),
          child: TextFormField(
            textAlignVertical: TextAlignVertical.bottom,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: "Search amazon in",
              filled: true,
              fillColor: Colors.white,
              suffixIcon: Icon(Icons.camera),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              )
            ),
          ),
        ),
      ),
      body:
      SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 50,
              width: 430,
              color: Color(0xff9ce3d4),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Icon(Icons.location_on_outlined,color: Colors.black,),
                  ),
                  Text('Deliver to Mathi - Town 627006',style: TextStyle(fontSize: 15),textAlign: TextAlign.center,),
                ],
              ),

            ),
            Container(
              height: 120,
              decoration: BoxDecoration(),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (BuildContext con,index)
                  {
                    return
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage("assets/wa.jpeg"),
                                fit: BoxFit.fill,
                              )
                            ),
                          ),
                          Text('Watches',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                        ],
                      ),

                    );

                  }
            ),
            ),
            CarouselSlider.builder(
              options: CarouselOptions(
              height: 250,
              aspectRatio: 16/9,
              viewportFraction: 1,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayAnimationDuration: Duration(seconds: 3),
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index,reason){
                setState(() {
                  currentindex=index;
                });
              }
              ),
              itemCount: 6,
              itemBuilder: (BuildContext context, int itemindex,
                  int pageViewIndex){
                return Container(
                  height: 200,
                  width: 400,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/big.jpeg"),
                      fit: BoxFit.fill,
                    )
                  ),
                );
              }
            ),
            DotsIndicator(dotsCount: 6,
            position: currentindex.toDouble(),),
            Container(
              height: 210,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 8,
                  itemBuilder: (BuildContext con,index)
              {
                return
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text('slippers',style: TextStyle(fontSize: 15),
                            textAlign: TextAlign.start,),
                          Container(
                            height: 150,
                            width: 130,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/sl.jpeg'),
                                fit: BoxFit.fill,
                              )
                            ),
                          ),
                        ],
                      ),
                    );
              }
              ),
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text("DEALS FOR YOU",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),)),
            Container(
              height: 400,
              child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: 4,
                  itemBuilder: (context,index)
              {
                return
                    Column(
                      children: [
                        Container(
                          height: 150,
                          width: 180,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/head.jpeg"),
                              fit: BoxFit.fill,
                            )
                          ),
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context)=> rkk()),
                              );
                            },
                          ),

                        ),
                        Row(
                          children: [
                            Container(
                              height: 25,
                              width: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: Colors.red,
                              ),
                              child: Text('83% off',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Deal of the Day',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
                            )
                          ],
                        ),
                      ],
                    );

              }
              ),
            )




          ],
        ),
      ),


    );
  }
}
