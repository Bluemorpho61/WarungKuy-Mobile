class WarungModel {
  late String nama_warung, alamat, foto;
  late int rating;

  WarungModel(
      {required this.nama_warung,
      required this.alamat,
      required this.rating,
      required this.foto});

  WarungModel.fromJson(Map<String, dynamic> json) {
    nama_warung = json['nama_warung'];
    alamat = json['alamat'];
    rating = double.parse(json['rating']).toInt();
    foto = json['foto'];
  }

  Map<String, dynamic> toJson() {
    return {
      'nama_warung': nama_warung,
      'alamat': alamat,
      'rating': rating,
      'foto': foto
    };
  }
}
