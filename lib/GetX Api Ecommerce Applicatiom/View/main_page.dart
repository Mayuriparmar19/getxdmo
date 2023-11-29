// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           leading: IconButton(
//             onPressed: () {
//               Navigator.pop(context);
//             },
//             icon: const Icon(
//               CupertinoIcons.back,
//               color: Colors.black,
//             ),
//           ),
//           backgroundColor: Colors.transparent,
//           elevation: 0,
//           title: const Text(
//             'Shop X',
//             style: TextStyle(fontSize: 20, color: Colors.black),
//           ),
//           centerTitle: true,
//         ),
//         body: Column(
//           children: [
//             Expanded(
//               child:GridView.builder(
//                 physics: const BouncingScrollPhysics(),
//                 shrinkWrap: true,
//                   itemCount: 7,
//                   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                       crossAxisCount: 2,
//                     mainAxisSpacing: 10,crossAxisSpacing: 10),
//                   itemBuilder: (context, index) {
//                     return Container(
//                       padding:
//                           const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//                       decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(10)),
//                     );
//                   }),
//             ),
//           ],
//         ));
//   }
// }
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getxdmo/GetX%20Api%20Ecommerce%20Applicatiom/Controller/product_controller.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    productController.fetchProductData();
    productController.update();
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: CupertinoColors.systemTeal,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            CupertinoIcons.back,
            color: Colors.black,
            size: 28,
          ),
        ),
        title: const Text(
          'Shop X',
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        actions: [
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_bag_outlined,
              color: Colors.black,
            ),
            label: const Text(
              '0',
              style: TextStyle(color: Colors.black, fontSize: 12),
            ),
          ),
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_border,
              color: Colors.black,
            ),
            label: const Text(
              '0',
              style: TextStyle(color: Colors.black, fontSize: 12),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(child: GetBuilder<ProductController>(
            builder: (controller) {
              return ListView.builder(
                  itemCount: productController.productsData.length,
                  itemBuilder: (context, index) {
                    print(index);
                    return Card(
                      color: Colors.black,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 160,
                              width: 160,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey,
                                  image: DecorationImage(
                                      image: NetworkImage(productController
                                          .productsData[index].productImage),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  productController.productsData[index].name,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      productController
                                          .productsData[index].description,
                                      style: TextStyle(
                                          color: Colors.grey.shade500,
                                          fontSize: 20),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      productController
                                          .productsData[index].price,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        IconButton(
                                            onPressed: () {
                                              if (productController
                                                  .productsData[index]
                                                  .cart ==
                                                  false) {
                                                productController.productsData[index].cart == true;
                                              }
                                              if (kDebugMode) {
                                                print(
                                                    '${productController.productsData[index].name} Added into Bag');
                                                print(productController
                                                    .productsData[index].cart
                                                    .toString());
                                              }


                                              // if (productController
                                              //         .productsData[index].fav ==
                                              //     false) {
                                              //   productController.productsData[index].fav =
                                              //       true;
                                              // }
                                            },
                                            icon: Icon(
                                              productController
                                                          .productsData[index]
                                                          .cart ==
                                                      false
                                                  ? Icons.shopping_bag_outlined
                                                  : Icons.shopping_bag,
                                              color: Colors.tealAccent,
                                            )),
                                        IconButton(
                                            onPressed: () {

                                               if(productController.productsData[index].fav == false){
                                                   productController.productsData[index].fav == true;
                                               }
                                              if (kDebugMode) {
                                                print(productController
                                                    .productsData[index].fav
                                                    .toString());
                                                print(
                                                    '${productController.productsData[index].name} Added into Favorite');
                                              }
                                            },
                                            icon: Icon(
                                              productController
                                                          .productsData[index]
                                                          .fav ==
                                                      false
                                                  ? Icons.favorite_border
                                                  : Icons.favorite,
                                              color: Colors.red,
                                            ))
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  });
            },
          ))
        ],
      ),
    );
  }
}
