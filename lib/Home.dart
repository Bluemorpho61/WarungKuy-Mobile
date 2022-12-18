import 'package:flutter/material.dart';
import 'package:warungkuy_mobile/constans.dart';
import 'package:warungkuy_mobile/users/beranda.dart';
import 'package:warungkuy_mobile/users/cariwarung.dart';
import 'package:warungkuy_mobile/users/favorite.dart';
import 'package:warungkuy_mobile/users/profile.dart';



class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);
  @override
  State<homepage> createState() => _homepageState();
}



class _homepageState extends State<homepage> {

  int _bottomNavCurrentIndex = 0;
  List<Widget> _container = [
    new Beranda(),
    new Cariwarung(),
    new Favorite(),
    new Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _container[_bottomNavCurrentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Palette.bg2,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _bottomNavCurrentIndex = index;
          });
        },
        currentIndex: _bottomNavCurrentIndex,
        items: [
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.home,
              color: Palette.bg2,
            ),
            icon: new Icon(
              Icons.home,
              color: Colors.grey,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.search,
              color: Palette.bg2,
            ),
            icon: new Icon(
              Icons.search,
              color: Colors.grey,
            ),
            label: 'Cari Warung',
          ),
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.favorite,
              color: Palette.bg2,
            ),
            icon: new Icon(
              Icons.favorite_border,
              color: Colors.grey,
            ),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.person,
              color: Palette.bg2,
            ),
            icon: new Icon(
              Icons.person_outline,
              color: Colors.grey,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}



