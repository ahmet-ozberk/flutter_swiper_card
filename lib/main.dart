import 'package:flutter/material.dart';
import 'package:flutter_swiper_card/home.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Material App', debugShowCheckedModeBanner: false, home: Home());
  }
}
