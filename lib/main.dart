import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavbarHome(),
    );
  }
}

class NavbarHome extends StatefulWidget {
  @override
  _NavbarHomeState createState() => _NavbarHomeState();
}

class _NavbarHomeState extends State<NavbarHome> {
  int _selectedNavbar = 0;

  void _changeSelectedNavBar(int index) {
    setState(() {
      _selectedNavbar = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Beranda",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Cari",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_rounded),
            label: "Tambah Warung",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label:"Profil"
          ),
        ],
        currentIndex: _selectedNavbar,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
        onTap: _changeSelectedNavBar,
      ),
    );
  }
}