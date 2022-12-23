class datauser_model {
  String? idUser;
  String? username;
  String? email;
  String? password;
  String? hak;
  String? alamat;
  String? foto;

  datauser_model(
      {this.idUser,
      this.username,
      this.email,
      this.password,
      this.hak,
      this.alamat,
      this.foto});

  datauser_model.fromJson(Map<String, dynamic> json) {
    idUser = json['id_user'];
    username = json['username'];
    email = json['email'];
    password = json['password'];
    hak = json['hak'];
    alamat = json['alamat'];
    foto = json['foto'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id_user'] = this.idUser;
    data['username'] = this.username;
    data['email'] = this.email;
    data['password'] = this.password;
    data['hak'] = this.hak;
    data['alamat'] = this.alamat;
    data['foto'] = this.foto;
    return data;
  }
}