import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class MyListBuilder extends StatefulWidget {
  MyListBuilder({Key? key}) : super(key: key);

  @override
  State<MyListBuilder> createState() => _MyListBuilderState();
}

class _MyListBuilderState extends State<MyListBuilder> {
  List pets = [];
  bool isLoading = true;
  void fetchPets() async {
    var url = Uri.https("60f9bc967ae59c0017165f11.mockapi.io", "/pets");

    var res = await http.get(url);
    if (res.statusCode == 200) {
      //print(res.body);
      var items = convert.jsonDecode(res.body);
      setState(() {
        pets = items;
        isLoading = false;
      });
      print(items);
    } else {
      print("Can not Fetch!");
    }
  }

  @override
  Widget build(BuildContext context) {
    // final List<List<String>> pets = <List<String>>[
    //   ['Dog', 'Lily'],
    //   ['Cat', 'Garfield'],
    //   ['Fish', 'Bob'],
    //   ['Dragon', 'Lotack'],
    // ];

    fetchPets();

    if (isLoading) {
      return Material(
        child: Center(
          child: CircularProgressIndicator(
              color: Color.fromARGB(255, 40, 89, 226)),
        ),
      );
    }
    return Material(
      child: ListView.builder(
        itemCount: pets.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            color: Colors.lightBlue,
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 219, 23, 66),
                    backgroundImage: NetworkImage(pets[index]['avatar']),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        pets[index]['name'],
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(pets[index]['type']),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: IconButton(
                    onPressed: (() => null),
                    icon: Icon(
                      Icons.phone,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
