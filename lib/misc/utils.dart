import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../generated/l10n.dart';
import '../ui/_components/spacers_components.dart';

// Format ======================================================================

Color generateColor() {
  final r = Random();
  final code = 0xff000000 + r.nextInt(0xffffff);
  return Color(code);
}

Color getTextColor(Color bgColor) {
  Color textColor;
  if (bgColor.computeLuminance() < .5) {
    textColor = Colors.white;
  } else {
    textColor = Colors.black;
  }
  return textColor;
}

/// Log for cmd (Windows), bash will print colors characters
void myLog(String s, {bool isError = false}) {
  if (!kDebugMode) return;
  if (isError) {
    // ignore: avoid_print
    print('\x1B[31m$s\x1B[0m');
    return;
  }
  // ignore: avoid_print
  print('\x1B[33m$s\x1B[0m');
}

void showSnackbar(
  BuildContext context,
  String text, {
  Duration duration = const Duration(milliseconds: 4000),
  IconData? iconData,
  Color? color,
  String? actionLabel,
  VoidCallback? action,
  SnackBarBehavior? behavior,
}) {
  ScaffoldMessenger.of(context).hideCurrentSnackBar();
  SnackBar snackbar;
  final content = iconData != null
      ? Row(children: <Widget>[
          Icon(
            iconData,
            color: color,
          ),
          Spacers.horizontalM,
          Expanded(child: Text(text))
        ])
      : Text(text);
  snackbar = SnackBar(
    duration: duration,
    content: content,
    behavior: behavior,
    action: action == null
        ? null
        : SnackBarAction(
            label: actionLabel ?? S.of(context).commonOk,
            textColor: color,
            onPressed: action,
          ),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackbar);
}

DateTime getTodayAt00() {
  final now = DateTime.now();
  return DateTime(now.year, now.month, now.day);
}

void enableFullscreen() {
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
}

void disableFullScreen() {
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
}
