class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}

final products = [Item(
  id:"codepur001" ,
   name:  "iPhone 12 pro",
   desc: "Apple iPhone 12th generation",
   price: 999,
   color: "#33505a",
   image: "https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/MHKK3?wid=1000&hei=1000&fmt=jpeg&qlt=95&.v=1603649004000",

)];
