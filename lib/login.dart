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
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: ConstrainedBox(
            constraints: BoxConstraints(
                minWidth: MediaQuery.of(context).size.width,
                minHeight: MediaQuery.of(context).size.width),
            child: IntrinsicHeight(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 150,
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/img/warung.png'),
                          fit: BoxFit.fill),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 150,
                  ),
                  Container(
                    height: 35,
                    width: 260,
                    child: TextField(
                      // controller: usernameA,
                      decoration: InputDecoration(
                        labelText: "Username",
                        prefixIcon: Icon(Icons.person),
                        fillColor: Colors.black,
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 35,
                    width: 260,
                    child: TextField(
                      obscureText: true,
                      // controller: usernameA,
                      decoration: InputDecoration(
                        
                        labelText: "Password",
                        prefixIcon: Icon(Icons.password),
                        fillColor: Colors.black,
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                      width: 250,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        border: Border.all(
                          width: 1,
                        ),
                        color: Color(0xFF127CBF),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 1,
                            offset: Offset(1, 5), // changes position of shadow
                          ),
                        ],
                      ),
                      child: TextButton(
                        child: Text(
                          "Daftar",
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => homepage()));
                        },
                      ))
                ],
              ),
            ),
          ),
        ));
  }
}
