import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '../Models/my_app_model.dart';

class ProductController extends GetxController {
  List<Products> productsData = [];
  @override
  void onInIt() {
    super.onInit();
    fetchProductData();
  }

  fetchProductData() async {
    await Future.delayed(const Duration(seconds: 1));
    List<Products> serverResponse = [
      Products(
          id: 1,
          name: 'Sugar',
          description: 'Sugar',
          productImage:
              'https://5.imimg.com/data5/YD/DJ/MY-70422967/skyplus-sugar-500x500.jpg',
          price: '200₹',
          fav: false, cart: false),
      Products(
          id: 2,
          name: 'Kiwi',
          description: 'Farm Fresh Organic\n Green Kiwi',
          productImage:
              'https://images.immediate.co.uk/production/volatile/sites/30/2019/06/kiwi-aedbdbf.jpg?quality=90&resize=556,505',
          price: '150₹',
          fav: false, cart: false),
      Products(
          id: 3,
          name: 'Orange',
          description: 'Fresh oranges ',
          productImage:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfjUH4HMpbPoIUrxaVuGvguHfR3sarqvyjVA&usqp=CAU',
          price: '100₹',
          fav: false, cart: false),
      Products(
          id: 4,
          name: 'Blue Berry',
          description: 'Hand Picked Organic\n Blue Berries',
          productImage:
              'https://mygroser.s3.ap-southeast-1.amazonaws.com/productImages/300X300/1641959914837-blueberry.png',
          price: '300₹',
          fav: false, cart: false),
      Products(
          id: 5,
          name: 'salt',
          description: 'pure salt',
          productImage:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJQqwKXiCZZJDkRMOy1hy8j-XZ3IVPb1leiw&usqp=CAU',
          price: '36₹',
          fav: false, cart: false),
      Products(
          id: 6,
          name: 'Bread',
          description: 'Freshly Backed\n brown Bread',
          productImage:
              'https://theobroma.in/cdn/shop/products/WheatBreadLoaf1.jpg?v=1632145981',
          price: '65₹',
          fav: false, cart: false),
      Products(
          id: 7,
          name: 'Dagon Fruit ',
          description: 'Fruit',
          productImage:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgz03jys8jzx8rE3jmqW4CvqcE_pgiK3UKkICAj7peUuOFCccr__kRKuzBCCVkp_wQRy8&usqp=CAU',
          price: '56₹',
          fav: false, cart: false)
    ];
    productsData.assignAll(serverResponse);
    if (kDebugMode) {
      print(productsData);
    }
    update();
  }
}
