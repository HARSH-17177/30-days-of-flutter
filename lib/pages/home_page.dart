import 'package:flutter/material.dart';
import 'package:myflutter_app/models/catalog.dart';
import 'package:myflutter_app/widgets/item_widget.dart';

import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     final dummylist = List.generate(20, (index) => catalogModel.items[0]);//generate the similar copy of 1st element... 
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Catalog App",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummylist.length,
          itemBuilder: ((context, index) {
            return ItemWidget(
              item: dummylist[index],
            );
          }),
        ),
      ),
      drawer: Mydrawer(),
    );
  }
}