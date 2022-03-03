import 'package:flutter/material.dart';
import 'package:myflutter_app/pages/home_detail_page.dart';
import 'package:myflutter_app/pages/home_page.dart';

import 'package:myflutter_app/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

import 'catalog_image.dart';
class CatalogList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: catalogModel.items.length,
      itemBuilder: (context, index) {
        final catalog = catalogModel.items[index];
        return InkWell(
          onTap: () =>Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeDetailPage(catalog: catalog))) ,
          child: CatalogItem(catalog: catalog));
      },
    );
  }
}
class CatalogItem extends StatelessWidget {
  final Item catalog;
  const CatalogItem({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        Hero(tag: Key(catalog.id.toString()),
        child: CatalogImage(image: catalog.image)),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            catalog.name.text.bold.lg.blue800.make(),
            catalog.desc.text.textStyle(context.captionStyle).make(),
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              children: [
                "\$${catalog.price}".text.bold.xl.blue800.make(),
                ElevatedButton(onPressed: (){},style: ButtonStyle(shape: MaterialStateProperty.all(StadiumBorder())),
                 
                child: "Buy".text.make(),
                )

              ],
            )
          ],
        ))
      ],
    )).orange200.roundedSM.square(125).make().py16();
  }
}