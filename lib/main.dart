import 'package:flutter/material.dart';
import 'package:myflutter_app/pages/LoginPage.dart';
import 'package:myflutter_app/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int day = 30;
    String name = "Harsh";
    var naam = "harsh";
    return MaterialApp(
     
      themeMode: ThemeMode.light,
     theme: ThemeData(primarySwatch: Colors.deepOrange),
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: "/home",
routes: {
  "/":(context)=>LoginPage(),
  "/home":(context)=>HomePage(),
  "login":(context)=>LoginPage()
},
    );
  }
}
