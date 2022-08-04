import 'package:delivery/AppDrawer.dart';
import 'package:flutter/material.dart';

class Proflie extends StatelessWidget {
  //const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Proflie"),
      ),
      //backgroundColor: Color.fromARGB(255, 83, 133, 219),
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                height: 100,
                width: 1500,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              Container(
                child: Container(
                  height: 500,
                  width: 1500,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ],
          ),
          Center(
            //ກຳນົດໃຫ້ຢູ່ກາງຈໍ - centerຈະມີ widget ໄດ້ພຽງ 1 ອັນ
            child: Column(
              //ກຳນົດໃຫ້ທຸກໆ widget ລຽງລົງມາຕາມລວງຕັ້ງ - ສາມາດມີຫຼາຍwidget
              children: [
                SizedBox(
                  height: 10,
                ),
                Stack(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 80,
                      child: ClipOval(
                        child: Image.asset(
                          'images/R.jpg',
                          height: 150,
                          width: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 4,
                        width: 4,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                  child: TextField(
                    //obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Username',
                      icon: Icon(
                        Icons.person,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                  child: TextField(
                    //obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Britday',
                      icon: Icon(
                        Icons.date_range,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                  child: TextField(
                    //obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Phone',
                      icon: Icon(
                        Icons.phone,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                  child: TextField(
                    //obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Email',
                      icon: Icon(
                        Icons.email,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                  child: TextField(
                    //obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Credit card',
                      icon: Icon(
                        Icons.credit_card,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(),
                  child: Text(
                    "Setting",
                    style: TextStyle(),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
