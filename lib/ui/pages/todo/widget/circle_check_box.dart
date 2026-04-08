import 'package:flutter/material.dart';

class CircleCheckBox extends StatelessWidget {
  final bool value;

  const CircleCheckBox({super.key, this.value = false});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 24,
      height: 24,
      child: value
          ? const Icon(Icons.check, color: Colors.white, size: 16)
          : null,
    );
  }
}
