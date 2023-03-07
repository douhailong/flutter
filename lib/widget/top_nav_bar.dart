import 'package:flutter/material.dart';
import 'package:flutter_app/config/basic_color.dart';

class TopNavBar extends StatelessWidget {
  const TopNavBar({super.key});

  Widget _buildInput() {
    return Container(
      height: 35,
      margin: const EdgeInsets.symmetric(horizontal: 6),
      padding: const EdgeInsets.symmetric(horizontal: 6),
      decoration: BoxDecoration(
        color: BasicColors.page,
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 3, right: 6),
            child: Icon(
              Icons.search,
              color: BasicColors.un3active,
            ),
          ),
          Text(
            '搜索关键词',
            style: TextStyle(
              fontSize: 15,
              color: BasicColors.un3active,
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          height: 40,
          'images/common/logo.png',
        ),
        Expanded(
          child: _buildInput(),
        ),
        Image.asset(
          height: 30,
          'images/icons/msg.png',
        )
      ],
    );
  }
}
