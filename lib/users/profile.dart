import 'package:flutter/material.dart';
import 'package:warungkuy_mobile/main.dart';
import 'package:warungkuy_mobile/home.dart';
import 'package:warungkuy_mobile/signup.dart';
import 'package:flutter/material.dart';
import 'package:warungkuy_mobile/main.dart';
import 'package:warungkuy_mobile/home.dart';
import 'package:warungkuy_mobile/signup.dart';

class profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 300,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 0,
                        blurRadius: 4,
                        offset: Offset(1, 2   ), // changes position of shadow
                      ),
                    ],
                    // color: Colors.blue,
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.blue, Colors.white70]),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25))),
              ),
              SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(top: 150),
                  child: Center(
                    child: Container(
                      width: 300,
                      height: 500,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            spreadRadius: 0,
                            blurRadius: 4,
                            offset: Offset(3, 7), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              radius: 50.0,
                              backgroundImage:
                                  AssetImage('assets/img/polije.png'),
                            ),
                          ),
                          Text(
                            'Moehammad Tegar',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 30.0,
                              fontFamily: 'Pacifico',
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'WarungKuy'.toString(),
                            style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'SourceSansPro',
                              color: Colors.teal.shade100,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2.5,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Edit Data'.toString(),
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'SourceSansPro',
                              color: Colors.teal.shade100,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2.5,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 35,
                            width: 260,
                            child: TextField(
                              // controller: usernameA,
                              decoration: InputDecoration(
                                labelText: "Usename",
                                prefixIcon: Icon(Icons.person),
                                fillColor: Colors.black,
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 35,
                            width: 260,
                            child: TextField(
                              // controller: usernameA,
                              decoration: InputDecoration(
                                labelText: "Phone",
                                prefixIcon: Icon(Icons.phone),
                                fillColor: Colors.black,
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 35,
                            width: 260,
                            child: TextField(
                              // controller: usernameA,
                              decoration: InputDecoration(
                                labelText: "E-mail",
                                prefixIcon: Icon(Icons.mail),
                                fillColor: Colors.black,
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 35,
                            width: 260,
                            child: TextField(
                              // controller: usernameA,
                              decoration: InputDecoration(
                                labelText: "Alamat",
                                prefixIcon: Icon(Icons.home),
                                fillColor: Colors.black,
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 200,
                            height: 45,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.blueAccent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                "Save",
                                style: TextStyle(
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
