import 'package:flutter/material.dart';
import 'package:my_test/ui/pages/todo/widget/bottom_navigation.dart';
import 'package:my_test/ui/pages/todo/widget/filter_row.dart';
import 'package:my_test/ui/pages/todo/widget/progress_card.dart';
import 'package:my_test/ui/pages/todo/widget/title_content.dart';
import 'package:my_test/ui/pages/todo/widget/todo_list.dart';

class TodoPage extends StatelessWidget {
  const TodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: .stretch,
            spacing: 10,
            children: [
              // 타이틀 상단 영역
              Header(),
              // todo: 오늘의 진행률
              ProgressCard(),
              // todo: 주제별 항목 (전체, 업무, 개인, 건강)
              // todo: 체크박스 시스템 만들기
              FilterRow(),
              _buildTodoTitle(),
              TodoList(),
              BottomNevigation(),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

Widget _buildTodoTitle() {
  return const Text(
    '오늘 할 일',
    style: TextStyle(color: Color(0xff171717), fontSize: 16, fontWeight: .bold),
  );
}
