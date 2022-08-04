import 'package:delivery/MyListBuilder.dart';
import 'package:delivery/MyListView.dart';
import 'package:delivery/Product.dart';
import 'package:delivery/test.dart';
import 'package:flutter/material.dart';
import '_loading.dart';
import 'Login.dart';

void main(List<String> args) {
  runApp(Delivery());
}

class Delivery extends StatelessWidget {
  //const Delivery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lao-Top Delivery',
      home: Login(),
    );
  }
}
