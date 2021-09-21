import 'package:flutter/material.dart';
import 'package:vnttsnewsapp/models/news_model.dart';
import 'package:vnttsnewsapp/widgets/line_card.dart';

class Sales extends StatefulWidget {
  const Sales({Key? key}) : super(key: key);

  @override
  _SalesState createState() => _SalesState();
}

class _SalesState extends State<Sales> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        //Giống như bên trang news, nhưng hkông có cái Header to vc chạy ngang cái màn hình
        children: [
          ListView.builder(
            itemCount: newsList.length,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            itemBuilder: (context, index) {
              var recent = newsList[index];
              return InkWell(
                child: Container(
                  width: double.infinity,
                  height: 120.0,
                  margin: const EdgeInsets.symmetric(
                      horizontal: 18.0, vertical: 8.0),
                  child: LineCard(newsmodel: recent),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
