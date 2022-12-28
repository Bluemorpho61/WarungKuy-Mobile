class CariWarung {
  String? idWarung;
  String? namaWarung;
  String? alamat;
  int? jumlah;
  String? foto;

  CariWarung(
      {this.idWarung, this.namaWarung, this.alamat, this.jumlah, this.foto});

  CariWarung.fromJson(Map<String, dynamic> json) {
    idWarung = json['id_warung'];
    namaWarung = json['nama_warung'];
    alamat = json['alamat'];
    if (jumlah == null) {
      jumlah = 0;
    } else {
      jumlah = double.parse(json['jumlah']).toInt();
    }
    foto = json['foto'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id_warung'] = this.idWarung;
    data['nama_warung'] = this.namaWarung;
    data['alamat'] = this.alamat;
    data['jumlah'] = this.jumlah;
    data['foto'] = this.foto;
    return data;
  }

 
}
