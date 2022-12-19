import 'dart:convert';

class UserLogin {
  late String username, email, password, hak, alamat, foto;
  late int id_user;

  UserLogin(
      {required this.id_user,
      required this.alamat,
      required this.username,
      required this.password,
      required this.hak,
      required this.foto});

  UserLogin.fromJson(Map<String, dynamic> json) {
    id_user = int.parse(json['id_user']);
    username = json['username'];
    email = json['email'];
    password = json['password'];
    hak = json['hak'];
    alamat = json['alamat'];
    foto = json['foto'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id_user': id_user,
      'username': username,
      'email': email,
      'password': password,
      'hak':hak,
      'alamat':alamat,
      'foto':foto
    };
  }
}
