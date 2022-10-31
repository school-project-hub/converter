import 'package:flutter/material.dart';
import 'home.dart';
import 'splashscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // theme: CustomTheme.lighttheme,
        routes: <String, WidgetBuilder>{
          '/loginscreen': (BuildContext context) => HomePage(),
          // '/registerscreen': (BuildContext context) => new RegistrationScreen(),
          // '/mainscreen': (BuildContext context) => new MainScreen(),
          // '/gramscreen': (BuildContext context) => new TouringGramScreen(),
        },
        debugShowCheckedModeBanner: false,
        title: 'converter',
        theme: new ThemeData(scaffoldBackgroundColor: const Color(0xffffffff)),
        home: SplashScreen());
  }
}
