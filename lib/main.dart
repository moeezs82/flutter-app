import 'package:flutter/material.dart';
import 'package:untitled3/pages/home_page.dart';
import 'package:untitled3/pages/login_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),  //define in route
      themeMode: ThemeMode.light,  //dark for dark mode
      theme: ThemeData(
          primarySwatch: Colors.deepPurple  //swatch to automatically adjust color
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      routes: {
        "/": (context) => HomePage(),
        "/login" : (context) => LoginPage()
      },
    );
  }
}
