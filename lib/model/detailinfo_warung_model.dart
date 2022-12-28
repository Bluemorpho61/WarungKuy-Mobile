class DetailInfoWModel {
  String? idWarung;
  String? namaWarung;
  String? jUMLAH;

  DetailInfoWModel({this.idWarung, this.namaWarung, this.jUMLAH});

  DetailInfoWModel.fromJson(Map<String, dynamic> json) {
    idWarung = json['id_warung'];
    namaWarung = json['nama_warung'];
    jUMLAH = json['JUMLAH'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id_warung'] = this.idWarung;
    data['nama_warung'] = this.namaWarung;
    data['JUMLAH'] = this.jUMLAH;
    return data;
  }
}
