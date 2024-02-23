import 'package:flutter/material.dart';
class gs extends StatefulWidget {
  const gs({super.key});

  @override
  State<gs> createState() => _gsState();
}

class _gsState extends State<gs> {
  final billAmount = TextEditingController();
  final gstPercentage = TextEditingController();
  double result = 0.0;
  double GST = 0.0;
  double cgst = 0.0;
  double sgst = 0.0;
  double total = 0.0;
  double actual = 0.0;
  double tgst = 0.0;

  void gst()
  {
    setState(() {
      GST = double.parse(billAmount.text)*double.parse(gstPercentage.text)/100;
      cgst = GST/2;
      sgst = GST/2;
      total=double.parse(billAmount.text)+GST;
    });
  }
  void inclusivetax()
  {
    setState(() {
      actual = (double.parse(billAmount.text)*100)/(double.parse(gstPercentage.text)+100);
      tgst = double.parse(billAmount.text)-actual;
      sgst = tgst/2;
      cgst = tgst/2;
      result = actual+tgst;
    });

  }

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Center(
            child: Text('GST Calculator',style: TextStyle(fontWeight: FontWeight.bold),)),
      ),
          body:SafeArea(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: 60,width: 350,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 32.0),
                    child: TextFormField(
                      controller: billAmount,
                      keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Bill amount',

                    ),
                    ),
                  ),
                ),
                SizedBox(height: 60,width: 350,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 32.0),
                    child: TextFormField(
                      controller: gstPercentage,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'GST'
                      ),
                    ),
                  ),
                ),
                ElevatedButton(onPressed: (){
                 gst();
                 showModalBottomSheet(
                     context: context,
                     builder: (BuildContext context)
                 {
                   return
                       Container(
                         height: 200,
                         width: 400,
                         child: Column(
                           children: [
                             Text("Gst=$GST"),
                             Text("CGST=$cgst"),
                             Text("SGST=$sgst"),
                             Text("TOTAL=$total"),

                           ],
                         ),
                       );
                 }
                 );

                 }, child: Text('Calculate')),
                ElevatedButton(onPressed: (){
                  inclusivetax();
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context)
                  {
                    return
                        Container(
                          height: 200,
                          width: 400,
                          child: Column(
                            children: [
                              Text("Actual=$actual"),
                              Text("tgst=$tgst"),
                              Text("sgst=$sgst"),
                              Text("cgst=$cgst"),
                              Text("result=$result"),
                            ],
                          ),
                        );
                  }
                  );

                }, child: Text("inclusive tax")),
                ],
                ),
                ),
          ),
    );
  }
}

class $result {
}
