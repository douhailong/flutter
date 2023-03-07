import 'package:flutter/material.dart';
import 'package:flutter_app/pages/home.dart';
import 'package:flutter_app/pages/music.dart';
import 'package:flutter_app/pages/profile.dart';
import 'package:flutter_app/pages/video.dart';

const Map<String, String> bottomNames = {
  'home': '首页',
  'music': '音乐',
  // 'create': '',
  'video': '视频',
  'profile': '我的'
};

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int _curIndex = 0;
  final List<BottomNavigationBarItem> bottomNavBarItem = [];

  final List<Widget> _pageList = const [
    HomePage(),
    MusicPage(),
    VideoPage(),
    ProfilePage()
  ];

  @override
  void initState() {
    super.initState();

    bottomNames.forEach((key, value) {
      bottomNavBarItem.add(
        BottomNavigationBarItem(
          icon: Image.asset(
            width: 24,
            height: 24,
            'images/icons/$key.png',
          ),
          activeIcon: Image.asset(
            width: 26,
            height: 26,
            'images/icons/${key}_active.png',
          ),
          label: value,
        ),
      );
    });
    // bottomNavBarItem.add(value)
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageList[_curIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: bottomNavBarItem,
        currentIndex: _curIndex,
        onTap: (index) {
          setState(() {
            _curIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
      ),
      floatingActionButton: FloatingActionButton(
        mini: true,
        child: Image.asset(
          'images/icons/create.png',
          width: 48,
          height: 48,
        ),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
