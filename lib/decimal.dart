import 'package:flutter/material.dart';

class DecimalConversion extends StatefulWidget {
  DecimalConversion({Key? key}) : super(key: key);

  @override
  State<DecimalConversion> createState() => _DecimalConversionState();
}

class _DecimalConversionState extends State<DecimalConversion> {
  TextEditingController numzTextEditingController = new TextEditingController();

  int results = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        title: Text("Back to Menu"),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  margin: EdgeInsets.fromLTRB(70, 50, 70, 10),
                  child: Image.asset(
                    'assets/images/binary.jpg',
                    scale: 2,
                  )),
              SizedBox(
                height: 5,
              ),
              Card(
                margin: EdgeInsets.fromLTRB(30, 5, 30, 15),
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                  child: Column(
                    children: [
                      Text(
                        'Decimal Conversion',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                      TextField(
                        controller: numzTextEditingController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: 'Input in Decimal',
                          icon: Icon(Icons.format_list_numbered),
                        ),
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          RaisedButton(
                            child: Text("Calculate"),
                            onPressed: () => calculateMe(1),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Text(
                        results.toStringAsFixed(0),
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      Text("Binary"),
                      SizedBox(
                        height: 25,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void calculateMe(int op) {
    setState(() {
      int numz = int.parse(numzTextEditingController.text);

      if (op == 1) {
        int bin = 0, i = 1;
        while (numz > 0) {
          bin = bin + (numz % 2) * i;
          numz = (numz / 2).floor();
          i = i * 10;
        }
        results = bin;
      }
    });
  }
}
