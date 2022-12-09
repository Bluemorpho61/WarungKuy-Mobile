class wfavorite {
  String 
  namef, 
  alamatf, 
  ratef, 
  jenisf, 
  bukaf, 
  tutorial, 
  image,
  imagef,
  namem,
  deskripsim,
  harga;

  wfavorite(
      {required this.namef,
      required this.alamatf,
      required this.ratef,
      required this.jenisf,
      required this.bukaf,
      required this.tutorial,
      required this.image,
      required this.imagef,
      required this.namem,
      required this.deskripsim,
      required this.harga
      });
}

List<wfavorite> dataFavorite = [
  wfavorite(
      namef: 'Warung Mbok Lowo',
      alamatf: 'Jalan Mastrip No. 52 Jember',
      ratef: '4.0',
      jenisf: 'Menjual 5 Jenis Makanan',
      bukaf: 'Buka 24 Jam',
      tutorial: 'Anjas Slebew',
      image: 'assets/pict1.png',
      imagef: 'assets/nasipecelori.png',
      namem: 'Nasi Pecel Original',
      deskripsim: 'Nasi, sayuran, bumbu pecel, tempe, tahu, peyek',
      harga: '5.000'),
  wfavorite(
      namef: 'Warung Mbok Hantu',
      alamatf: 'Jalan Mastrip No. 52 Jember',
      ratef: '4.0',
      jenisf: 'Menjual 5 Jenis Makanan',
      bukaf: 'Buka 24 Jam',
      tutorial: 'Anjas Slebew',
      image: 'assets/pict2.png',
      imagef: 'assets/nasipecelayam.png',
      namem: 'Nasi Pecel Original',
      deskripsim: 'Nasi, sayuran, bumbu pecel, tempe, tahu, peyek',
      harga: '5.000'),
  wfavorite(
      namef: 'Warung Mbok Setan',
      alamatf: 'Jalan Mastrip No. 52 Jember',
      ratef: '4.0',
      jenisf: 'Menjual 5 Jenis Makanan',
      bukaf: 'Buka 24 Jam',
      tutorial: 'Anjas Slebew',
      image: 'assets/pict3.png',
      imagef: 'assets/nasipecelori.png',
      namem: 'Nasi Pecel Original',
      deskripsim: 'Nasi, sayuran, bumbu pecel, tempe, tahu, peyek',
      harga: '5.000'),
 
  
];
