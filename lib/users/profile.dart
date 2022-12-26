import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:warungkuy_mobile/fileKoneksi/api.dart';
import 'package:warungkuy_mobile/model/profile_model.dart';

class Profile extends StatefulWidget {
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List userData = [];
  bool loading = true;
  XFile? image;
  final ImagePicker picker = ImagePicker();
  final TextEditingController _namaController = TextEditingController(),
      _emailController = TextEditingController(),
      _alamatController = TextEditingController();

  @override
  void dispose() {
    _namaController;
    _emailController;
    _alamatController;
    super.dispose();
  }

  

  Future getImage(ImageSource src) async {
    var img = await picker.pickImage(source: src);
    setState(() {
      image = img;
    });
  }

  //TODO: Bikin method buat update profile
  Future<bool> updateProfil() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    var data = <String, dynamic>{};
    data['id_user'] = pref.getString("id_user");
    data['nama'] = _namaController.text;
    data['email'] = _emailController.text;
    data['alamat'] = _alamatController.text;
    data['foto'] = image!.name;
    var response = await http.post(Uri.parse(API.updateProfile), body: data);
    if (response.statusCode == 200) {
      var body = json.decode(response.body);
      if (body['status'] == 'success') {
        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  }

  Future<http.Response> getAPI() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    var data = <String, dynamic>{};
    data['id_user'] = pref.getString("id_user");
    return http.post(Uri.parse(API.getUserProfile), body: data);
  }

  void showAlert() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            title: Text(
                'Silahkan pilih gambar/foto yang ingin anda gunakan sebagai foto profil'),
            content: Container(
              height: MediaQuery.of(context).size.height / 6,
              child: Column(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                        getImage(ImageSource.gallery);
                      },
                      child: Row(
                        children: [
                          Icon(Icons.image),
                          Text('Dari Galeri'),
                        ],
                      )),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                        getImage(ImageSource.camera);
                      },
                      child: Row(
                        children: [Icon(Icons.camera), Text('From Camera')],
                      ))
                ],
              ),
            ),
          );
        });
  }

  void DisplayData() async {
    final response = await getAPI();
    if (response.statusCode == 200) {
      var body = json.decode(response.body);
      setState(() {
        for (var Ident in body) {
          userData.add(ProfileModel.fromJson(Ident));
        }
      });

      print("Data untuk Edit Profile yg sdh ditangkap");
      print(userData.length);
    }
  }

  @override
  void initState() {
    DisplayData();
    getAPI();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 300,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 0,
                        blurRadius: 4,
                        offset: Offset(1, 2), // changes position of shadow
                      ),
                    ],
                    // color: Colors.blue,
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.blue, Colors.white70]),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25))),
              ),
              SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(top: 150),
                  child: Center(
                    child: Container(
                      width: 300,
                      height: 500,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            spreadRadius: 0,
                            blurRadius: 4,
                            offset: Offset(3, 7), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          image != null
                              ? Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRect(
                                    child: Image.file(
                                      File(image!.path),
                                      fit: BoxFit.cover,
                                      width: MediaQuery.of(context).size.width,
                                    ),
                                  ),
                                )
                              : Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRect(
                                    child: Image.network(
                                        '${API.getGambarWarung}/${userData[0].foto}'),
                                  ),
                                ),
                          Container(
                            height: 36,
                            width: 140,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.greenAccent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              onPressed: () {
                                showAlert();
                              },
                              child: Text(
                                "Tambah/Edit Foto Profil",
                                style: TextStyle(
                                    color: Color(0xffffffff), fontSize: 15),
                              ),
                            ),
                          ),
                          Text(
                            'Edit Data'.toString(),
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'SourceSansPro',
                              color: Color.fromARGB(255, 22, 205, 190),
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2.5,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 35,
                            width: 260,
                            child: TextField(
                              controller: _namaController,
                              decoration: InputDecoration(
                                labelText: "Nama User: " + userData[0].username,
                                prefixIcon: Icon(Icons.person),
                                fillColor: Colors.black,
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 35,
                            width: 260,
                            child: TextField(
                              controller:
                                  _emailController, // controller: usernameA,
                              decoration: InputDecoration(
                                labelText: "E-mail: " + userData[0].email,
                                labelStyle: TextStyle(fontSize: 14),
                                prefixIcon: Icon(Icons.mail),
                                fillColor: Colors.black,
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 35,
                            width: 260,
                            child: TextField(
                              controller: _alamatController,
                              decoration: InputDecoration(
                                labelText: "Alamat: " + userData[0].alamat,
                                prefixIcon: Icon(Icons.home),
                                fillColor: Colors.black,
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 200,
                            height: 45,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.blueAccent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              onPressed: () async {
                                try {
                                  if (await updateProfil()) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(
                                            content: Text(
                                                "Berhasil update profil")));
                                  }
                                } catch (e) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(content: Text(e.toString())));
                                }
                              },
                              child: Text(
                                "Simpan perubahan",
                                style: TextStyle(
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
