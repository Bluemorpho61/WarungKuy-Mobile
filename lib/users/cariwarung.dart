import 'package:flutter/material.dart';
import 'package:warungkuy_mobile/constans.dart';
import 'package:warungkuy_mobile/constans.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

class Cariwarung extends StatefulWidget {
  @override
  State<Cariwarung> createState() => _CariwarungState();
}

class _CariwarungState extends State<Cariwarung> {
  void updateList(String value) {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Cari Warung'),
        elevation: 10,
        backgroundColor: Palette.bg1,
        leading: Container(
          child: Image.asset('assets/logo.png'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.0,
              ),
              TextField(
                onChanged: (value) => updateList(value),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: 'Cari warung di sini',
                  contentPadding: EdgeInsets.all(0),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
            ]),
      ),
    );
  }
}
