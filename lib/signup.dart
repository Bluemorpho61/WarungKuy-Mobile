import 'dart:convert';

import 'package:flutter/material.dart';

import 'login.dart';
import 'package:http/http.dart' as http;

class SignUp extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController(),
      _emailController = TextEditingController(),
      _passwordController = TextEditingController();

// getMethod()async{
//   String theUrl="http://127.0.0.1/SI-WEB-SMT3/API/Register.php";
//   var res =await http.get(Uri.encodeFull(theUrl), headers: {"Accept":"application/json"});
//   var responsBody =jsonDecode(res.body);
//   print(responsBody);
//   return responsBody;
// }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              width: 250,
              height: 40,
              color: Colors.white,
              child: TextFormField(
                controller:_usernameController ,
                decoration: InputDecoration(
                    hintText: "Username",
                    hintStyle: TextStyle(color: Colors.black45),
                    border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(10),
              width: 250,
              height: 40,
              color: Colors.white,
              child: TextFormField(
                controller:_emailController ,
                decoration: InputDecoration(
                    hintText: "Email",
                    hintStyle: TextStyle(color: Colors.black45),
                    border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(10),
              width: 250,
              height: 40,
              color: Colors.white,
              child: TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.black45),
                    border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 20,
            ),
            MaterialButton(
              padding: EdgeInsets.all(20),
              minWidth: 250,
              height: 40,
              child: Text(
                "Register",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              color: Colors.green,
              onPressed: () {},
            ),
            TextButton(
              child: Text("Sudah Memiliki akun? Klik Disini!",
                  style: TextStyle(color: Colors.white)),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Login()));
              },
            )
          ],
        ),
      ),
    );
  }
}
