import 'package:flutter/material.dart';
import 'package:warungkuy_mobile/constans.dart';
import 'package:warungkuy_mobile/constans.dart';

class Cariwarung extends StatefulWidget {
  @override
  State<Cariwarung> createState() => _CariwarungState();
}

class _CariwarungState extends State<Cariwarung> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Cari Warung'),
        elevation: 10,
        backgroundColor: Palette.bg1,
        leading: Container(
          child: Image.asset('assets/logo.png'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          hintText: 'Cari warung di sini',
          contentPadding: EdgeInsets.all(0),
          prefixIcon: Icon(Icons.search, color: Colors.black,),
        ),
      ),
    ),  
       
    );
  }
}
   
