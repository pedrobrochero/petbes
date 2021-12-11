import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../generated/l10n.dart';

extension ColorExt on Color {
  MaterialColor get material {
    final strengths = [.05];
    final swatch = <int, Color>{};
    final r = red, g = green, b = blue;

    for (var i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    for (final strength in strengths) {
      final ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    }
    return MaterialColor(value, swatch);
  }
}

extension DateTimeExt on DateTime {
  String get shortDate => DateFormat('MMMMd').format(this);
  String get lapse {
    var diff = difference(DateTime.now());
    final days = diff.abs().inDays;
    diff = diff - Duration(days: days);
    final hours = diff.abs().inHours;
    diff = diff - Duration(hours: hours);
    final minutes = diff.abs().inMinutes;
    diff = diff - Duration(minutes: minutes);
    final seconds = diff.abs().inSeconds;
    if (days == 0) {
      if (seconds < 10) {
        return S.current.justNow;
      }
      if (seconds < 60) {
        return S.current.nSecondsAgo(seconds);
      }
      if (minutes < 60) {
        return S.current.nMinutesAgo(minutes);
      }
      return S.current.timeLapseToday;
    }
    if (days == 1) {
      if (diff.inDays < 0) {
        return S.current.timeLapseYesterday;
      } else {
        return S.current.timeLapseTomorrow;
      }
    }
    if (days < 7) {
      if (diff.inDays < 0) {
        return S.current.timeLapseDaysAgo(days);
      } else {
        return S.current.timeLapseDaysLater(days);
      }
    }
    return shortDate;
  }

  String get time => DateFormat.Hm().format(this);
}
