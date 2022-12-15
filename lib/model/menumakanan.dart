class menumakanan {
  String 
  imagef,
  namem,
  deskripsim,
  harga;

  menumakanan(
      {
      required this.imagef,
      required this.namem,
      required this.deskripsim,
      required this.harga
      });
}

List<menumakanan> menumakanans= [
  menumakanan(
      imagef: 'assets/nasipecelori.png',
      namem: 'Nasi Pecel Original',
      deskripsim: 'Nasi, sayuran, bumbu pecel, tempe, tahu, peyek',
      harga: '5.000'),

   menumakanan(
      imagef: 'assets/nasipecelayam.png',
      namem: 'Nasi Pecel + Ayam',
      deskripsim: 'Nasi, sayuran, bumbu pecel, tempe, tahu, peyek + ayam',
      harga: '10.000'),

   menumakanan(
      imagef: 'assets/nasipeceltelur.png',
      namem: 'Nasi Pecel + Telur',
      deskripsim: 'Nasi, sayuran, bumbu pecel, tempe, tahu, peyek + telur',
      harga: '7.000'),

];


