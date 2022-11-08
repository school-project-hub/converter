import 'package:flutter/material.dart';

class DistanceConversion extends StatefulWidget {
  const DistanceConversion({Key? key}) : super(key: key);

  @override
  _DistanceConversionState createState() => _DistanceConversionState();
}

class _DistanceConversionState extends State<DistanceConversion> {
  TextEditingController numzTextEditingController = new TextEditingController();

  double results = 0.00;

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
                  child: Image.asset('assets/images/distance.jpg', scale: 2)),
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
                        'Distance Conversion',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      TextField(
                        controller: numzTextEditingController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: 'input in meter (m)',
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
                        "Foot (ft) : " + results.toStringAsFixed(3),
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void calculateMe(int op) {
    setState(() {
      double numz = double.parse(numzTextEditingController.text);
      results = numz * 3.281;
    });
  }
}
