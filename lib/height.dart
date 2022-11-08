import 'package:flutter/material.dart';

class HeightConversion extends StatefulWidget {
  @override
  _HeightConversionState createState() => _HeightConversionState();
}

class _HeightConversionState extends State<HeightConversion> {
  TextEditingController numztextEditingController = new TextEditingController();
  double results = 0.0;

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
              child: Image.asset('assets/images/height.png', scale: 2),
            ),
            SizedBox(height: 5),
            Card(
              margin: EdgeInsets.fromLTRB(30, 5, 30, 15),
              elevation: 10,
              child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                  child: Column(
                    children: [
                      Text(
                        'Height Conversion',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      SizedBox(height: 20),
                      TextField(
                        controller: numztextEditingController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: 'Input in inches (in)',
                          icon: Icon(Icons.format_list_numbered),
                        ),
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            child: Text("Calculate"),
                            onPressed: () => calculateMe(1),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Centimeter (cm):" + results.toStringAsFixed(2),
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  )),
            ),
          ],
        )),
      ),
    );
  }

  void calculateMe(int op) {
    setState(() {
      double numz = double.parse(numztextEditingController.text);

      if (op == 1) {
        results = numz * 2.54;
        //print(results);
      }
    });
  }
}
