import 'package:delivery/SignUp.dart';
import 'package:delivery/Welcome.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.asset('images/delivery.jpg',
                width: 300, height: 250, fit: BoxFit.fill),
            SizedBox(
              height: 10,
            ),
            Text(
              "WELCOME TO MY WORLD",
              style: TextStyle(
                  fontSize: 50,
                  color: Colors.blue.shade900,
                  fontWeight: FontWeight.bold),
            ),
            Text("Logo"),
            Text("Lao-Top Delivery App"),
            Text("Label Username"),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextField(
                style: TextStyle(fontSize: 22.0, color: Color(0xFFbdc6cf)),
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.person,
                    color: Color.fromARGB(255, 243, 245, 246),
                  ),
                  hintText: 'Enter Username',
                  hintStyle: TextStyle(
                      fontSize: 20.0, color: Color.fromARGB(255, 7, 1, 1)),
                  border: InputBorder.none,
                ),
              ),
            ),
            Text("Label Password"),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextField(
                obscureText: true,
                style: TextStyle(fontSize: 22.0, color: Color(0xFFbdc6cf)),
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.key,
                    color: Color.fromARGB(255, 243, 245, 246),
                  ),
                  hintText: 'Enter Password',
                  hintStyle: TextStyle(
                      fontSize: 20.0, color: Color.fromARGB(255, 7, 1, 1)),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextField(
                style: TextStyle(fontSize: 22.0, color: Color(0xFFbdc6cf)),
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.email_outlined,
                    color: Color.fromARGB(255, 243, 245, 246),
                  ),
                  hintText: 'Enter Password',
                  hintStyle: TextStyle(
                      fontSize: 20.0, color: Color.fromARGB(255, 7, 1, 1)),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Welcome(),
                  ),
                );
              },
              style: ButtonStyle(),
              child: Text(
                "Login",
                style: TextStyle(),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignUp(),
                  ),
                );
              },
              style: ButtonStyle(),
              child: Text(
                "Sign Up",
                style: TextStyle(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
