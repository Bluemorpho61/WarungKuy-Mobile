import 'package:flutter/material.dart';
import 'package:warungkuy/constans.dart';
import 'package:warungkuy/model/reviewUI.dart';

class Katapengguna extends StatefulWidget {
  @override
  State<Katapengguna> createState() => _Katapengguna();
}

class _Katapengguna extends State<Katapengguna> {
  bool isMore = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
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
          SizedBox(height: 10.0),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Row(
              children: [
                InkWell(
                  onTap: () {},
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios, color: Colors.black),
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Text(
                  'Ulasan',
                  style: poppinsTextStyle.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 20.0),
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.black,
            indent: 20,
            endIndent: 20,
          ),
          SizedBox(height: 11),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Filter",
                  style: poppinsTextStyle.copyWith(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Container(
                  width: 30,
                  height: 21,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(
                      color: Color(0x7f000000),
                      width: 0.50,
                    ),
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.only(
                    left: 1,
                    right: 3,
                    top: 3,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        size: 17,
                        color: Colors.amber,
                      ),
                      SizedBox(width: 0),
                      Text(
                        "5",
                        style: poppinsTextStyle.copyWith(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 30,
                  height: 21,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(
                      color: Color(0x7f000000),
                      width: 0.50,
                    ),
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.only(
                    left: 1,
                    right: 2,
                    top: 3,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        size: 17,
                        color: Colors.amber,
                      ),
                      SizedBox(width: 0),
                      Text(
                        "4",
                        style: poppinsTextStyle.copyWith(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 30,
                  height: 21,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(
                      color: Color(0x7f000000),
                      width: 0.50,
                    ),
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.only(
                    left: 1,
                    right: 2,
                    top: 3,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        size: 17,
                        color: Colors.amber,
                      ),
                      SizedBox(width: 0),
                      Text(
                        "3",
                        style: poppinsTextStyle.copyWith(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 30,
                  height: 21,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(
                      color: Color(0x7f000000),
                      width: 0.50,
                    ),
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.only(
                    left: 1,
                    right: 3,
                    top: 3,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        size: 17,
                        color: Colors.amber,
                      ),
                      SizedBox(width: 0),
                      Text(
                        "2",
                        style: poppinsTextStyle.copyWith(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 30,
                  height: 21,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(
                      color: Color(0x7f000000),
                      width: 0.50,
                    ),
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.only(
                    left: 1,
                    right: 3,
                    top: 3,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        size: 17,
                        color: Colors.amber,
                      ),
                      SizedBox(width: 0),
                      Text(
                        "1",
                        style: poppinsTextStyle.copyWith(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 11),
          Divider(
            color: Colors.black,
            indent: 20,
            endIndent: 20,
          ),
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.only(bottom: 8.0),
              itemCount: reviewList.length,
              itemBuilder: (context, index) {
                return ReviewUI(
                  image: reviewList[index].image,
                  name: reviewList[index].name,
                  comment: reviewList[index].comment,
                  rating: reviewList[index].rating,
                  onTap: () => setState(() {
                    isMore = !isMore;
                  }),
                  isLess: isMore,
                );
              }, separatorBuilder: (context, index) {
                return Divider(
                  thickness: 2.0,
                  color: kAccentColor,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
