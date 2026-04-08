import 'package:flutter/material.dart';

class ProgressCard extends StatelessWidget {
  const ProgressCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF8B5CF6),
        borderRadius: BorderRadius.circular(24),
      ),
      // 수정 1: Padding 앞의 const를 지웠습니다. (내부에 .withValues()가 있기 때문)
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          spacing: 15,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const DefaultTextStyle(
              style: TextStyle(color: Colors.white),
              child: Row(
                // 수정 2: 앞에 MainAxisAlignment 를 붙여주었습니다.
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '오늘의 진행률',
                    style: TextStyle(
                      // 수정 3: 앞에 FontWeight 를 붙여주었습니다.
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    '60%',
                    style: TextStyle(
                      // 수정 4: 앞에 FontWeight 를 붙여주었습니다.
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8,
              child: LinearProgressIndicator(
                value: 0.6,
                // 수정 5 (질문하신 부분!): 앞에 BorderRadius 를 붙여주었습니다.
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                backgroundColor: Colors.white.withValues(alpha: 0.2),
              ),
            ),
            //완료 택스트
            Text(
              '10개 중 6개 완료',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white.withValues(alpha: 0.6),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
