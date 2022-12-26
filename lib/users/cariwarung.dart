import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:warungkuy_mobile/constans.dart';
import 'package:warungkuy_mobile/constans.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:warungkuy_mobile/fileKoneksi/api.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Cariwarung extends StatefulWidget {
  @override
  State<Cariwarung> createState() => _CariwarungState();
}




class _CariwarungState extends State<Cariwarung> {
  late bool searching, error;
  var data;
  late String query;
  String urlAPISearch = API.searchWarung;

  @override
  void initState() {
    searching = false;
    error = false;
    query = "";
    super.initState();
  }

  void getSuggestion() async {
    var response = await http
        .post((urlAPISearch + "?q=" + Uri.encodeComponent(query)) as Uri);
    if (response.statusCode == 200) {
      setState(() {
        data = json.decode(response.body);
      });
    } else {
      setState(() {
        error = true;
      });
    }
  }

  Future<bool> _onWillPop() async {
    return (await showDialog(
          context: context,
          builder: (context) => new AlertDialog(
            title: new Text('Are you sure?'),
            content: new Text('Do you want to exit an App'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: new Text('No'),
              ),
              TextButton(
                onPressed: () => SystemNavigator.pop(),
                child: new Text('Yes'),
              ),
            ],
          ),
        )) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Cari Warung'),
          elevation: 10,
          backgroundColor: Palette.bg1,
          leading: Container(
            child: Image.asset('assets/logo.png'),
          ),
        ),
        body: new Center(
          child: new Text("Silahkan tekan tombol search untuk mencari warung",
        )
      ),
    ),
    );
  }

  Widget showSearchSuggestions() {
    List suggestionList = List.from(data['data'].map((i) {
      return SearchSuggestions.fromJson(i);
    }));

    return Column(
      children: suggestionList.map((suggestion) {
        return InkResponse(
            onTap: () {
              //when tapped on suggestion
              print(suggestion.id); //pint student id
            },
            child: SizedBox(
                width: double.infinity, //make 100% width
                child: Card(
                  child: Container(
                    padding: EdgeInsets.all(15),
                    child: Text(
                      suggestion.nama_warung,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )));
      }).toList(),
    );
  }
}

class SearchSuggestions {
  String id_warung, nama_warung;
  SearchSuggestions({required this.id_warung, required this.nama_warung});
  factory SearchSuggestions.fromJson(Map<String, dynamic> json) {
    return SearchSuggestions(
      id_warung: json['id_warung'],
      nama_warung: json['nama_warung'],
    );
  }
}
