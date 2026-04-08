import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_test/UI/pages/todo/widget/circle_check_box.dart';
import 'package:my_test/enum/process.dart';
import 'package:my_test/ui/pages/todo/widget/process_badge.dart';

class TodoList extends StatelessWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context) {
    final dummy = [
      (
        title: "운동하기",
        filter: "건강",
        time: DateTime.now(),
        process: Process.done,
      ),
      (
        title: "일하기",
        filter: "업무",
        time: DateTime.now(),
        process: Process.doing,
      ),
      (
        title: "복습하기",
        filter: "공부",
        time: DateTime.now(),
        process: Process.todo,
      ),
    ];

    return ListView.separated(
      itemCount: dummy.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) => SizedBox(height: 12),
      itemBuilder: (context, index) {
        final data = dummy[index];

        return Container(
          padding: .symmetric(vertical: 18, horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.grey[200]!,
            borderRadius: .circular(20),
          ),
          child: Row(
            children: [
              /*Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  shape: .circle,
                  color: Colors.grey[399],
                  border: .all(color: Colors.grey),
                ),
              ),*/
              //할 일 택스트
              CircleCheckBox(
                value: data.process == Process.done ? true : false,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    Text(
                      data.title,
                      style: TextStyle(fontSize: 16, fontWeight: .w600),
                    ),
                    Text(
                      '${data.filter} ㆍ ${DateFormat('HH:mm').format(data.time)}',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              //const CircleCheckBox(),
              //progress_badge(진행 뱃지)
              ProcessBadge(process: data.process),
            ],
          ),
        );
      },
    );
  }
}
