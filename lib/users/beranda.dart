import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:warungkuy_mobile/constans.dart';

class Beranda extends StatefulWidget {
  @override
  State<Beranda> createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        elevation: 10,
        backgroundColor: Palette.bg1,
        leading: Container(
          child: Image.asset('assets/logo.png'),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 13.0),
          TextField(
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.search, color: Colors.black),
              hintText: 'Cari warung di sini',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          SizedBox(height: 31.0),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Text(
              "Hai, User",
              style: poppinsTextStyle.copyWith(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(height: 1.0),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Text(
              "Mau cari makan?",
              style: poppinsTextStyle.copyWith(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(height: 17.0),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Text(
              "Top Rated",
              style: poppinsTextStyle.copyWith(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(height: 15.0),
          Row(
            children: [
              Container(
                width: 373.0,
                height: 149.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: berandaCard(
                            "Warung Mbok Lowo",
                            "Jalan Mastrip No. 52 Jember",
                            "4.0",
                            "assets/pict1.png")),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: berandaCard(
                            "Warung Mbok Lowo",
                            "Jalan Mastrip No. 52 Jember",
                            "4.0",
                            "assets/pict2.png")),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: berandaCard(
                            "Warung Mbok Lowo",
                            "Jalan Mastrip No. 52 Jember",
                            "4.0",
                            "assets/pict3.png")),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 15.0),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Text(
              "Kata Pengguna",
              style: poppinsTextStyle.copyWith(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(height: 16.0),
          Row(
            children: [
              Container(
                  width: 202.0,
                  height: 136.0,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: berandaKomen(
                              "Abah Roni",
                              "Jalan Mastrip No. 52 Jember",
                              "APLIKASI MANTAP JIWA COY ASLI GAK BOHONG",
                              "../assets/foto1.png")),
                      SizedBox(height: 30.0),
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: berandaKomen(
                              "Abah Roni",
                              "Jalan Mastrip No. 52 Jember",
                              "APLIKASI MANTAP JIWA COY ASLI GAK BOHONG",
                              "assets/foto2.png")),
                    ],
                  )),
            ],
          ),
        ],
      ),
    );
  }

  Widget berandaCard(
    String berandaName,
    String alamat,
    String rate,
    String imgPath,
  ) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          Card(
            elevation: 0.0,
            child: Image.asset(
              imgPath,
              fit: BoxFit.fill,
              width: 141.55,
              height: 84.0,
            ),
          ),
          Text(
            berandaName,
            style: poppinsTextStyle.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 12.0),
            textAlign: TextAlign.start,
          ),
          Text(
            alamat,
            style: poppinsTextStyle.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.w300,
                fontSize: 10.0),
            textAlign: TextAlign.start,
          ),
          Row(
            children: [
              Icon(
                Icons.star,
                color: Colors.amber,
              ),
              SizedBox(width: 5),
              Text(
                rate,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                    fontSize: 12.0),
                textAlign: TextAlign.start,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget berandaKomen(
  String namakomen,
  String alamatkomen,
  String deskripsikomen,
  String komen,
) {
  return InkWell(
      child: Column(
    children: [
      CircleAvatar(
        radius: 16.0,
        child: Image.asset(
          komen,
          fit: BoxFit.fill,
          width: 32.56,
          height: 35.0,
        ),
      ),
      SizedBox(width: 13),
      Text(
        namakomen,
        style: poppinsTextStyle.copyWith(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 10.0),
        textAlign: TextAlign.start,
      ),
      SizedBox(width: 13),
      Text(
        alamatkomen,
        style: poppinsTextStyle.copyWith(
            color: Colors.black, fontWeight: FontWeight.w300, fontSize: 10.0),
        textAlign: TextAlign.start,
      ),
      SizedBox(height: 6.20),
      Text(
        deskripsikomen,
        style: poppinsTextStyle.copyWith(
            color: Colors.black, fontWeight: FontWeight.w300, fontSize: 10.0),
        textAlign: TextAlign.start,
      ),
    ],
  ));
}
