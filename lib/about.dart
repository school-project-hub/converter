import 'package:flutter/material.dart';

class MyAbout extends StatefulWidget {
  const MyAbout({Key? key}) : super(key: key);

  @override
  _MyAboutState createState() => _MyAboutState();
}

class _MyAboutState extends State<MyAbout> {
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
                child: Image.asset('assets/images/renz.jpg', scale: 2)),
            SizedBox(height: 5),
            Card(
              margin: EdgeInsets.fromLTRB(30, 5, 30, 15),
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                child: Column(
                  children: [
                    Text(
                      'REYNALDO D. AQUIT',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                    Text('BSIT-3A',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 13,
                        )),
                    Text('IT 313 - Mobile Programming',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    Text('USTP (Panaon)',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(height: 15),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
          ],
        ),
      )),
    );
  }
}
