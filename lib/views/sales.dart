import 'package:flutter/material.dart';
import 'package:vnttsnewsapp/models/news_model.dart';
import 'package:vnttsnewsapp/views/detail.dart';
import 'package:vnttsnewsapp/widgets/header_card.dart';
import 'package:vnttsnewsapp/widgets/line_card.dart';

class Sales extends StatefulWidget {
  const Sales({Key? key}) : super(key: key);

  @override
  _SalesState createState() => _SalesState();
}

class _SalesState extends State<Sales> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: newsList.length,
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        var sales = newsList[index];

        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Details(newsmodel: sales),
              ),
            );
          },
          child: Container(
            width: double.infinity,
            height: 300.0,
            margin: EdgeInsets.symmetric(horizontal: 18.0, vertical: 12.0),
            child: HeaderCard(newsmodel: sales),
          ),
        );
      },
    );
  }
}
