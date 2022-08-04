import 'package:delivery/AppDrawer.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  //const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
      ),
      drawer: Drawer(
        child: AppDrawer(),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Hello World"),
          ],
        ),
      ),
    );
  }
}
