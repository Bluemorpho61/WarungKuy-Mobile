import 'package:flutter/material.dart';
import 'package:warungkuy/constans.dart';
import 'package:warungkuy/kelas/menumakanan.dart';
import 'package:warungkuy/kelas/resepf.dart';

class DetailScreen extends StatelessWidget {
  final wfavorite favorites;

  const DetailScreen({Key? key, required this.favorites}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          Image.asset(favorites.image),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 24, horizontal: 30),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {},
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                    ),
                  ),
                  Text(
                    favorites.namef,
                    style: poppinsTextStyle.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16.0),
                  ),
                  Icon(Icons.favorite, color: Colors.white),
                ]),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 270.0),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  favorites.namef,
                  style: poppinsTextStyle.copyWith(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 6),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Icon(
                      Icons.star,
                      size: 15,
                      color: Colors.amber,
                    ),
                  ),
                  SizedBox(width: 0),
                  Icon(
                    Icons.star,
                    size: 15,
                    color: Colors.amber,
                  ),
                  SizedBox(width: 0),
                  Icon(
                    Icons.star,
                    size: 15,
                    color: Colors.amber,
                  ),
                  SizedBox(width: 0),
                  Icon(
                    Icons.star,
                    size: 15,
                    color: Colors.amber,
                  ),
                  SizedBox(width: 0),
                  Icon(
                    Icons.star,
                    size: 15,
                    color: Colors.amber,
                  ),
                ],
              ),
              SizedBox(height: 11),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Icon(
                      Icons.location_on_outlined,
                      size: 15,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 7.45),
                  Text(
                    favorites.alamatf,
                    style: poppinsTextStyle.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w300,
                        fontSize: 12.0),
                  ),
                ],
              ),
              Divider(
                color: Colors.black,
                indent: 20,
                endIndent: 20,
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon:
                              Icon(Icons.public, size: 20, color: Colors.black),
                        ),
                      ),
                      SizedBox(width: 30),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: Icon(Icons.comment,
                                    size: 20, color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
              Divider(
                color: Colors.black,
                indent: 20,
                endIndent: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  'Menu Makanan',
                  style: poppinsTextStyle.copyWith(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10),            
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 400.0,
                height: 85.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                Row(
                    children: [
                    Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Image.asset(
                          "assets/nasipecelori.png",
                          height: 68,
                          width: 81,
                        )),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(
                              left: 12, top: 6,
                            ),
                            child: Text('Nasi Pecel Original',
                                style: poppinsTextStyle.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0))),
                                    Padding(
                            padding: EdgeInsets.only(
                              left: 12, top: 6,
                            ),
                            child: Text('Nasi, sayuran, bumbu pecel, tempe, tahu, peyek, tongkol, sapi',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis, 
                                style: poppinsTextStyle.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0
                                    ))),
                      ],
                    )
                  ])],)),
            ],
          ),
        ],
      ),
        ]
    ),
    ),
    );
  }
}
