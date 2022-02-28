import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:myflutter_app/models/catalog.dart';
import 'package:myflutter_app/widgets/item_widget.dart';

import '../widgets/drawer.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    var decodeData = jsonDecode(catalogJson);
    var productsData = decodeData["products"];
    catalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Catalog App",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (catalogModel.items != null && catalogModel.items.isNotEmpty)
            ? GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing:17 ,
                    crossAxisSpacing: 16),
                itemBuilder: (context, index) {
                  final item = catalogModel.items[index];
                  return Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(11)),
                    child: GridTile(
                      header:Container(child: Text(item.name,style: TextStyle(color: Colors.white),),
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(color: Colors.deepOrange),),
                      child: Image.network(item.image),
                      footer: Container(child: Text(item.name,style: TextStyle(color: Colors.black),),
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(color: Colors.cyanAccent),),));
                },
                itemCount: catalogModel.items.length,
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: Mydrawer(),
    );
  }
}
