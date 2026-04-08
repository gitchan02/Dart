import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // 타이틀
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                Text(
                  '안녕하세요',
                  style: TextStyle(color: Color(0xff171717), fontSize: 14),
                ),
                Icon(Icons.waving_hand_outlined),
              ],
            ),
            const Text(
              '나의 할 일',
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
          ],
        ),
        // 빈 공간을 강제로 만들어 버리는 함수
        // Spacer(),
        // 아이콘
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.grey[300],
            shape: BoxShape.circle,
          ),
          child: const Icon(Icons.notifications_outlined, size: 36),
        ),
      ],
    );
  }
}
