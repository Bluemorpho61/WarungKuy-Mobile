import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:warungkuy_mobile/constans.dart';
import 'package:http/http.dart' as http;
import 'package:warungkuy_mobile/fileKoneksi/api.dart';
import 'package:warungkuy_mobile/login.dart';
import 'package:warungkuy_mobile/model/login_model.dart';
import 'package:warungkuy_mobile/model/warung_model.dart';

class Beranda extends StatefulWidget {
  @override
  State<Beranda> createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  List warungs = [];
  var namaUser;

  Future<http.Response> fetchWarung() {
    return http.get(Uri.parse(API.getTopRated));
  }

  void DisplayData() async {
    final response = await fetchWarung();
    if (response.statusCode == 200) {
      var body = json.decode(response.body);
      setState(() {
        for (var warung in body) {
          warungs.add(WarungModel.fromJson(warung));
        }
        print(warungs.length);
      });
    } else {
      print("Error");
    }
  }

  void getUserLogin() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    namaUser = pref.getString("username");
  }

  @override
  void initState() {
    DisplayData();
    getUserLogin();
  }

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
            child: TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.blueGrey),
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Login())),
                child: Text("Logout")),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15.0),
            Padding(
              padding: const EdgeInsets.only(
                right: 8,
                left: 8,
              ),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search, color: Colors.black),
                  hintText: 'Cari warung di sini',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            SizedBox(height: 31.0),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Text(
                "Hai, " + namaUser.toString(),
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
                  width: MediaQuery.of((context)).size.width,
                  height: 149.0,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, _) => SizedBox(width: 10),
                    itemCount: warungs.length,
                    itemBuilder: (context, index) => berandaCard(
                        warungs[index].nama_warung,
                        warungs[index].alamat,
                        warungs[index].rating.toString(),
                        '${API.getGambarWarung}/${warungs[index].foto}'),
                  ),
                )
              ],
            ),
            SizedBox(height: 30.0),
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
            SizedBox(height: 30.0),
            Row(
              children: [
                Container(
                    width: 360.0,
                    height: 500.0,
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: [
                        Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 12.0),
                            child: berandaKomen(
                                "Abah Roni",
                                "Jalan Mastrip No. 52 Jember",
                                "APLIKASI MANTAP JIWA COY ASLI GAK BOHONG, APLIKASI MANTAP JIWA COY ASLI GAK BOHONG, APLIKASI MANTAP JIWA COY ASLI GAK BOHONG, APLIKASI MANTAP JIWA COY ASLI GAK BOHONG",
                                "assets/foto1.png")),
                        SizedBox(height: 30.0),
                        Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 12.0),
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
            child: Image.network(
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
          SizedBox(
            width: 240,
            child: Text(
              alamat,
              overflow: TextOverflow.ellipsis,
              style: poppinsTextStyle.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                  fontSize: 10.0),
            ),
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
