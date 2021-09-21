import 'package:flutter/material.dart';
import 'package:lipsum/lipsum.dart' as lipsum;
import 'package:vnttsnewsapp/models/list_item.dart';

class DetailNature extends StatelessWidget {
  final ListItem item;
  const DetailNature({Key? key,required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: <Widget>[
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image.network(item.imageUrl),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      children: <Widget>[
                        Text(item.newsTitle,style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500),),
                        SizedBox(height: 10,),
                        Row(
                          children: <Widget>[
                            Icon(Icons.person),
                            Text(item.author,style: TextStyle(fontSize: 12),)
                          ],
                        ),
                        SizedBox(height: 20,),
                        Text(
                            lipsum.createParagraph(numParagraphs: 3),
                          style: TextStyle(fontSize: 18),
                        )
                      ],
                    ),
                  )
                ],
              ),

            ),
            Padding(
                padding: EdgeInsets.only(top:12),
              child: IconButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                icon:Icon(Icons.arrow_back,color: Colors.white,)
              ),

            )
          ],
        ),

      ),
    );
  }
}
