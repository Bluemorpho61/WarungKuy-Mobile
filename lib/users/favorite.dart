import 'package:flutter/material.dart';
import 'package:warungkuy/constans.dart';
import 'package:warungkuy/users/detail_infowarung.dart';
import 'package:warungkuy/kelas/resepf.dart';

class Favorite extends StatefulWidget {
  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 10,
          backgroundColor: Palette.bg1,
          leading: Image.asset('assets/logo.png'),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 1.0),
              child: Image.asset('assets/button_login.png'),
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                "Daftar Warung Favorite Anda",
                style: poppinsTextStyle.copyWith(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                  itemCount: dataFavorite.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailScreen(
                                      favorites: dataFavorite[index],
                                    )));
                      },
                      child: Card(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16),
                              child: ClipRRect(
                                child: Image.asset(
                                  dataFavorite[index].image,
                                  width: 157,
                                  height: 94,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(dataFavorite[index].namef,
                                    style: poppinsTextStyle.copyWith(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12.0)),
                                Text(dataFavorite[index].alamatf,
                                    style: poppinsTextStyle.copyWith(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 10.0)),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.star,
                                        size: 17,
                                        color: Colors.amber,
                                      ),
                                      SizedBox(width: 7.45),
                                      Text(dataFavorite[index].ratef,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w300,
                                              fontSize: 12.0))
                                    ]),
                                Text(dataFavorite[index].jenisf,
                                    style: poppinsTextStyle.copyWith(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 9.0)),
                                Text(dataFavorite[index].bukaf,
                                    style: poppinsTextStyle.copyWith(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 9.0)),
                                        
                                ClipOval(
                                  child: Material(
                                    color: Colors.white,
                                    child: InkWell(
                                      splashColor: Colors.red,
                                      child: SizedBox(
                                        width: 30,
                                        height: 30,
                                        child: Icon(Icons.favorite),
                                        
                                      ),
                                      onTap: () {},
                                    ),
                                  ),
                                ),
                               
                                
                              ],
                            ),
                            
                          ],
                        ),
                      ),
                    );
                  }),
            )
          ],
        ));
  }
}
