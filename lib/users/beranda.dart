import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:warungkuy/constans.dart';

class Beranda extends StatefulWidget {
  @override
  State<Beranda> createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Palette.bg1,
        leading: Image.asset('assets/logo.png'),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 1.0),
            child: Image.asset('assets/button_login.png'),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 13.0),
          Padding(
            padding: EdgeInsets.all(8),
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
          SizedBox(height: 31.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
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
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
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
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
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
                width: 360.0,
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
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: berandaCard(
                            "Warung Mbok Lowo",
                            "Jalan Mastrip No. 52 Jember",
                            "4.0",
                            "assets/pict4.png")),
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
                  width: 360.0,
                  height: 150.0,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12.0),
                          child: berandaKomen(
                              "Abah Roni",
                              "Jalan Mastrip No. 52 Jember",
                              "Jangkauan pemasaran Mamikos luas hingga ke seluruh Indonesia. Sehingga semua orang, baik di Yogya maupun di luar daerah dapat menemukan kos saya",
                              "assets/foto1.png")),
                      SizedBox(height: 30.0),
                      Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12.0),
                          child: berandaKomen(
                              "Abah Roni",
                              "Jalan Mastrip No. 52 Jember",
                              "Jangkauan pemasaran Mamikos luas hingga ke seluruh Indonesia. Sehingga semua orang, baik di Yogya maupun di luar daerah dapat menemukan kos saya",
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            elevation: 0.0,
            child: Image.asset(
              imgPath,
              fit: BoxFit.fill,
              width: 142.55,
              height: 83.0,
            ),
          ),
          Text(
            berandaName,
            style: poppinsTextStyle.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 12.0),
          ),
          SizedBox(
            height: 1.0,
          ),
          Text(
            alamat,
            style: poppinsTextStyle.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.w300,
                fontSize: 10.0),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.star,
                color: Colors.amber,
              ),
              SizedBox(width: 7.45),
              Text(
                rate,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                    fontSize: 12.0),
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
        textAlign: TextAlign.center,
      ),
    ],
  ));
}
