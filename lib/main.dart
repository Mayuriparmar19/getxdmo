import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxdmo/dismissible_class_demo.dart';
import 'package:getxdmo/screen1.dart';
import 'package:getxdmo/screen2.dart';
import 'package:getxdmo/screen3.dart';
import 'all_screens.dart';
import 'getapiwithgetx.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
    //  fallbackLocale: Locale('en','us'),
    //  translations: LanguageChange(),
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const AllScreens(),

     getPages: [
             GetPage(name: '/', page: () => const S1()),
             GetPage(name: '/S2', page: () => const S2()),
            GetPage(name: '/S3', page: () => const S3())
     ],


    );

  }
}

