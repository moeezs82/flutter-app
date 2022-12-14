import 'package:flutter/material.dart';
import 'package:untitled3/Utils/routes.dart';
import 'package:untitled3/pages/home_page.dart';
import 'package:untitled3/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

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
          primarySwatch: Colors.deepPurple,  //swatch to automatically adjust color
          fontFamily: GoogleFonts.lato().fontFamily
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute : (context) => LoginPage()
      },
    );
  }
}
