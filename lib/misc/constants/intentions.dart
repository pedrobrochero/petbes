import 'package:flutter/material.dart';

enum Intentions {
  positive,
  negative,
  neutral,
}

extension Intention on Intentions {
  static final _map = Map.unmodifiable(<Intentions, int>{
    Intentions.negative: -1,
    Intentions.neutral: 0,
    Intentions.positive: 1,
  });

  int get toInt => _map[this];

  MaterialColor get color {
    switch (this) {
      case Intentions.negative:
        return Colors.red;
      case Intentions.neutral:
        return Colors.grey;
      case Intentions.positive:
        return Colors.green;
    }
  }

  IconData? get iconData {
    switch (this) {
      case Intentions.negative:
        return Icons.error;
      case Intentions.neutral:
        return null;
      case Intentions.positive:
        return Icons.check_circle;
    }
  }
}
