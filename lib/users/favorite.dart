import 'package:flutter/material.dart';
import 'package:warungkuy/constans.dart';

class Favorite extends StatefulWidget {
  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 10,
        backgroundColor: Palette.bg1,
        leading: Container(
          child: Image.asset('assets/logo.png'),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Text(
              "Daftar Warung Favorite Anda",
              style: poppinsTextStyle.copyWith(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ],
      ),
    );



    
  }
}
