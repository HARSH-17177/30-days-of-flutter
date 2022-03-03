import 'package:flutter/material.dart';
import 'package:myflutter_app/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({Key? key, required this.catalog}) :assert(catalog!=null), super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      
      backgroundColor: Color.fromARGB(255, 203, 253, 247),
      bottomNavigationBar:  ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              children: [
                "\$${catalog.price}".text.bold.xl.blue800.xl4.red500.make(),
                ElevatedButton(onPressed: (){},style: ButtonStyle(shape: MaterialStateProperty.all(StadiumBorder())),
                 
                child: "Buy".text.make(),
                ).wh(100,50)

              ],
            ),
      body: SafeArea(
        bottom: false,
        child: Column(children: [
          Hero(
            tag: Key(catalog.id.toString()), 
            child: Image.network(catalog.image).h32(context),
            
          ),
          Expanded(child: VxArc(
            height: 30,
            arcType: VxArcType.CONVEY,
            edge: VxEdge.TOP,
            child: Container(color: Color.fromARGB(255, 255, 255, 255),
            width: context.screenWidth,
            child: Column(children: [
                catalog.name.text.bold.xl4.blue800.make(),
            catalog.desc.text.textStyle(context.captionStyle).xl2.make(),
            ]).py64(),
            )))
        ]),
      ),
    );
  }
} 
