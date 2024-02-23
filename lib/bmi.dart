import 'package:flutter/material.dart';
class bm extends StatefulWidget {
  const bm({super.key});

  @override
  State<bm> createState() => _bmState();
}

class _bmState extends State<bm> {
  final weightc = TextEditingController();
  final heightc = TextEditingController();
  double result = 0.0;
  double He = 0.0;
  double H = 0.0;
  String Category = "";
  Color backgroundColor = Colors.white;
  void bmicalculation()
  {
    setState(() {
      He = double.parse(heightc.text)/100;
      H = He*He;
      result = double.parse(weightc.text)/H;
      Category=Bmivalue(result);
      backgroundColor = abcbackgroundColor(Category);
    });
  }
  String Bmivalue(double result)
  {
    if (result<18)
      {
        return "Your body is Underweight";
      }
    else if(result>18.5 && result<25)
    {
        return"Your body is normal";
      }
    else
      {
        return"Your body is overweight";
      }
  }
  Color abcbackgroundColor(String Category)
  {
    switch(Category) {
      case "Your body is Underweight":
        return Colors.deepOrangeAccent;
      case "Your body is normal":
        return Colors.green;
      case "Your body is overweight":
        return Colors.red;
      default:
        return Colors.white;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[100],
        title: Text('BMI Calculator'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(height: 60,width: 350,
              child: Padding(
                padding: const EdgeInsets.only(left: 35.0),
                child: TextFormField(
                  controller: weightc,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Weight',
                  ),
                ),
              ),
            ),
            SizedBox(height: 60,width: 350,
              child: Padding(
                padding: const EdgeInsets.only(left: 35.0),
                child: TextFormField(
                  controller: heightc,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Height',
                  ),
                ),
              ),
            ),ElevatedButton(onPressed: (){
              bmicalculation();
              showDialog(
                  context: context,
                  builder: (BuildContext context)
              {
                return AlertDialog(
                  backgroundColor: backgroundColor,
                  content: Container(
                    height: 150,
                    width: double.infinity,
                    child: Column(
                      children: [
                        Text('BMI:$result',
                          style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.blueAccent),),
                        Text('$Category',
                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                );
              }
              );
            }, child: Text('Calculate')),
          ],
        ),
      ),
    );
  }
}
