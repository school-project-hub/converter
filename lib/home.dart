import 'package:flutter/material.dart';
import 'height.dart';
import 'decimal.dart';
import 'distance.dart';
import 'about.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
          child: const Text(
            "Rrenzoy Converter",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Center(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.fromLTRB(70, 50, 70, 10),
                child: Image.asset('assets/images/ruler.png', scale: 2)),
            SizedBox(height: 30),
            Card(
              margin: EdgeInsets.fromLTRB(30, 5, 30, 15),
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                child: Column(
                  children: [
                    Text(
                      'Conversion Menu',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          width: 200,
                          height: 50,
                          child: RaisedButton(
                            child: Text(
                              "Height Conversion",
                              style: TextStyle(fontSize: 18),
                            ),
                            color: Colors.green,
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (content) => HeightConversion())),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          width: 200,
                          height: 50,
                          child: RaisedButton(
                            child: Text(
                              "Decimal to Binary",
                              style: TextStyle(fontSize: 18),
                            ),
                            color: Colors.blue,
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (content) => DecimalConversion())),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          width: 200,
                          height: 50,
                          child: RaisedButton(
                            child: Text(
                              "Distance Conversion",
                              style: TextStyle(fontSize: 18),
                            ),
                            color: Colors.orange,
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (content) =>
                                        DistanceConversion())),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            TextButton(
              child: Text(
                "About",
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (content) => MyAbout())),
            ),
          ],
        ),
      )),
    );
  }
}
