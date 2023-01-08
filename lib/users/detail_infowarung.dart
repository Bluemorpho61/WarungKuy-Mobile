import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';
import 'package:warungkuy_mobile/constans.dart';
import 'package:warungkuy_mobile/fileKoneksi/api.dart';
import 'package:warungkuy_mobile/model/detailinfo_warung_model.dart';
import 'package:warungkuy_mobile/model/menumakanan.dart';
import 'package:warungkuy_mobile/model/warung_model.dart';
import 'package:warungkuy_mobile/users/katapengguna.dart';

class DetailScreen extends StatefulWidget {
  final int idWarung;
  DetailScreen({super.key, required this.idWarung});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  List dataDetail = [];
  Future<http.Response> fetchData() {
    var data = <String, dynamic>{};
    data['id'] = widget.idWarung;
    return http.post(Uri.parse(API.getDetailWarung), body: data);
  }

  void getData() async {
    final response = await fetchData();
    if (response.statusCode == 200) {
      var body = json.decode(response.body);
      setState(() {
        for (var detail in body) {
          dataDetail.add(DetailInfoWModel.fromJson(detail));
        }
        print(dataDetail.length);
      });
    } else {
      print("Error");
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    fetchData();
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Stack(children: [
      // Image.asset(favorites.image),
      Padding(
        padding: EdgeInsets.symmetric(vertical: 24, horizontal: 30),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          InkWell(
            onTap: () {},
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios, color: Colors.white),
            ),
          ),
          Text(
            // favorites.namef,
            dataDetail[1].namaWarung,
            style: poppinsTextStyle.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 16.0),
          ),
          Icon(Icons.favorite, color: Colors.white),
        ]),
      ),
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(height: 240.0),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            "Contoh Teks",
            style: poppinsTextStyle.copyWith(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 6),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Icon(
                Icons.star,
                size: 15,
                color: Colors.amber,
              ),
            ),
            SizedBox(width: 0),
            Icon(
              Icons.star,
              size: 15,
              color: Colors.amber,
            ),
            SizedBox(width: 0),
            Icon(
              Icons.star,
              size: 15,
              color: Colors.amber,
            ),
            SizedBox(width: 0),
            Icon(
              Icons.star,
              size: 15,
              color: Colors.amber,
            ),
            SizedBox(width: 0),
            Icon(
              Icons.star,
              size: 15,
              color: Colors.amber,
            ),
          ],
        ),
        SizedBox(height: 11),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Icon(
                Icons.location_on_outlined,
                size: 15,
                color: Colors.black,
              ),
            ),
            SizedBox(width: 7.45),
            Text(
              "Contoh Teks",
              style: poppinsTextStyle.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                  fontSize: 12.0),
            ),
          ],
        ),
        Divider(
          color: Colors.black,
          indent: 20,
          endIndent: 20,
        ),
        Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {},
                  child: IconButton(
                    onPressed: () {
                      _launchInBrowser(Uri.parse(
                          //favorites.maps,
                          "Contoh Teks"));
                    },
                    icon: Icon(Icons.public, size: 20, color: Colors.black),
                  ),
                ),
                SizedBox(width: 30),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Katapengguna()));
                          },
                          icon: Icon(Icons.comment,
                              size: 20, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
        Divider(
          color: Colors.black,
          indent: 20,
          endIndent: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            'Menu Makanan',
            style: poppinsTextStyle.copyWith(
                color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 10),
        Expanded(
          child: ListView.builder(
            itemCount: menumakanans.length,
            itemBuilder: ((context, index) {
              return Card(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: ClipRRect(
                        child: Image.network(
                          menumakanans[index].imagef,
                          width: 81,
                          height: 68,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(menumakanans[index].namem,
                            style: poppinsTextStyle.copyWith(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 10.0)),
                        Text(menumakanans[index].deskripsim,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: poppinsTextStyle.copyWith(
                                color: Colors.black,
                                fontWeight: FontWeight.w300,
                                fontSize: 8.0)),
                        Text(menumakanans[index].harga,
                            style: poppinsTextStyle.copyWith(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 9.0)),
                      ],
                    ),
                  ],
                ),
              );
            }),
          ),
        ),
      ])
    ])));
  }
}

Future<void> _launchInBrowser(Uri url) async {
  if (!await launchUrl(
    url,
    mode: LaunchMode.externalApplication,
  )) {
    throw 'Could not launch $url';
  }
}
