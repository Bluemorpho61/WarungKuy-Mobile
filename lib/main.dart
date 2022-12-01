import 'package:flutter/material.dart';
import 'package:warungkuy_mobile/Home.dart';
import 'package:warungkuy_mobile/constans.dart';
import 'package:warungkuy_mobile/login.dart';
import 'package:warungkuy_mobile/users/beranda.dart';
import 'package:warungkuy_mobile/users/cariwarung.dart';
import 'package:warungkuy_mobile/users/favorite.dart';
import 'package:warungkuy_mobile/users/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

//kjh
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
