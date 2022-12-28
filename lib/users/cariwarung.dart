import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:warungkuy_mobile/constans.dart';
import 'package:warungkuy_mobile/constans.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:http/http.dart' as http;
import 'package:warungkuy_mobile/fileKoneksi/api.dart';
import 'package:warungkuy_mobile/model/cari_warung_model.dart';
import 'package:warungkuy_mobile/model/movie_model.dart';

class Cariwarung extends StatefulWidget {
  @override
  State<Cariwarung> createState() => _CariwarungState();
}

class _CariwarungState extends State<Cariwarung> {
  static List<MovieModel> main_movie_list = [
    MovieModel("InterStellar", 2011, 5 / 5),
    MovieModel("Inception", 2011, 4 / 5),
    MovieModel("Blade Runner", 1987, 5 / 5),
    MovieModel("Mulholland Drive ", 2001, 5 / 5)
  ];
  List<MovieModel> display_list = List.from(main_movie_list);
  List daftarWarung = [];
  static List<CariWarung> listWarung = [];

  Future<http.Response> fetchWarungData() {
    return http.get(Uri.parse(API.getWarungForSearch));
  }

  void DisplayData() async {
    final response = await fetchWarungData();
    if (response.statusCode == 200) {
      var body = json.decode(response.body);
      for (var datawarung in body) {
        daftarWarung.add(CariWarung.fromJson(datawarung));
        listWarung.add(CariWarung.fromJson(datawarung));
      }
    }
  }

  void initState() {
    fetchWarungData();
    DisplayData();
  }

// ini fungsi buat search tp belum selesai
  void updateList(String value) {
    setState(() {
      daftarWarung = daftarWarung
          .where((element) => element.namaWarung!
              .toString()
              .toLowerCase()
              .contains(value.toLowerCase()))
          .toList();
      // display_list = main_movie_list
      //     .where((element) =>
      //         element.movie_title!.toLowerCase().contains(value.toLowerCase()))
      //     .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Palette.bg1,
        leading: Image.asset('assets/logo.png'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.0,
              ),
              TextField(
                //ini fungsinya buat manggil fungsinya
                onChanged: (value) => updateList(value),
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
              // ini sebenernya fungsinya buat display daftar warungnya
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                  child: ListView.builder(
                itemCount: daftarWarung.length,
                itemBuilder: (context, index) => ListTile(
                  contentPadding: EdgeInsets.all(8.0),
                  title: Text(
                    daftarWarung[index].namaWarung!,
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    '${daftarWarung[index].alamat!}',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  trailing: Text("${daftarWarung[index].jumlah!}",
                      style: TextStyle(color: Colors.amber)),
                ),
              ))
            ]),
      ),
    );
  }
}
