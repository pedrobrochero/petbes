import '../generated/l10n.dart';

final RegExp _emailRegExp = RegExp(
  r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$',
);

class FormValidators {
  static String? isValidEmail(String? value) {
    if (value == null) return S.current.authExInvalidEmail;
    if (!_emailRegExp.hasMatch(value)) return S.current.authExInvalidEmail;
    return null;
  }

  static String? isNotEmpty(String? value) {
    if (value?.trim().isNotEmpty ?? false) return null;
    return S.current.formExEmpty;
  }

  static String? isCsv(String? value) {
    if (value == null) return S.current.formExEmpty;

    if (value.trim().isEmpty) {
      return S.current.formExEmpty;
    }

    var allEmpty = true;
    for (final val in value.split(',')) {
      if (val.trim().isNotEmpty) {
        allEmpty = false;
        break;
      }
    }
    if (allEmpty) return S.current.formExAtLeastOneValue;

    return null;
  }

  static String? isInt(String? value) {
    if (value == null) return S.current.formExEmpty;

    if (int.tryParse(value) == null) {
      return S.current.formExNotNumber;
    }
    return null;
  }

  static String? isPositiveInt(String? value) {
    if (value == null) return S.current.formExEmpty;
    if (int.tryParse(value) == null) {
      return S.current.formExNotNumber;
    }
    if (int.parse(value) < 0) {
      return S.current.formExNotPositiveNumber;
    }
    return null;
  }

  static String? isDouble(String? value) {
    if (value == null) return S.current.formExEmpty;

    if (double.tryParse(value) == null) {
      return S.current.formExNotNumber;
    }
    return null;
  }

  static String? isDoubleOrEmpty(String? value) {
    if (value == null) return S.current.formExEmpty;

    if (value.isNotEmpty && double.tryParse(value) == null) {
      return S.current.formExNotNumberNotEmpty;
    }
    return null;
  }

  static String? someIsSelected(dynamic value) {
    if (value == null) {
      return S.current.formExShouldSelect;
    }
    return null;
  }
}
