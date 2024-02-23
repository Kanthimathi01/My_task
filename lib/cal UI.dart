import 'dart:math';

import 'package:flutter/material.dart';
import 'package:login_page/bb.dart';
class ca extends StatefulWidget {
  const ca({super.key});

  @override
  State<ca> createState() => _caState();
}

class _caState extends State<ca> {
  final abc=TextEditingController();
  String num1="",num2="",optr="";

  bool click=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
        children: [SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 50,
                  width: 160,
                 decoration: BoxDecoration(
                   color: Colors.blue,
                   border: Border.all(),
                   borderRadius: BorderRadius.circular(10),
                 ),
                 child: Center(child: Text("Calculator",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
              ),
              Container(
                height: 50,
                width: 160,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: Text("Convertor",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)),
              ),
            ],
          ),
          SizedBox(height: 180,),
          TextFormField(
            controller: abc,
            keyboardType: TextInputType.number,
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: (){
                abc.text='';
                optr='';
              }, child: Text('AC')),
              IconButton(onPressed: (){
                abc.text='';
                optr='len-1';

              }, icon: Icon(Icons.backspace_outlined,size: 35,)),
              ElevatedButton(onPressed: (){
                abc.text ='%';
                optr='%';
                click=false;
              }, child: Text('%')),
              ElevatedButton(onPressed: (){
                abc.text ='/';
                optr='/';
                click=false;
              }, child: Text('/')),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: (){
                if(click)
                  {
                    num1+="1";
                    abc.text=num1;
                  }
                else{
                  num2+="1";
                  abc.text=num2;
                }
              }, child: Text('1')),
              ElevatedButton(onPressed: (){
                if(click)
                {
                  num1+="2";
                  abc.text=num1;
                }
                else{
                  num2+="2";
                  abc.text=num2;
                }
              }, child: Text('2')),
              ElevatedButton(onPressed: (){
                if(click)
                {
                  num1+="3";
                  abc.text=num1;
                }
                else{
                  num2+="3";
                  abc.text=num2;
                }
              }, child: Text('3')),
              ElevatedButton(onPressed: (){
                abc.text = '*';
                optr = "*";
                click = false ;
              }, child: Text('*')),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: (){
                if(click)
                {
                  num1+="4";
                  abc.text=num1;
                }
                else{
                  num2+="4";
                  abc.text=num2;
                }
              }, child: Text('4')),
              ElevatedButton(onPressed: (){
                if(click)
                {
                  num1+="5";
                  abc.text=num1;
                }
                else{
                  num2+="5";
                  abc.text=num2;
                }
              }, child: Text('5')),
              ElevatedButton(onPressed: (){
                if(click)
                {
                  num1+="6";
                  abc.text=num1;
                }
                else{
                  num2+="6";
                  abc.text=num2;
                }
              }, child: Text('6')),
              ElevatedButton(onPressed: (){
                abc.text ='-';
                optr = '-';
                click=false;
              }, child: Text('-')),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: (){
                if(click)
                {
                  num1+="7";
                  abc.text=num1;
                }
                else{
                  num2+="7";
                  abc.text=num2;
                }
              }, child: Text('7')),
              ElevatedButton(onPressed: (){
                if(click)
                {
                  num1+="8";
                  abc.text=num1;
                }
                else{
                  num2+="8";
                  abc.text=num2;
                }
              }, child: Text('8')),
              ElevatedButton(onPressed: (){
                if(click)
                {
                  num1+="9";
                  abc.text=num1;
                }
                else{
                  num2+="9";
                  abc.text=num2;
                }
              }, child: Text('9')),
              ElevatedButton(onPressed: (){
                abc.text ='+';
                optr='+';
                click=false;
              }, child: Text('+')),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: (){
                abc.text ='√';
              }, child: Text('√')),
              ElevatedButton(onPressed: (){
                abc.text+='0';
              }, child: Text('0')),
              ElevatedButton(onPressed: (){
                abc.text ='.';
              }, child: Text('.')),
              ElevatedButton(onPressed: (){
                if(optr=="+")
                  {
                    int a = int.parse(num1);
                    int b = int.parse(num2);
                    int res = a+b;

                    abc.text = res.toString();

                  }
                if(optr=="-")
                {
                  int a = int.parse(num1);
                  int b = int.parse(num2);
                  int res = a-b;

                  abc.text = res.toString();

                }
                if(optr=="*")
                {
                  int a = int.parse(num1);
                  int b = int.parse(num2);
                  int res = a*b;

                  abc.text = res.toString();

                }
                if(optr=="/")
                {
                  int a = int.parse(num1);
                  int b = int.parse(num2);
                  double res = a/b;

                  abc.text = res.toString();

                }
                if(optr=="%")
                {
                  int a = int.parse(num1);
                  int b = int.parse(num2);
                  double res = (a*b)/100;

                  abc.text = res.toString();

                }
                if(optr=="√")
                  {
                    double a = double.parse(num1);
                    double res = sqrt(a);
                    abc.text = res.toString();

                  }


              }, child: Text('=')),

            ],
          ),





        ],
        ),
      ),
      );

  }
}


