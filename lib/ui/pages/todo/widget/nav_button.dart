import 'package:flutter/material.dart';
import 'package:my_test/enum/process.dart';

class NavButton extends StatelessWidget {
  final bool selected;
  final String text;
  final IconData icon;

  const NavButton({
    super.key,
    this.selected = false,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: .circular(50),
        color: selected ? Process.done.primaryColor : Colors.white,
      ),
      child: Column(
        mainAxisAlignment: .center,
        crossAxisAlignment: .center,
        children: [
          Container(
            child: Icon(icon, color: selected ? Colors.white : Colors.grey),
          ),
          Container(
            child: Text(
              text,
              style: TextStyle(color: selected ? Colors.white : Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
