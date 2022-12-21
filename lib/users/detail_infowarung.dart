import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:warungkuy/constans.dart';
import 'package:warungkuy/model/menumakanan.dart';
import 'package:warungkuy/model/resepf.dart';
import 'package:warungkuy/users/cariwarung.dart';
import 'package:warungkuy/users/katapengguna.dart';

class DetailScreen extends StatelessWidget {
  final wfavorite favorites;

  DetailScreen({Key? key, required this.favorites}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Stack(children: [
      Image.asset(favorites.image),
      Padding(
        padding: EdgeInsets.symmetric(vertical: 24, horizontal: 30),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
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
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(height: 240.0),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            favorites.namef,
            style: poppinsTextStyle.copyWith(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
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
                      _launchInBrowser(Uri.parse(
                        favorites.maps,
                      ));
                    },
                    icon: Icon(Icons.public, size: 20, color: Colors.black),
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
                color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 10),
        Expanded(
          child: ListView.builder(
            itemCount: menumakanans.length,
            itemBuilder: ((context, index) {
              return Card(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: ClipRRect(
                        child: Image.asset(
                          menumakanans[index].imagef,
                          width: 81,
                          height: 68,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(menumakanans[index].namem,
                            style: poppinsTextStyle.copyWith(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 10.0)),
                        Text(menumakanans[index].deskripsim,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: poppinsTextStyle.copyWith(
                                color: Colors.black,
                                fontWeight: FontWeight.w300,
                                fontSize: 8.0)),
                        Text(menumakanans[index].harga,
                            style: poppinsTextStyle.copyWith(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 9.0)),
                      ],
                    ),
                  ],
                ),
              );
            }),
          ),
        ),
      ])
    ])));
  }
}

Future<void> _launchInBrowser(Uri url) async {
  if (!await launchUrl(
    url,
    mode: LaunchMode.externalApplication,
  )) {
    throw 'Could not launch $url';
  }
}
