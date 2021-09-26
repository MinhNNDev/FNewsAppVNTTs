import 'package:flutter/material.dart';
import 'package:vnttsnewsapp/constants.dart';
import 'package:vnttsnewsapp/views/news.dart';
import 'package:vnttsnewsapp/views/sales.dart';

class Tabs extends StatefulWidget {
  const Tabs({Key? key}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      //Khởi tạo tab controller, có thể tùy biến thay đổi
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80.0),
          child: Column(
            children: [
              const SizedBox(height: 50.0),
              Align(
                alignment: Alignment.topLeft,
                child: TabBar(
                  labelColor: Colors.black,
                  unselectedLabelColor: grey1,
                  unselectedLabelStyle: nonActiveTabStyle,
                  indicatorSize: TabBarIndicatorSize.label,
                  isScrollable: true,
                  indicatorColor: Colors.white,
                  labelStyle: activeTabStyle.copyWith(fontSize: 25.0),
                  tabs: const [
                    Tab(text: "Tin tức"),
                    Tab(text: "Khuyến mại"),
                    Tab(text: "Tổng hợp"),
                  ],
                ),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [News(), Sales(), Sales()], //các tab hoạt động tương ứng với controller
        ),
      ),
    );
  }
}
