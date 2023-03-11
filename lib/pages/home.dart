import 'package:flutter/material.dart';

import 'package:flutter_app/widget/top_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  static const List<Tab> _tabs = [
    Tab(
      text: '歌曲',
    ),
    Tab(
      text: '推荐',
    ),
    Tab(
      text: '歌手',
    ),
    Tab(
      text: '视频',
    ),
    Tab(
      text: '文章',
    ),
    Tab(
      text: '歌曲',
    ),
  ];

  // final TabController _tabController = TabController(length: _tabs.length, vsync: this)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TopNavBar(),
        // bottom: TabBar(tabs: []),
      ),
      body: GestureDetector(
        onTap: () => {Navigator},
        child: const Text('home page'),
      ),
    );
  }
}
