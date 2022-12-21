class wfavorite {
  String 
  namef, 
  alamatf, 
  ratef, 
  jenisf, 
  bukaf, 
  tutorial, 
  image,
  maps;
 

  wfavorite(
      {required this.namef,
      required this.alamatf,
      required this.ratef,
      required this.jenisf,
      required this.bukaf,
      required this.tutorial,
      required this.image,
      required this.maps,
      
  
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
      maps: 'https://www.google.com/maps/place/Warung+penyetan+Mbok+Lowo/@-8.1645656,113.7246463,15z/data=!4m5!3m4!1s0x0:0x1f40b3cd78fcbfc6!8m2!3d-8.1645656!4d113.7246463',
     
  ),
  wfavorite(
      namef: 'Warung Mbok Hantu',
      alamatf: 'Jalan Mastrip No. 52 Jember',
      ratef: '4.0',
      jenisf: 'Menjual 5 Jenis Makanan',
      bukaf: 'Buka 24 Jam',
      tutorial: 'Anjas Slebew',
      image: 'assets/pict2.png',
      maps: 'https://goo.gl/maps/z34Zm2ZT2MXtJkc48',
      
     ),
  wfavorite(
      namef: 'Warung Mbok Setan',
      alamatf: 'Jalan Mastrip No. 52 Jember',
      ratef: '4.0',
      jenisf: 'Menjual 5 Jenis Makanan',
      bukaf: 'Buka 24 Jam',
      tutorial: 'Anjas Slebew',
      image: 'assets/pict3.png',
      maps: 'https://goo.gl/maps/4CBkuZzcD8mVpJ6f6',
      
    ),
 
  
];
