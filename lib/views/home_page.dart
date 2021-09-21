import 'package:flutter/material.dart';
import 'package:vnttsnewsapp/models/list_item.dart';
import 'package:lipsum/lipsum.dart' as lipsum;
import 'package:vnttsnewsapp/views/detail_nature.dart';
import 'package:vnttsnewsapp/views/widget_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  // danh sách các thằng nature
  List<ListItem> listViews = [
    ListItem(
      imageUrl:
          "https://img.thuthuatphanmem.vn/uploads/2018/10/09/anh-dep-nhat-trong-thien-nhien_041753509.jpg",
      newsTitle: lipsum.createWord(numWords: 6),
      author: "Ngo Van Hieu",
    ),
    ListItem(
      imageUrl:
          "https://img.thuthuatphanmem.vn/uploads/2018/10/09/anh-dep-nhat-trong-thien-nhien_041753509.jpg",
      newsTitle: lipsum.createWord(numWords: 6),
      author: "Anh Tân",
    ),
    ListItem(
      imageUrl:
          "https://img.thuthuatphanmem.vn/uploads/2018/10/09/anh-dep-nhat-trong-thien-nhien_041753509.jpg",
      newsTitle: lipsum.createWord(numWords: 6),
      author: "Anh Bình",
    ),
    ListItem(
      imageUrl:
          "https://img.thuthuatphanmem.vn/uploads/2018/10/09/anh-dep-nhat-trong-thien-nhien_041753509.jpg",
      newsTitle: lipsum.createWord(numWords: 6),
      author: "Anh Quốc Anh",
    ),
    ListItem(
      imageUrl:
          "https://img.thuthuatphanmem.vn/uploads/2018/10/09/anh-dep-nhat-trong-thien-nhien_041753509.jpg",
      newsTitle: lipsum.createWord(numWords: 6),
      author: "Anh Minh",
    ),
    ListItem(
      imageUrl:
          "https://img.thuthuatphanmem.vn/uploads/2018/10/09/anh-dep-nhat-trong-thien-nhien_041753509.jpg",
      newsTitle: lipsum.createWord(numWords: 6),
      author: "Anh Minh1",
    ),
    ListItem(
      imageUrl:
          "https://img.thuthuatphanmem.vn/uploads/2018/10/09/anh-dep-nhat-trong-thien-nhien_041753509.jpg",
      newsTitle: lipsum.createWord(numWords: 6),
      author: "Anh Minh2",
    ),
    ListItem(
      imageUrl:
          "https://img.thuthuatphanmem.vn/uploads/2018/10/09/anh-dep-nhat-trong-thien-nhien_041753509.jpg",
      newsTitle: lipsum.createWord(numWords: 6),
      author: "Anh Minh3",
    ),
    ListItem(
      imageUrl:
          "https://img.thuthuatphanmem.vn/uploads/2018/10/09/anh-dep-nhat-trong-thien-nhien_041753509.jpg",
      newsTitle: lipsum.createWord(numWords: 6),
      author: "Anh Minh4",
    )
  ];

  /// list The universe
  List<ListItem> listUniverse = [
    ListItem(
      imageUrl:
      "https://kenhthoitiet.vn/wp-content/uploads/2018/10/galaxy-space.jpg",
      newsTitle: lipsum.createWord(numWords: 6),
      author: "Ngo Van Hieu111",
    ),
    ListItem(
      imageUrl:
      "https://kenhthoitiet.vn/wp-content/uploads/2018/10/galaxy-space.jpg",
      newsTitle: lipsum.createWord(numWords: 6),
      author: "Anh Tân",
    ),
    ListItem(
      imageUrl:
      "https://kenhthoitiet.vn/wp-content/uploads/2018/10/galaxy-space.jpg",
      newsTitle: lipsum.createWord(numWords: 6),
      author: "Anh Bình",
    ),
    ListItem(
      imageUrl:
      "https://kenhthoitiet.vn/wp-content/uploads/2018/10/galaxy-space.jpg",
      newsTitle: lipsum.createWord(numWords: 6),
      author: "Anh Quốc Anh",
    ),
    ListItem(
      imageUrl:
      "https://kenhthoitiet.vn/wp-content/uploads/2018/10/galaxy-space.jpg",
      newsTitle: lipsum.createWord(numWords: 6),
      author: "Anh Minh",
    ),
    ListItem(
      imageUrl:
      "https://kenhthoitiet.vn/wp-content/uploads/2018/10/galaxy-space.jpg",
      newsTitle: lipsum.createWord(numWords: 6),
      author: "Anh Minh1",
    ),
    ListItem(
      imageUrl:
      "https://kenhthoitiet.vn/wp-content/uploads/2018/10/galaxy-space.jpg",
      newsTitle: lipsum.createWord(numWords: 6),
      author: "Anh Minh2",
    ),
    ListItem(
      imageUrl:
      "https://kenhthoitiet.vn/wp-content/uploads/2018/10/galaxy-space.jpg",
      newsTitle: lipsum.createWord(numWords: 6),
      author: "Anh Minh3",
    ),
    ListItem(
      imageUrl:
      "https://kenhthoitiet.vn/wp-content/uploads/2018/10/galaxy-space.jpg",
      newsTitle: lipsum.createWord(numWords: 6),
      author: "Anh Minh4",
    )
  ];

  List<Tab> _tabList = [
    Tab(
      child: Text(
        'Nature',
        style: TextStyle(fontSize: 17),
      ),
    ),
    Tab(
      child: Text(
        'The universe',
        style: TextStyle(fontSize: 17),
      ),
    ),
    Tab(
      child: Text(
        'Science',
        style: TextStyle(fontSize: 17),
      ),
    ),
    Tab(
      child: Text(
        'Technology',
        style: TextStyle(fontSize: 17),
      ),
    ),
  ];

  late TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: _tabList.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 110,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        backgroundColor: Color(0xFFFAFAFA),
        centerTitle: true,
        title: Text(
          'News App',
          style: TextStyle(color: Colors.black),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(30),
          child: TabBar(
            indicatorColor: Colors.black,
            isScrollable: true,
            labelColor: Colors.black,
            controller: _tabController,
            tabs: _tabList,
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          // nơi chứa  tab nature
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              child: ListView.builder(
                  itemCount: listViews.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>DetailNature(item: listViews[index]
                        )));
                      },
                      child: listWidget(listViews[index]),
                    );
                  }),
            ),
          ),
          // nơi chứa  tab The universe
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              child: ListView.builder(
                  itemCount: listUniverse.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>DetailNature(item: listUniverse[index]
                        )));
                      },
                      child: listWidget(listUniverse[index]),
                    );
                  }),
            ),
          ),
          // nơi chứa  tab Science
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(),
          ),
          // nơi chứa  tab Technology
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(),
          )
        ],
      ),
    );
  }
}
