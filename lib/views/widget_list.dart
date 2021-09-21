import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vnttsnewsapp/models/list_item.dart';

// widget all, hiện danh sách các list all
Widget listWidget(ListItem item){
  return Card(
    elevation: 2.0,
    margin: EdgeInsets.only(bottom: 20),
    child: Padding(
      padding:EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(item.imageUrl.toString(),),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          SizedBox(
            width: 5.0,
          ),
          Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    item.newsTitle.toString(),
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children:<Widget> [
                      Icon(Icons.person),
                      Text(
                        item.author.toString(),
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  )
                ],
              )

              )
        ],
      ),
    ),
  );
}