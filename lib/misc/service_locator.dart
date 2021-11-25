import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../generated/l10n.dart';
import '../ui/theme.dart';

final GetIt sl = GetIt.instance;

Future<void> init({bool isFake = false}) async {
  // App Theme and localized
  sl
    ..registerLazySingleton<ThemeData>(() => AppTheme.mainTheme())
    ..registerLazySingleton(() => S.current);

  // // Repositories
  // sl.registerSingleton(await SharedPreferences.getInstance());
  // sl.registerSingleton(FirebaseMessaging.instance);

  // // Services
  // sl.registerFactory(() => PreferencesManager(sl()));

  // if (isFake) {
  //   sl.registerFactory(() => FakeAuthenticationService());
  // } else {
  //   sl.registerFactory(() => GoogleSignIn());
  //   sl.registerFactory(() => HttpService());
  //   sl.registerFactory(() => AuthenticationService(
  //     googleSignIn: sl(),
  //     httpService: sl(),
  //   ));
  // }
}
