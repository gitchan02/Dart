import 'package:flutter/material.dart';

enum Process { todo, doing, done }

extension ProcessExtension on Process {
  Color get primaryColor => switch (this) {
    .todo => Color(0xFFF472B6),
    .doing => const Color(0xFF14B8A6),
    .done => const Color(0xFF8B5CF6),
  };

  Color get secondaryColor => switch (this) {
    .todo => Color(0x208B5CF6),
    .doing => const Color(0x2014B8A6),
    .done => const Color(0x20F472B6),
  };

  String get title => switch (this) {
    .todo => '예정',
    .doing => '진행중',
    .done => '완료',
  };
}

/*Color get secondaryColor {
    return this == .done
        ? const Color(0x208B5CF6)
        : this == .doing
        ? const Color(0x2014B8A6)
        : const Color(0x20F472B6);
  }*/

/*Color get secondaryColor {
    if (this == .todo) {
      return const Color(0x208B5CF6);
    } else if (this == .doing) {
      return const Color(0x2014B8A6);
    }

    return const Color(0x20F472B6);
  }*/
