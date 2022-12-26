import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:warungkuy_mobile/constans.dart';
import 'package:warungkuy_mobile/fileKoneksi/api.dart';
import 'package:warungkuy_mobile/model/favorit_user_model.dart';
import 'package:warungkuy_mobile/users/detail_infowarung.dart';
import 'package:http/http.dart' as http;

class Favorite extends StatefulWidget {
  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  List daftarFavorit = [];
  bool loading = true;

  Future<http.Response> fetchDataAPI() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    var data = <String, dynamic>{};
    data['id_user'] = pref.getString("id_user");
    return http.post(Uri.parse(API.getFavoritDataUser), body: data);
  }

  void DisplayData() async {
    final response = await fetchDataAPI();
    if (response.statusCode == 200) {
      var body = jsonDecode(response.body);
      setState(() {
        for (var fav in body) {
          daftarFavorit.add(FavoritUser.fromJson(fav));
        }
        print("Data favorit yang telah di catch:");
        print(daftarFavorit.length);
      });
    }
  }

  @override
  void initState() {
    fetchDataAPI();
    DisplayData();
  }

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
          SizedBox(height: 20),
          Expanded(
              child: ListView.separated(
                  separatorBuilder: (context, _) => SizedBox(height: 10),
                  itemCount: daftarFavorit.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailScreen()));
                      },
                      child: Card(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16),
                              child: ClipRRect(
                                  child: loading? Icon(Icons.storefront, size: 80,):
                                  Image.network(
                                '${API.getGambarWarung}/${daftarFavorit[index].foto}',
                                fit: BoxFit.cover,
                                width: 157,
                                height: 94,
                              )),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(daftarFavorit[index].namaWarung,
                                    style: poppinsTextStyle.copyWith(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12.0)),
                                Text(
                                  "Cth Alamat",
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
                                      size: 17,
                                      color: Colors.amber,
                                    ),
                                    SizedBox(width: 7.45),
                                    Text(
                                      "Sample Rating",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w300,
                                          fontSize: 12.0),
                                    )
                                  ],
                                ),
                                Text("5/5",
                                    style: poppinsTextStyle.copyWith(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 9.0)),
                                ClipOval(
                                  child: Material(
                                    color: Colors.white,
                                    child: InkWell(
                                      splashColor: Colors.red,
                                      child: Icon(Icons.favorite),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}
