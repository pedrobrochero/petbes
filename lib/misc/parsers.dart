import 'package:intl/intl.dart';

// ignore: avoid_classes_with_only_static_members
class Parsers {
  // Date
  static final _dateFormatter = DateFormat('yyyy-MM-dd HH:mm:ss');
  static DateTime? fromJsonDate(String? date) =>
      date == null ? null : _dateFormatter.parse(date);
  static String? toJsonDate(DateTime? date) =>
      date == null ? null : _dateFormatter.format(date);
  static DateTime fromJsonDateNotNullable(String date) =>
      _dateFormatter.parse(date);
  static String toJsonDateNotNullable(DateTime date) =>
      _dateFormatter.format(date);
  static double fromJsonDoubleNotNullable(dynamic d) {
    if (d is num) return d.toDouble();
    return double.parse('$d');
  }

  static double? fromJsonDouble(dynamic d) {
    if (d == null) return null;
    if (d is num) return d.toDouble();
    return double.parse('$d');
  }
}
