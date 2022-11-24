// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:warungkuy_mobile/Home.dart';
// import 'package:http/http.dart' as http;

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();

// Future<List> _login() async{
// final response = await http.post("http://10.0.2.2/SI-WEB-SMT3/API/mobile_login.php" as Uri, body: {
//   "email": email.text,
//   "password":password.text,
// });
// print(response.body);
// }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueAccent,
        body: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: ConstrainedBox(
            constraints: BoxConstraints(
                minWidth: MediaQuery.of(context).size.width,
                minHeight: MediaQuery.of(context).size.width),
            child: IntrinsicHeight(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 40,
                    width: 250,
                    color: Colors.white,
                    child: TextFormField(
                      controller: email,
                      decoration: InputDecoration(
                          hintText: "Email", border: InputBorder.none),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    width: 250,
                    height: 40,
                    color: Colors.white,
                    child: TextFormField(
                      controller: password,
                      decoration: InputDecoration(
                          hintText: "Password", border: InputBorder.none),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MaterialButton(
                      padding: EdgeInsets.all(20),
                      minWidth: 100,
                      height: 40,
                      color: Colors.blue,
                      child: Text("Masuk"),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => homepage(),
                        ));
                      })
                ],
              ),
            ),
          ),
        ));
  }
}
