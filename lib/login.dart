// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:warungkuy_mobile/signup.dart';

// import 'package:project/ui_view/signup.dart

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 200,
              height: 400,
              decoration: BoxDecoration(
                // color: Colors.red,
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage('img/warungkuy.png'), fit: BoxFit.cover),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              height: 40,
              width: 250,
              color: Colors.white,
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Email", border: InputBorder.none),
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
                decoration: InputDecoration(
                    hintText: "Password", border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            MaterialButton(
              padding: EdgeInsets.all(20),
              minWidth: 100,
              height: 40,
              color: Colors.blue,
              child: Text(
                "Masuk",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                print("tegar ganteng");
              },
            ),
            TextButton(
              child: Text(
                "Not a member? Signup now",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => SignUp()));
              },
            )
          ],
        ),
      ),
    );
  }
}
