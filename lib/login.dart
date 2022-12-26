import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:warungkuy_mobile/Home.dart';
import 'package:http/http.dart' as http;
import 'package:warungkuy_mobile/fileKoneksi/api.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:warungkuy_mobile/model/login_model.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}



class _LoginState extends State<Login> {
  final TextEditingController _emailController =
          TextEditingController(text: ""),
      _passwordController = TextEditingController(text: "");

  @override
  void dispose() {
    _emailController;
    _passwordController;
    super.dispose();
  }


  

//create a function to save login session
  Future<void> _saveLoginSession() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool("isLogin", true);
    //print the value of isLogin
    print(pref.getBool("isLogin"));
  }

//Save data user yang sdh login
  Future<bool> _login() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    if (_passwordController.text.isNotEmpty &&
        _emailController.text.isNotEmpty) {
      var data = <String, dynamic>{};
      data["email"] = _emailController.text;
      data["password"] = _passwordController.text;
      var response = await http.post(Uri.parse(API.loginApi), body: data);

      if (response.statusCode == 200) {
        var result = json.decode(response.body);
        
        pref.setString("username", result['username']);
        pref.setString("hak", result['hak']);
        pref.setBool("isLogin", true);
        pref.setString("id_user", result['id_user']);
        if (result["status"] == "ERR") {
          throw result["message"];
        } else {
          return true;
        }
      } else {
        throw "Email atau password salah!";
      }
    } else {
      throw "Email atau password salah!";
    }
  }

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          padding: mediaQueryData.viewInsets,
          child: ConstrainedBox(
            constraints: BoxConstraints(
                minWidth: MediaQuery.of(context).size.width,
                minHeight: MediaQuery.of(context).size.width),
            child: IntrinsicHeight(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(
                      height: 150,
                    ),
                    Container(
                      width: 150,
                      height: 150,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/img/warung.png'),
                            fit: BoxFit.fill),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: "E-Mail",
                          prefixIcon: Icon(Icons.person),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                      controller: _emailController,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: "Password",
                          prefixIcon: Icon(Icons.password),
                          fillColor: Colors.black,
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                      controller: _passwordController,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        border: Border.all(
                          width: 1,
                        ),
                        color: const Color(0xFF127CBF),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 1,
                            offset: const Offset(
                                1, 5), // changes position of shadow
                          ),
                        ],
                      ),
                      child: TextButton(
                        child: const Text(
                          "Masuk",
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () async {
                          try {
                            if (await _login()) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const homepage()));
                            }
                          } catch (e) {
                            // muncul notif ggl
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text(e.toString())));
                          }
                        },
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        color: const Color(0xFF127CBF),
                        border: Border.all(width: 1),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 1,
                              offset: Offset(1, 5))
                        ],
                      ),
                      child: TextButton(
                          onPressed: () {
                            _launchInBrowser(Uri.parse(API.openUrlDaftar));
                          },
                          child: Text(
                            "Daftar",
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
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
