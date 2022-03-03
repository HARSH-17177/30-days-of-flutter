// @dart=2.9
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:myflutter_app/pages/LoginPage.dart';
import 'package:myflutter_app/pages/home_page.dart';
import 'package:myflutter_app/utils/routes.dart';
import 'package:myflutter_app/widgets/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      themeMode: ThemeMode.light,
      theme:Mytheme.lightTheme(context) ,


      darkTheme: Mytheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage()
      },
    );
  }
}
