import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'app.dart';
class rkk extends StatefulWidget {
  const rkk({super.key});

  @override
  State<rkk> createState() => _rkkState();
}

class _rkkState extends State<rkk> {
  String dropdownvalue = '1';
  var items = [
    '1',
    '2',
    '3',
    '4',
  ];
  int currentindex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Color(0xff8adcdf),
        leading: Container(
          height: 10,
          child: GestureDetector(
            onTap: (){
              Navigator.push(context,
                MaterialPageRoute(builder: (context)=> skk()),
              );
            },
            child: Icon(Icons.arrow_back),
          ),

        ),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Row(
                children: [
                  Text('Visit the Matrix Store',style: TextStyle(fontSize: 20,color: Colors.lightBlue[900]),),
                  SizedBox(width: 80,),
                  RatingBar.builder(
                      initialRating: 2.5,
                      minRating: 1,
                      maxRating: 5,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemBuilder: (context,_)=> Icon(Icons.star,size: 1,color: Colors.orange[800],),
                      onRatingUpdate: (rating){
                        print(rating);
                      },
                    itemSize: 13,
                  ),
                  Text('722',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.black),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Boat Headphone (Black colored strap)",style: TextStyle(fontSize: 20),)),
            ),
            Stack(
              children: [
                CarouselSlider.builder(
                    options: CarouselOptions(
                        height: 350,
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
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int itemindex,
                        int pageViewIndex){
                      return Container(
                        height: 300,
                        width: 400,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/head.jpeg"),
                              fit: BoxFit.fill,
                            )
                        ),
                      );
                    }
                ),
                Positioned(right: 2, child: Icon(Icons.share),),
              ],
            ),
            DotsIndicator(dotsCount: 4,
              position: currentindex.toDouble(),),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Text("colour:",style: TextStyle(color: Colors.black,fontSize: 23),),
                      Text("Black",style: TextStyle(color: Colors.black,fontSize: 23,fontWeight: FontWeight.bold),),
                    ],
                  )),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Row(
                      children: [
                        Container(
                          height: 25,
                          width: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.red,
                          ),
                          child: Align(
                              alignment: Alignment.center,
                              child: Text('83% off',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,)),
                        ),SizedBox(width: 30,),
                        Row(
                          children: [
                            Container(
                              child: Text("₹",style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,color: Colors.black
                              ),),
                            ),
                            Container(
                              child: Text("272",
                                style: TextStyle(fontSize:30,color: Colors.black,
                                    fontWeight: FontWeight.bold),),
                            ),

                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('M.R.P.: ₹1999,',style: TextStyle(fontSize: 15,color: Colors.grey,
                          decoration: TextDecoration.lineThrough,
                          fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: RichText(
                      text: TextSpan(
                          text: "FREE dellivery",
                          style: TextStyle(fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue[700]),
                          children: [
                            TextSpan(
                              text: " Wednesday, 27 December ",
                              style: TextStyle(fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                              text: "on order dispatched by Amazon over ₹499. Order within",
                              style: TextStyle(fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                              text: " 21 hrs 32 mins.",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green
                              ),
                            ),
                          ]
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(Icons.location_on_outlined),
                        Text('Deliver to Mathi - Town 627006',style: TextStyle(color: Colors.blue[700],fontSize: 15),),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Text('In Stock',style: TextStyle(color: Colors.green,fontSize: 20),)),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Container(
                          height: 40,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Colors.white60,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: DropdownButton(
                            alignment: Alignment.centerRight,
                            dropdownColor: Colors.grey,
                            value: dropdownvalue,
                            icon: Icon(Icons.keyboard_arrow_down_rounded),
                            items:items.map((String items)
                            {
                              return DropdownMenuItem(
                                  alignment: Alignment.centerLeft,
                                  value: items,
                                  child:Text(items)
                              );
                            }
                            ).toList(), onChanged: (String? newvalue){
                              setState(() {
                                dropdownvalue=newvalue!;
                              });
                          }

                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Container(
                    height: 45,
                    width: 300,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                        child: Text('Add to Cart',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),textAlign: TextAlign.center,)),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 45,
                    width: 300,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Align(
                        alignment: Alignment.center,
                        child: Text('Buy Now',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),textAlign: TextAlign.center,)),
                  ),

                ],
              ),
            ),


          ],
        ),
      ),


    );
  }
}
