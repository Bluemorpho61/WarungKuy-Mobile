class WarungModel {
  late String nama_warung, alamat, foto;
  late int id_warung, rating;

  WarungModel(
      {required this.id_warung,
      required this.nama_warung,
      required this.alamat,
      required this.rating,
      required this.foto});

  WarungModel.fromJson(Map<String, dynamic> json) {
    id_warung = int.parse(json['id_warung']).toInt();
    nama_warung = json['nama_warung'];
    alamat = json['alamat'];
    rating = double.parse(json['rating']).toInt();
    foto = json['foto'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id_warung': id_warung,
      'nama_warung': nama_warung,
      'alamat': alamat,
      'rating': rating,
      'foto': foto
    };
  }
}
