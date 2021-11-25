// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Inicia sesión`
  String get login {
    return Intl.message(
      'Inicia sesión',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `OK`
  String get commonOk {
    return Intl.message(
      'OK',
      name: 'commonOk',
      desc: '',
      args: [],
    );
  }

  /// `Ingrese un correo válido.`
  String get authExInvalidEmail {
    return Intl.message(
      'Ingrese un correo válido.',
      name: 'authExInvalidEmail',
      desc: '',
      args: [],
    );
  }

  /// `Este campo no puede estar vacío.`
  String get formExEmpty {
    return Intl.message(
      'Este campo no puede estar vacío.',
      name: 'formExEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Debe incluir al menos un valor.`
  String get formExAtLeastOneValue {
    return Intl.message(
      'Debe incluir al menos un valor.',
      name: 'formExAtLeastOneValue',
      desc: '',
      args: [],
    );
  }

  /// `Ingrese un número válido.`
  String get formExNotNumber {
    return Intl.message(
      'Ingrese un número válido.',
      name: 'formExNotNumber',
      desc: '',
      args: [],
    );
  }

  /// `Debe ser un número positivo.`
  String get formExNotPositiveNumber {
    return Intl.message(
      'Debe ser un número positivo.',
      name: 'formExNotPositiveNumber',
      desc: '',
      args: [],
    );
  }

  /// `Ingrese un monto válido.`
  String get formExNotAmount {
    return Intl.message(
      'Ingrese un monto válido.',
      name: 'formExNotAmount',
      desc: '',
      args: [],
    );
  }

  /// `Este campo debe ser un número o estar vacío.`
  String get formExNotNumberNotEmpty {
    return Intl.message(
      'Este campo debe ser un número o estar vacío.',
      name: 'formExNotNumberNotEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Debe seleccionar un elemento.`
  String get formExShouldSelect {
    return Intl.message(
      'Debe seleccionar un elemento.',
      name: 'formExShouldSelect',
      desc: '',
      args: [],
    );
  }

  /// `Hoy`
  String get timeLapseToday {
    return Intl.message(
      'Hoy',
      name: 'timeLapseToday',
      desc: '',
      args: [],
    );
  }

  /// `Hace {n} días`
  String timeLapseDaysAgo(Object n) {
    return Intl.message(
      'Hace $n días',
      name: 'timeLapseDaysAgo',
      desc: '',
      args: [n],
    );
  }

  /// `En {n} días`
  String timeLapseDaysLater(Object n) {
    return Intl.message(
      'En $n días',
      name: 'timeLapseDaysLater',
      desc: '',
      args: [n],
    );
  }

  /// `Mañana`
  String get timeLapseTomorrow {
    return Intl.message(
      'Mañana',
      name: 'timeLapseTomorrow',
      desc: '',
      args: [],
    );
  }

  /// `Ayer`
  String get timeLapseYesterday {
    return Intl.message(
      'Ayer',
      name: 'timeLapseYesterday',
      desc: '',
      args: [],
    );
  }

  /// `Últimos 7 días`
  String get timeRangeLast7Days {
    return Intl.message(
      'Últimos 7 días',
      name: 'timeRangeLast7Days',
      desc: '',
      args: [],
    );
  }

  /// `Últimos 15 días`
  String get timeRangeLast15Days {
    return Intl.message(
      'Últimos 15 días',
      name: 'timeRangeLast15Days',
      desc: '',
      args: [],
    );
  }

  /// `Últimos 30 días`
  String get timeRangeLast30Days {
    return Intl.message(
      'Últimos 30 días',
      name: 'timeRangeLast30Days',
      desc: '',
      args: [],
    );
  }

  /// `Contraseña`
  String get password {
    return Intl.message(
      'Contraseña',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Correo`
  String get mail {
    return Intl.message(
      'Correo',
      name: 'mail',
      desc: '',
      args: [],
    );
  }

  /// `PetBes`
  String get appName {
    return Intl.message(
      'PetBes',
      name: 'appName',
      desc: '',
      args: [],
    );
  }

  /// `Para los amantes de las mascotas`
  String get slogan {
    return Intl.message(
      'Para los amantes de las mascotas',
      name: 'slogan',
      desc: '',
      args: [],
    );
  }

  /// `Registráte`
  String get register {
    return Intl.message(
      'Registráte',
      name: 'register',
      desc: '',
      args: [],
    );
  }

  /// `¡Has parte de nuestra comunidad, y conoce gente con tus mismas pasiones!`
  String get signUpMessage {
    return Intl.message(
      '¡Has parte de nuestra comunidad, y conoce gente con tus mismas pasiones!',
      name: 'signUpMessage',
      desc: '',
      args: [],
    );
  }

  /// `Nombre`
  String get name {
    return Intl.message(
      'Nombre',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Confirmar contraseña`
  String get confirmPassword {
    return Intl.message(
      'Confirmar contraseña',
      name: 'confirmPassword',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'es'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}