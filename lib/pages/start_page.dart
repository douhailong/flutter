import 'dart:async';
import 'package:flutter/material.dart';

import 'package:flutter_app/root_page.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  late Timer _timer;
  int _curTime = 6;

  @override
  void initState() {
    super.initState();

    _timer = Timer.periodic(
      const Duration(milliseconds: 1000),
      (timer) {
        setState(() {
          _curTime--;
          if (_curTime <= 0) {
            _jumpRootPage();
          }
        });
      },
    );
  }

  Widget jumpButton() {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.black.withOpacity(0.5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            '跳过',
            style: TextStyle(color: Colors.white),
          ),
          Text(
            '${_curTime}s',
            style: const TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }

  void _jumpRootPage() {
    _timer.cancel();

    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => const RootPage(),
        ),
        (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'images/photo1.jpeg',
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          Positioned(
            top: MediaQuery.of(context).padding.top + 16,
            right: 16,
            child: InkWell(
              onTap: _jumpRootPage,
              child: jumpButton(),
            ),
          )
        ],
      ),
    );
  }
}
