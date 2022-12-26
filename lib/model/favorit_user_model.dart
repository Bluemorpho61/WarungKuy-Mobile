class FavoritUser {
  String? idFavorit;
  String? idUser;
  String? username;
  String? namaWarung;
  String? rating;
  String? foto;

  FavoritUser(
      {this.idFavorit,
      this.idUser,
      this.username,
      this.namaWarung,
      this.rating,
      this.foto});

  FavoritUser.fromJson(Map<String, dynamic> json) {
    idFavorit = json['id_favorit'];
    idUser = json['id_user'];
    username = json['username'];
    namaWarung = json['nama_warung'];
    rating = json['rating'];
    foto = json['foto'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id_favorit'] = this.idFavorit;
    data['id_user'] = this.idUser;
    data['username'] = this.username;
    data['nama_warung'] = this.namaWarung;
    data['rating'] = this.rating;
    data['foto'] = this.foto;
    return data;
  }
}