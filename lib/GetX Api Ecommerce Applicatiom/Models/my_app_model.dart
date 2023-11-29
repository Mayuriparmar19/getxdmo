class Products {
  final int id;
  final String name;
  final String description;
  final String productImage;
  final String price;
  bool fav;
  bool cart;

  Products(
      {required this.id,
      required this.name,
      required this.description,
      required this.productImage,
      required this.price,
      required this.fav,
      required this.cart
      });
}
