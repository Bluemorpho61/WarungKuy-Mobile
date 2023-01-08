import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:warungkuy_mobile/model/reviewModal.dart';

class Palette {
  static Color bg1 = Color.fromRGBO(12, 82, 127, 1);
  static Color bg2 = Color.fromRGBO(33, 150, 243, 1);
  static Color star1 = Color.fromRGBO(242, 216, 114, 1);
}

const kAccentColor = Color(0xFFF1F1F1);
TextStyle poppinsTextStyle = GoogleFonts.poppins();

final reviewList = [
  ReviewModal(
    image: "assets/foto1.png",
    name: "Abah Roni",
    rating: 3.5,
    comment:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
  ),
  ReviewModal(
    image: "assets/foto2.png",
    name: "Mbah Kunti",
    rating: 1,
    comment:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
  ),
  ReviewModal(
    image: "assets/foto3.png",
    name: "Mbah Pocong",
    rating: 4.5,
    comment:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
  ),
  ReviewModal(
    image: "assets/foto4.png",
    name: "Mbah Kocheng",
    rating: 5,
    comment:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
  ),
];
