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

  /// `Cancelar`
  String get commonCancel {
    return Intl.message(
      'Cancelar',
      name: 'commonCancel',
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

  /// `Justo ahora`
  String get justNow {
    return Intl.message(
      'Justo ahora',
      name: 'justNow',
      desc: '',
      args: [],
    );
  }

  /// `Hace {n} segundo(s)`
  String nSecondsAgo(Object n) {
    return Intl.message(
      'Hace $n segundo(s)',
      name: 'nSecondsAgo',
      desc: '',
      args: [n],
    );
  }

  /// `Hace {n} minuto(s)`
  String nMinutesAgo(Object n) {
    return Intl.message(
      'Hace $n minuto(s)',
      name: 'nMinutesAgo',
      desc: '',
      args: [n],
    );
  }

  /// `Hace {n} hora(s)`
  String nHoursAgo(Object n) {
    return Intl.message(
      'Hace $n hora(s)',
      name: 'nHoursAgo',
      desc: '',
      args: [n],
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

  /// `Inicio`
  String get home {
    return Intl.message(
      'Inicio',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Historias`
  String get stories {
    return Intl.message(
      'Historias',
      name: 'stories',
      desc: '',
      args: [],
    );
  }

  /// `Adopta`
  String get adopt {
    return Intl.message(
      'Adopta',
      name: 'adopt',
      desc: '',
      args: [],
    );
  }

  /// `Chatea`
  String get chat {
    return Intl.message(
      'Chatea',
      name: 'chat',
      desc: '',
      args: [],
    );
  }

  /// `Ubicación`
  String get location {
    return Intl.message(
      'Ubicación',
      name: 'location',
      desc: '',
      args: [],
    );
  }

  /// `años`
  String get years {
    return Intl.message(
      'años',
      name: 'years',
      desc: '',
      args: [],
    );
  }

  /// `Ciudad`
  String get city {
    return Intl.message(
      'Ciudad',
      name: 'city',
      desc: '',
      args: [],
    );
  }

  /// `¿Aún no tienes cuenta? Regístrate.`
  String get signUpNow {
    return Intl.message(
      '¿Aún no tienes cuenta? Regístrate.',
      name: 'signUpNow',
      desc: '',
      args: [],
    );
  }

  /// `No hay más historias para mostrar`
  String get noMoreStories {
    return Intl.message(
      'No hay más historias para mostrar',
      name: 'noMoreStories',
      desc: '',
      args: [],
    );
  }

  /// `Opciones`
  String get settings {
    return Intl.message(
      'Opciones',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Mis chats`
  String get myChats {
    return Intl.message(
      'Mis chats',
      name: 'myChats',
      desc: '',
      args: [],
    );
  }

  /// `Modo oscuro`
  String get darkMode {
    return Intl.message(
      'Modo oscuro',
      name: 'darkMode',
      desc: '',
      args: [],
    );
  }

  /// `Cerrar sesión`
  String get logout {
    return Intl.message(
      'Cerrar sesión',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `Ha ocurrido un error al iniciar la app, por favor reiniciala.`
  String get exInitializacion {
    return Intl.message(
      'Ha ocurrido un error al iniciar la app, por favor reiniciala.',
      name: 'exInitializacion',
      desc: '',
      args: [],
    );
  }

  /// `Ha ocurrido un error desconocido.`
  String get exUnknown {
    return Intl.message(
      'Ha ocurrido un error desconocido.',
      name: 'exUnknown',
      desc: '',
      args: [],
    );
  }

  /// `Las contraseñas no coinciden.`
  String get exPasswordDoNotMatch {
    return Intl.message(
      'Las contraseñas no coinciden.',
      name: 'exPasswordDoNotMatch',
      desc: '',
      args: [],
    );
  }

  /// `Crear historia`
  String get postStory {
    return Intl.message(
      'Crear historia',
      name: 'postStory',
      desc: '',
      args: [],
    );
  }

  /// `Publicar`
  String get post {
    return Intl.message(
      'Publicar',
      name: 'post',
      desc: '',
      args: [],
    );
  }

  /// `¿Qué estás pensando?`
  String get postStoryHint {
    return Intl.message(
      '¿Qué estás pensando?',
      name: 'postStoryHint',
      desc: '',
      args: [],
    );
  }

  /// `No hay ninguna historia de las últimas 24 horas`
  String get noStories {
    return Intl.message(
      'No hay ninguna historia de las últimas 24 horas',
      name: 'noStories',
      desc: '',
      args: [],
    );
  }

  /// `Añade una descripción`
  String get addDescription {
    return Intl.message(
      'Añade una descripción',
      name: 'addDescription',
      desc: '',
      args: [],
    );
  }

  /// `Edad desconocida`
  String get unknownAge {
    return Intl.message(
      'Edad desconocida',
      name: 'unknownAge',
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
