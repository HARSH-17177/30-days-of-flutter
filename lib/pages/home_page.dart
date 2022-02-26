import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       
        title: Text(
          "Catalog App",
),
        ),
      
      body:Container(
        height:100,
        width:100,
        color: Colors.cyan,
      ),
      drawer: Mydrawer(),
    );
  }
}
