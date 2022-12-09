import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:warungkuy_mobile/constans.dart';

class Cariwarung extends StatefulWidget {
  @override
  State<Cariwarung> createState() => _CariwarungState();
}

class _CariwarungState extends State<Cariwarung> {
  List<String> Gambars = ['pict1.png', 'pict2.png', 'pict3.png'];

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
      body: Column(
        children: [
          Padding(
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
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: Gambars.length,
              itemBuilder: (context, index) {
                return getCardWarung(index);
              },
            ),
          ),
        ],
      ),
    );
  }

  getCardWarung(index) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            color: Colors.white,
            padding: const EdgeInsets.only(
              right: 11,
              bottom: 9,
            ),
            child: Row(
              // mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  width: 150,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Image.asset('assets/' + Gambars[index]),
                ),
                SizedBox(width: 190),
                Container(
                  width: 21,
                  height: 18,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 180,
            top: 0,
            child: Container(
              width: 140,
              height: 91,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 121,
                    height: 18,
                    child: Text(
                      "Warung Mbok Lowo",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff062940),
                        fontSize: 12,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(height: 3.47),
                  SizedBox(
                    width: 140,
                    height: 15,
                    child: Text(
                      "Jalan Mastrip No. 52 Jember",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff062940),
                        fontSize: 10,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  SizedBox(height: 3.47),
                  SizedBox(
                    width: 17.36,
                    height: 18.13,
                    child: Text(
                      "4.0",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff062940),
                        fontSize: 11,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  SizedBox(height: 3.47),
                  Text(
                    "Menjual 5 Jenis Makanan  ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xf2062940),
                      fontSize: 9,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(height: 3.47),
                  Text(
                    "Buka 24 Jam",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xd8062940),
                      fontSize: 8,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
